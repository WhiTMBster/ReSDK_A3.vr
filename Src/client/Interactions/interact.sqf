// ======================================================
// Copyright (c) 2017-2024 the ReSDK_A3 project
// sdk.relicta.ru
// ======================================================

#include "..\..\host\engine.hpp"
#include "..\ClientRpc\clientRpc.hpp"
#include "..\..\host\keyboard.hpp"
#include "..\WidgetSystem\widgets.hpp"
#include <..\..\host\SpecialActions\SpecialActions.hpp>
#include <..\InputSystem\inputKeyHandlers.hpp>

// included for extended inventory update
#include <..\Inventory\helpers.hpp>

#include <interact_component_shared.hpp>

#include "interact.hpp"
#include "verbs.sqf"
#include "interact_mainhandle.sqf"
#include "interactMenu.sqf"
#include "interactCombat.sqf"

#include "aim_cursor.sqf"

#include "progress.sqf"

#include "interact_resist.sqf"

#include "interact_examine.sqf"

#include "interact_grabbing.sqf"

//#include "RayCastConcept.sqf"
#include "interact_deprecated.sqf"

#include "..\..\host\ServerInteraction\ServerInteractionShared.sqf"


#include "interactEmoteMenu.sqf"

interact_isActive = {
	params [["_conscious",true],["_stunned",false]];
	ifcheck(_conscious,!cd_isUnconscious && hud_sleep == 0,true) &&
	ifcheck(_stunned,call smd_isStunned,true)
};

interact_onLMBPress = {
	params [["_isWorld",true],["_isSelfClick",false]];
	
	if (_isSelfClick) exitWith {
		[false,INTERACT_RPC_CLICK_SELF] call interact_sendAction;
	};

	if (_isWorld) then {
		[false,INTERACT_RPC_CLICK] call interact_sendAction;
	} else {
		[true,INTERACT_RPC_CLICK] call interact_sendAction;
	};
	/*(if (_isWorld) then {(objnull call interact_getIntersectData)} else {[player,getPosATL player]}) params ["_obj","_posAtl"];

	if isNullReference(_obj) exitWith {trace("interact::onLMBPress() - Object is null reference")};
	if !(_posAtl call interact_checkPosition) exitWith {
		traceformat("interact::onMainAction() - cant interact with %1. Too much distance",_obj);
	};
	if (_obj call noe_client_isNGO) then {_obj = _obj call noe_client_getNGOSource};
	private _hash = getObjReferenceWithMob(_obj);
	rpcSendToServer("onClickTarget",[player arg _hash]);*/
};

interact_onRMBPress = {
	params [["_isWorld",true]];

	(objnull call interact_getIntersectData) params ["_obj","_posAtl"];
	if isNullReference(_obj) exitWith {trace("interact::onLMBPress() - Object is null reference")};
	if !(_posAtl call interact_checkPosition) exitWith {
		traceformat("interact::onMainAction() - cant interact with %1. Too much distance",_obj);
	};
	if (_obj call noe_client_isNGO) then {_obj = _obj call noe_client_getNGOSource};
	private _hash = getObjReferenceWithMob(_obj);
	//rpcSendToServer("onAltClickTarget",[player arg _hash]);

	private _isMob = typeof _obj == BASIC_MOB_TYPE;
	verb_internal_isAwaitWorldVerb = true;
	verb_internal_bufferedObjData = [
		[_obj,_obj worldToModel _posAtl,_isMob],
		[50,50]
	];
	setContainerPosOffset(_obj worldToModel _posAtl);

	rpcSendToServer("getObjectVerbs",[player arg _hash]);

};

verb_internal_bufferedObjData = [[objNUll,vec3(0,0,0),false],[50,50]];
verb_internal_isAwaitWorldVerb = false;


interact_onMainAction = {
	/*(objnull call interact_getIntersectData) params ["_obj","_posAtl"];

	if isNullReference(_obj) exitWith {trace("interact::onMainAction() - Object is null reference")};

	if !(_posAtl call interact_checkPosition) exitWith {
		traceformat("interact::onMainAction() - cant interact with %1. Too much distance",_obj);
	};
	if (_obj call noe_client_isNGO) then {_obj = _obj call noe_client_getNGOSource};
	private _hash = getObjReferenceWithMob(_obj);
	rpcSendToServer("onMainAction",[player arg _hash]);*/
	if (["inter_mainact",0.5] call input_spamProtect) exitWith {};
	[false,INTERACT_RPC_MAIN] call interact_sendAction;
};

interact_onExtraAction = {
	[false,INTERACT_RPC_EXTRA] call interact_sendAction;
	/*(objnull call interact_getIntersectData) params ["_obj","_posAtl"];

	if isNullReference(_obj) exitWith {trace("interact::onExtraAction() - Object is null reference")};

	if !(_posAtl call interact_checkPosition) exitWith {
		traceformat("interact::onExtraAction() - cant interact with %1. Too much distance",_obj);
	};
	if (_obj call noe_client_isNGO) then {_obj = _obj call noe_client_getNGOSource};
	private _hash = getObjReferenceWithMob(_obj);
	rpcSendToServer("onExtraAction",[player arg _hash]);*/
};

//основной интерфейс отправки действия на сервер
//параметры: _isMouseMode - если включен то вектор направления будет браться от позиции мыши
interact_sendAction = {
	params ["_isMouseMode","_actionType"];
	private _data = array_copy(cam_renderPos);
	private _sourceVecArr = cam_renderVec;
	if (_isMouseMode) then {
		//private _angle = (getCameraViewDirection player) select 2;
		#define __hardcoded_angle__ -0.2
		//if (((getCameraViewDirection player) select 2) < __hardcoded_angle__) then {
			_sourceVecArr = [getmouseposition call screenToWorldDirection_impl,cam_renderVecMouse select 1];
		//};
	};
	_data append (_sourceVecArr select 0);
	_data pushBack (_sourceVecArr select 1 select 2);
	_data pushBack _actionType;
	_data pushBack player;
	rpcSendToServer("iact",_data);
};


interact_setCombatMode = {
	params ["_newMode"];
	
	if (!([] call interact_isActive)) exitWith {};

	if (["setcombatmode",0.6] call input_spamProtect) exitWith {};

	if (_newMode == ([player] call smd_isCombatModeEnabled)) exitWith {
		warningformat("interact::setCombatMode() - Attempt set equal value - %1",_newMode);
	};

	//replicate on network info
	rpcSendToServer("setCombatMode",[player arg _newMode]);
};



//Получает цель. В отличии от cursorObject может поймать объект в этом же кадре при свапе видимости
interact_cursorObject = {
	private _ins = lineIntersectsSurfaces [
  		AGLToASL positionCameraToWorld [0,0,0],
  		AGLToASL positionCameraToWorld [0,0,1000],
  		player,
		objNull,
		true,
		1,
		INTERACT_LODS_CHECK_STANDART
 	];

	if (count _ins == 0) exitWith {objNULL};
	private _obj = _ins select 0 select 2;

	if isNotSecondPassObject(_obj) exitWith {_obj};

	_ins = lineIntersectsSurfaces [
  		AGLToASL positionCameraToWorld [0,0,0],
  		AGLToASL positionCameraToWorld [0,0,1000],
  		player,
		objNull,
		true,
		1,
		INTERACT_LODS_CHECK_GEOM
 	];
	if (count _ins == 0) exitWith {objNULL};

	_ins select 0 select 2
};

//Получает точку пересечения центра экрана в мир
interact_getCursorIntersectPos = {
	private _ins = lineIntersectsSurfaces [
  		AGLToASL positionCameraToWorld [0,0,0],
  		AGLToASL positionCameraToWorld [0,0,1000],
  		player,
		objNull,
		true,
		1,
		INTERACT_LODS_CHECK_STANDART
 	];
	if (count _ins == 0) exitWith {[0,0,0]};
	if isNotSecondPassObject(_ins select 0 select 2) exitWith {asltoatl (_ins select 0 select 0)};
	_ins = lineIntersectsSurfaces [
		AGLToASL positionCameraToWorld [0,0,0],
		AGLToASL positionCameraToWorld [0,0,1000],
		player,
		objNull,
		true,
		1,
		INTERACT_LODS_CHECK_GEOM
	];
	if (count _ins == 0) exitWith {[0,0,0]};
	asltoatl (_ins select 0 select 0)
};

//Получает информацию об объекте пересечения в виде: [object, intersect position as ATL,vectorUp lod]
interact_getIntersectData = {
	private _ignored = _this param [0,objnull];

	private _ins = lineIntersectsSurfaces [
  		AGLToASL positionCameraToWorld [0,0,0],
  		AGLToASL positionCameraToWorld [0,0,1000],
  		player,
		_ignored,
		true,
		1,
		INTERACT_LODS_CHECK_STANDART
 	];
	if (count _ins == 0) exitWith {[objnull,[0,0,0],[0,0,0]]};
	if isNotSecondPassObject(_ins select 0 select 2) exitWith {[_ins select 0 select 2,asltoatl (_ins select 0 select 0),_ins select 0 select 1]};
	_ins = lineIntersectsSurfaces [
  		AGLToASL positionCameraToWorld [0,0,0],
  		AGLToASL positionCameraToWorld [0,0,1000],
  		player,
		_ignored,
		true,
		1,
		INTERACT_LODS_CHECK_GEOM
 	];
	if (count _ins == 0) exitWith {[objnull,[0,0,0],[0,0,0]]};
	[_ins select 0 select 2,asltoatl (_ins select 0 select 0),_ins select 0 select 1]
};

// Функция аналогична interact_getIntersectData но по-умоному вычисляет позицию не из центра а из мыши (если возможно)
interact_getMouseIntersectData = {
	private _ignored = _this param [0,objnull];

	private _angle = (getCameraViewDirection player) select 2;
	#define __hardcoded_angle__ -0.2
	private _maxDist = if (_angle < __hardcoded_angle__) then {
		AGLToASL (screenToWorld getMousePosition)
	} else {
		AGLToASL ([] call screenPosToWorldPoint)
	};

	private _ins = lineIntersectsSurfaces [AGLToASL(positionCameraToWorld[0,0,0]),_maxDist,player,_ignored,true,1,INTERACT_LODS_CHECK_STANDART];
	if (count _ins == 0) exitWith {[objnull,[0,0,0],[0,0,0]]};
	if isNotSecondPassObject(_ins select 0 select 2) exitWith {[_ins select 0 select 2,asltoatl (_ins select 0 select 0),_ins select 0 select 1]};
	_ins = lineIntersectsSurfaces [
  		AGLToASL positionCameraToWorld [0,0,0],
  		_maxDist,
  		player,
		_ignored,
		true,
		1,
		INTERACT_LODS_CHECK_GEOM
 	];
	if (count _ins == 0) exitWith {[objnull,[0,0,0],[0,0,0]]};
	[_ins select 0 select 2,asltoatl (_ins select 0 select 0),_ins select 0 select 1]
};

//возвращает [object,atl pos,vectorup normal]
interact_getRayCastData = {
	params ["_startPos","_endPos",["_ig1",objnull],["_ig2",objnull]];

	private _ins = lineIntersectsSurfaces [
  		ATLToASL _startPos,
  		ATLToASL _endPos,
  		_ig1,
		_ig2,
		true,
		1,
		INTERACT_LODS_CHECK_STANDART
 	];
	if (count _ins == 0) exitWith {[objnull,[0,0,0],[0,0,0]]};
	if isNotSecondPassObject(_ins select 0 select 2) exitWith {[_ins select 0 select 2,asltoatl (_ins select 0 select 0),_ins select 0 select 1]};
	_ins = lineIntersectsSurfaces [
  		ATLToASL _startPos,
  		ATLToASL _endPos,
  		_ig1,
		_ig2,
		true,
		1,
		INTERACT_LODS_CHECK_GEOM
 	];
	if (count _ins == 0) exitWith {[objnull,[0,0,0],[0,0,0]]};
	[_ins select 0 select 2,asltoatl (_ins select 0 select 0),_ins select 0 select 1]
};

// Проверяет дистанцию до позиции - может ли взаимодействовать по дистанции
interact_checkPosition = {
	(_this distance getCenterMobPos(player)) <= INTERACT_DISTANCE
};

// Проверяет видимость позиции в экране
interact_inScreenView = {
	(_this call positionWorldToScreen) call canSeeScreenPoint;
};

//Получает направление (азимут) головы. Взято с TFAR_fnc_currentDirection
interact_getHeadDirection = {
	private ["_current_look_at_x","_current_look_at_y","_current_look_at_z","_current_hyp_horizontal","_current_rotation_horizontal"];

	_current_look_at = (screenToWorld [0.5,0.5]) vectorDiff (eyepos TFAR_currentUnit);
	_current_look_at_x = _current_look_at select 0;
	_current_look_at_y = _current_look_at select 1;
	_current_look_at_z = _current_look_at select 2;

	_current_rotation_horizontal = 0;
	_current_hyp_horizontal = sqrt(_current_look_at_x * _current_look_at_x + _current_look_at_y * _current_look_at_y);

	if (_current_hyp_horizontal > 0) then {
		if (_current_look_at_x < 0) then {
			_current_rotation_horizontal = round - acos(_current_look_at_y / _current_hyp_horizontal);
		}else{
			_current_rotation_horizontal = round acos(_current_look_at_y / _current_hyp_horizontal);
		};
	} else {
		_current_rotation_horizontal = 0;
	};
	while{_current_rotation_horizontal < 0} do {
		_current_rotation_horizontal = _current_rotation_horizontal + 360;
	};
	_current_rotation_horizontal;
};

// Проверяет пересечение с позицией исключая целевой объект. Луч всегда берётся из центра моба
// Иным образом функция является проверкой: может ли игрок дотянуться рукой до позиции
interact_canTouchPosition = {
	params ["_posAtl",["_ignored",objNull]];

	private _ins = lineIntersectsSurfaces [
  		AGLToASL getCenterMobPos(player),
		ATLToASL _posAtl,
  		player,
		_ignored,
		true,
		1,
		INTERACT_LODS_CHECK_STANDART
 	];
	if (count _ins == 0) exitWith {true};
	if isNotSecondPassObject(_ins select 0 select 2) exitWith {false};
	_ins = lineIntersectsSurfaces [
  		AGLToASL getCenterMobPos(player),
		ATLToASL _posAtl,
  		player,
		_ignored,
		true,
		1,
		INTERACT_LODS_CHECK_GEOM
 	];
	if (count _ins == 0) exitWith {true};
	false
};

//#define INTERACT_LOG_CANINTERACTWITHOBJECT
// Основной обработчик возможности взаимодействия с пердметом. Включает в себя все стандартные проверки позиции, направления и пересечения
interact_canInteractWithObject = {
	params ["_object","_pos"];

#ifdef INTERACT_LOG_CANINTERACTWITHOBJECT
	warningformat("args data %1",_this);

	warningformat("data: %1",vec3(_pos call interact_checkPosition,_pos call interact_inScreenView,vec2(_pos,_object) call interact_canTouchPosition));

	warningformat("poscheck %1",(_pos distance getCenterMobPos(player)));
	warningformat("wts %1",(_pos call positionWorldToScreen));
	__its = lineIntersectsSurfaces [
  		AGLToASL getCenterMobPos(player),
		ATLToASL _pos,
  		player,
		_object,
		true,
		1,
		"GEOM",
		"VIEW"
 	];
	warningformat("itsc %1",__its);
#endif
	//traceformat("CAN INTERACT WITH OBJECT: %1 %2 %3",_pos call interact_checkPosition arg _pos call interact_inScreenView arg [_pos arg _object] call interact_canTouchPosition)
	(_pos call interact_checkPosition) && {_pos call interact_inScreenView} && {[_pos,_object] call interact_canTouchPosition}
};

//Находит ближайшую точку на линии игрок->объект
interact_getNearPointForObject = {
	params ["_targetOrPos"];

	if equalTypes(_targetOrPos,objNUll) then {
		_targetOrPos = getPosATL _targetOrPos;
	};

	private __its = lineIntersectsSurfaces [
		AGLToASL getCenterMobPos(player),
		ATLToASL _targetOrPos,
		player,
		objNUll,
		true,
		1,
		"VIEW","FIRE"
	];

	if (count __its == 0) exitWith {_targetOrPos};

	asltoatl (__its select 0 select 0)
};

/*
================================================================================
		REGION: INTREACT MENU COMMON
================================================================================
*/

interact_isOpenMousemode = false;
interact_isMouseModeActive = true; //допускается ли активность режима мышь/мир

// Невозможность интеракции будет блокировать загрузку verb-menu, LMB action, Main and Extra actions.
// Однако открыть меню интеракций и изменить какое-либо из значений (кроме интента) можно без этой проверки
interact_canUseInteract = {
	OBSOLETE(interact::canUseinteract);
	([] call interact_isActive)
};

interact_openMouseMode = {

	private _d = getDisplay;

	//reset mousemode
	interact_isMouseModeActive = true;


	//Событие нажатия мышки по миру
	_d displayAddEventHandler ["MouseButtonUp",interact_onMouseButtonUp];

	interact_isOpenMousemode = true;

	// так как этот метод вызывается в следующем кадре после открытия инвентаря
	// мы обходим выключение флага для сингла verb::isMenuLoaded если инвентарь
	// открывается в режиме suppress inventory mode inventory::supressInventoryOpen
	if (!inventory_supressInventoryOpen) then {verb_isMenuLoaded = false;};//обязательно выключить режим згруженности меню

	//загрузка интеракт меню
	call interactMenu_load;
	call interactCombat_load;
	call interactEmote_load;

};

interact_closeMouseMode = {

	if (inventory_supressInventoryOpen) exitWith {
		if (interactMenu_isLoadedMenu) then {
			call interactMenu_unloadMenu;
			getDisplay setvariable ["isPreparedToDestroy",true];
		};
		if (interactCombat_isLoadedMenu) then {
			interactCombat_isLoadedMenu = false;
		};
		if (interactEmote_isLoadedMenu) then {
			_d = getDisplay;
			_d setvariable ["isPreparedToDestroy",true];
			_ctg = _d getVariable 'ieMenuCtg';
			interactEmote_isLoadedMenu = false;
			//saving input text
			interactEmote_inputText = ctrlText (_ctg getVariable "input");
		};
		call interact_closeMouseMode_handle;
	};

	if (interactMenu_isLoadedMenu) exitWith {
		call interactMenu_unloadMenu;
		getDisplay setvariable ["isPreparedToDestroy",true];
		invokeAfterDelay(interact_closeMouseMode,TIME_PREPARE_SLOTS - 0.01);
	};
	if (interactCombat_isLoadedMenu) exitWith {
		_d = getDisplay;
		_d setvariable ["isPreparedToDestroy",true];
		interactCombat_isLoadedMenu = false;
		_ctg = _d getVariable 'combatMenuCtg';
		// тут обязательно в пол раза быстрее

		[_ctg,_ctg getVariable "hiddenPos",TIME_PREPARE_SLOTS / 2] call widgetSetPositionOnly;
		invokeAfterDelay(interact_closeMouseMode,TIME_PREPARE_SLOTS / 2 - 0.01);

	};
	if (interactEmote_isLoadedMenu) exitWith {
		_d = getDisplay;
		_d setvariable ["isPreparedToDestroy",true];
		interactEmote_isLoadedMenu = false;
		_ctg = _d getVariable 'ieMenuCtg';

		//saving input text
		interactEmote_inputText = ctrlText (_ctg getVariable "input");

		//Ещё быстрее
		[_ctg,_ctg getVariable "hiddenPos",TIME_PREPARE_SLOTS / 4] call widgetSetPositionOnly;
		invokeAfterDelay(interact_closeMouseMode,TIME_PREPARE_SLOTS / 4 - 0.01);
	};

	call interact_closeMouseMode_handle;
};

interact_closeMouseMode_handle = {

	interact_isOpenMousemode = false;

	if (verb_isMenuLoaded) then {
		call verb_unloadMenu
	};
};

/*
================================================================================
		REGION: EVENTS
================================================================================
*/

interact_onMouseButtonUp = {
	params ["_d","_key","_xPos", "_yPos", "_shift", "_ctrl", "_alt"];

	if (interactMenu_isLoadedMenu) exitWith {}; //cant interact
	if (interactCombat_isLoadedMenu) exitWith {};
	if (interactEmote_isLoadedMenu) exitWith {};
	if (!interact_isMouseModeActive) exitWith {};
	if (!([] call interact_isActive)) exitWith {}; //cant interact if is unconscious state or mouse inside inventory zone
	if (call inventoryIsInWidgetsZone) exitWith {};
	if (isDragProcess) exitWith {};
	if (isInsideVerbMenu_inv) exitWith {};

	if (call smd_isStunned) exitWith {};

	if verb_isMenuLoaded exitWith {
		if (_key == MOUSE_RIGHT && !(call isInsideVerbMenu)) then {
			call verb_unloadMenu;
		};
	};

	if (_key == MOUSE_RIGHT && interact_isMouseModeActive) then {
		(objnull call interact_getMouseIntersectData) params ["_obj","_pos"];//call interact_cursorObject;
		if isNullReference(_obj) exitWith {};
		if !([_obj,_pos] call interact_canInteractWithObject) exitWith {};

		if (_obj call noe_client_isNGO) then {_obj = _obj call noe_client_getNGOSource};

		// set last data
		private _isMob = typeof _obj == BASIC_MOB_TYPE;

		verb_lastCheckedObjectData = [_obj,_obj worldToModel _pos,_isMob];

		private _hashData = if (_isMob) then {_obj} else {getObjReference(_obj)};
		verb_internal_isAwaitWorldVerb = false;//это инвентарный мировой верб
		verb_internal_bufferedObjData = [
			[_obj,_obj worldToModel _pos,_isMob],
			call mouseGetPosition
		];
		setContainerPosOffset(_obj worldToModel _pos);
		
		//close inventory verb menu
		if (isOpenedVerbMenu) then {
			call inventory_unloadVerbMenu;
		};
		rpcSendToServer("getObjectVerbs",[player arg _hashData]);

	};

	if (_key == MOUSE_LEFT) then {
		/*(objnull call interact_getMouseIntersectData) params ["_obj","_pos"];
		if isNullReference(_obj) exitWith {};
		if !([_obj,_pos] call interact_canInteractWithObject) exitWith {};
		if (_obj call noe_client_isNGO) then {_obj = _obj call noe_client_getNGOSource};
		rpcSendToServer("onClickTarget",[player arg getObjReferenceWithMob(_obj)]);*/
		[true,INTERACT_RPC_CLICK] call interact_sendAction;
	};

};

/*
================================================================================
		REGION: COMMON FUNCS
================================================================================
*/

interact_getReachItem = {
	FHEADER;
	/*
		Алгоритм для верхних подборов:

			Собираем все предметы в дистанции от плеера.
			Отбраковываем те что не в поле зрения глаз игрока.
			Отбраковываем те, с которыми нельзя взаимодействовать

			(3д -> 2д)

			Бросаем лучи от итемов до камеры.
			находим те, что в пределах зоны мыши
			самый ближайший возвращаем и получаем с него вербы

		Алгоритм для нижних подборов:
			кидаем луч из позиции мыши
			собираем предметы от глаз до позиции мыши (5 объектов)
			самый ближайший объект взаимодействия - получаем с него вербы
	*/

	verb_lastclickedpos = call mouseGetPosition;
	private _end = AGLToASL ([] call screenPosToWorldPoint);

	private _itsc = lineIntersectsSurfaces [eyepos player,_end,player,objNull,true,5,"VIEW","NONE"];


	private _nmap = if ((count _itsc) == 0) then {
		(player nearEntities INTERACT_MOB_COLLECT_DIST) - [player]
	} else {
		_cleared = (_itsc apply {_x select 2});
		_mobs = (player nearEntities INTERACT_MOB_COLLECT_DIST) - [player];
		_cleared append _mobs;
		_cleared
	};

	//removing cams if exists
	//errorformat("cams %1",_nmap);
	_nmap = _nmap - [cam_object,cam_fixedObject];
	//errorformat("cams UPD %1",_nmap);

	//logformat("map> %1",_nmap);
	//if ((count _itsc) == 0) exitWith {RETURN(objnull);};

	private _curObj = objnull;
	{
		_curObj = _x;

		//relocate geometry objects
		if !isNull(_curObj getVariable "ngo_src") then {
			//error("NONNULLABLE")
			_curObj = _curObj getVariable "ngo_src";
		};

		//													fix bigobjects 0.8.65
		if (_curObj getvariable ["isInteractible",true] && {[_curObj] call interact_canHandReach && _curObj call interact_canSeeObject}) exitWith {
			RETURN(_curObj);
		};
		if (typeOf _curObj == BASIC_MOB_TYPE && {/*[getCenterMobPos(_curObj),INTERACT_MOB_DISTANCE_MODIF] call interact_canHandReach &&*/ _curObj call interact_canSeeMob_handReach}) exitWith {
			RETURN(_curObj);
		};
	} foreach _nmap;

	objnull
};

//onlydebug
#ifdef DEBUG
setpostestmobinmouse = {
	private _end = AGLToASL ([] call screenPosToWorldPoint);

	private _itsc = lineIntersectsSurfaces [eyepos player,_end,player,objNull,true,5,"VIEW","NONE"];
	vasya setposatl (ASLToATL(_itsc select 0 select 0));
};
#endif

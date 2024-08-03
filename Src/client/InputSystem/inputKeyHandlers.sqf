// ======================================================
// Copyright (c) 2017-2024 the ReSDK_A3 project
// sdk.relicta.ru
// ======================================================




// [name,desc,current,default,variable]
#define kb(name,desc,defkey,varname) [name,desc,defkey,defkey,call{varname = defkey; 'varname'},defkey]
#define keybind(value,shift,ctrl,alt,isMouse) [value,shift,ctrl,alt,isMouse]

#define std_key(name) keybind([name arg false] call input_getKeyValue,false,false,false,false)
#define std_keyArgs(name,shift,ctrl,alt,isMouse) keybind([name arg false] call input_getKeyValue,shift,ctrl,alt,isMouse)

 // Список кейбиндов
cd_settingsKeyboard = [
	kb("Инвентарь","Открыть или закрыть инвентарь",std_key("TAB"),input_act_inventory),
	kb("Бросить","Выпустить предмет из активной руки",std_key("G"),input_act_dropitem),
	kb("Выложить","Быстрое выкладывание предмета в активной руке",std_key("B"),input_act_putdownitem),
	kb("Двумя руками","Схватить предмет в активной руке двумя руками\nПовторное нажатие снова возвращает одноручный режим",std_key("T"),input_act_switchTwoHands),
	kb("Сменить руку","Изменяет активную руку",std_key("Q"),input_act_changeActHand),
	kb("Включить комбат","Переключает персонажа во враждебное состояние и позволяет атаковать окружение",std_key("SPACE"),input_act_combatMode),
	kb("Встать\сопротивляться","Используется при:\n - попытках вырваться из захвата\n - вставании с кроватей и стульев\n - попытках освободиться от наручников или веревки",std_key("R"),input_act_resist),
	kb("Основное действие","Совершить основное действие",std_key("E"),input_act_mainAction),
	kb("Вспомогательное действие","Совершить дополнительное действие",std_key("F"),input_act_extraAction),
	kb("Указать","Указать на какой-то объект в мире",std_key("Y"),input_act_pointTo),
	kb("Изучить","Позволяет изучить предмет в инвентаре или осмотреть объект в мире",std_key("F1"),input_act_examine),
	kb("Крафт","Открывает меню крафта",std_key("K"),input_act_craft),
	kb("Радиосвязь","Активирует разговор по радиосвязи (при наличии радио)",std_key("CAPSLOCK"),input_act_radio),
	kb("Эмоции","Открывает меню эмоций и описания действий персонажа",std_key("F2"),input_act_emoteMenu),
	kb("История сообщений","Открывает список последних сообщений из чата",std_key("F8"),input_act_chatHistory),
	kb("Консоль","Открывает окно ввода специальных команд",std_key("F10"),input_act_commandMenu),
	kb("Сообщение администрации","Отправляет сообщение администрации.",std_key("F11"),input_act_openAhelp)
];

if !isNull(relicta_global_textChatEnabled) then {
	cd_settingsKeyboard pushBack
		kb("Сказать","Открывает окно текстового чата",std_key("H"),input_act_speak);
};

input_internal_map_act2kb = createHashMap;
{
	input_internal_map_act2kb set [tolower(_x select KEYBIND_INDEX_VARNAME),_forEachIndex];
} foreach cd_settingsKeyboard;

input_updateAllKeyBinds = {
	private _serverUpdateList = [];
	{
		if not_equals(missionNamespace getVariable (_x select KEYBIND_INDEX_VARNAME),_x select KEYBIND_INDEX_CURRENT) then {
			private _dat = [tolower(_x select KEYBIND_INDEX_VARNAME),_x select KEYBIND_INDEX_CURRENT];
			_serverUpdateList pushBack _dat;
			if equals(_x select KEYBIND_INDEX_CURRENT,_x select KEYBIND_INDEX_DEFAULT) then {
				_dat pushBack true;
			};	
		};
		missionNamespace setVariable [_x select KEYBIND_INDEX_VARNAME,+(_x select KEYBIND_INDEX_CURRENT)];
	} foreach cd_settingsKeyboard;
	
	if (count _serverUpdateList > 0) then {
		rpcSendToServer("syncKeyBindList",[_serverUpdateList arg clientOwner]);
	};
};

//Событие загрузки кастомных биндов юзера
_onLoadKeyBinds = {
	private _kbList = _this;
	private _listAllowedVarNames = cd_settingsKeyboard apply {tolower(_x select KEYBIND_INDEX_VARNAME)};
	private _remList = [];
	{
		_x params ["_varName","_state"];
		_varName = tolower _varName;
		
		private _idxKeySeg = cd_settingsKeyboard findif {_varName == (_x select KEYBIND_INDEX_VARNAME)};
		if (_idxKeySeg == -1) then {
			//Не должно выпадать
			errorformat("rpc::onLoadKeybinds() - Unexpected error at line %1",__LINE__);
			continue;
		};
		
		//Если такого бинда не существует по имени 
		// или значение является дефолтным значением
		// или значение является текущим, то нужно удалить из списка
		if (
			!array_exists(_listAllowedVarNames,_varName) || 
			{equals(cd_settingsKeyboard select _idxKeySeg select KEYBIND_INDEX_DEFAULT,_state)} ||
			{equals(cd_settingsKeyboard select _idxKeySeg select KEYBIND_INDEX_CURRENT,_state)}
		) then {
			_remList pushBack _varName;
		} else {
			
			missionNamespace setVariable [_varName,_state];
			cd_settingsKeyboard select _idxKeySeg set [KEYBIND_INDEX_CURRENT,_state];
		};
		
	} foreach _kbList;
	
	//Ненайденные настройки выписываем с объекта сервер-клиента
	if (count _remList > 0) then {
		warningformat("rpc::onLoadKeybinds() - outdated keys found: %1",count _remList);
		rpcSendToServer("remKeyBindList",[_remList arg clientOwner]);
	};
	
}; rpcAdd("onLoadKeybinds",_onLoadKeyBinds);


input_checkKeyState = {
	params ["_keyData","_state",["_doRemKeyState",false]];

	if (_doRemKeyState) then {
		_state = _state select [0,4];
	};

	equals(_keyData,_state)
};

// Проверка ключа с защитой от спама
/*

	if (["somebutton"] call input_spamProtect) exitWith {};

*/
input_map_spamProtect = createHashMap;

input_spamProtect = {
	params ["_strname",["_timeout",0.3]];
	_strname = tolower _strname;
	if (_strname in input_map_spamProtect) then {
		if (tickTime >= (input_map_spamProtect get _strname)) then {
			input_map_spamProtect set [_strname,tickTime + _timeout];
			false
		} else {
			true
		};
	} else {
		input_map_spamProtect set [_strname,tickTime + _timeout];
		false
	};
};

#include <..\WidgetSystem\blockedButtons.hpp>

//Проверяет пользовательский инпут. true означает что клавиша заблокирована
input_movementCheck = {
	params ["_key"];

	_isMov = call input_internal_isMovingButton;
	_isCS = call input_internal_isChangeStance;

	if ((gf_isLockedInputByWall || gf_isLockedInputByActor) && (_isMov || _isCS)) exitWith {
		true
	};

	if ((_isMov || _isCS) && {call cd_isCustomAnimEnabled}) exitWith {
		call cd_handleRestCustomAnim;
		true
	};

	//нельзя тащить вперёд
	if (_isMov && {[player] call smd_isPulling} && {call input_internal_isMovingForward}) exitWith {true};

	(player getVariable ["smd_bodyParts",[true,true,true,true]]) params ["_ra","_la","_rl","_ll","_canStand"];
	_hasNoLegs = !_rl && !_ll;
	//флаг если персонаж с костылями
	if !isNullVar(_canStand) then {
		_hasNoLegs = false;
	};
	_hasNoArms = !_ra && !_la;
	
	if ([player,"ghost_flag",VST_GHOST_EFFECT] call le_vst_hasVarExt) then {
		_hasNoArms = false; 
		_hasNoLegs = false;
	};
	
	//TODO replace to server prob?
	if (_hasNoLegs && stance player in ["STAND","CROUCH"]) then {
		player switchAction "DOWN";
	};
	//_isUnc = cd_isUnconscious;
	_isStunned = call smd_isStunned;
	
	if (((_hasNoArms && _hasNoLegs) || _isStunned) && _isMov) exitWith {true};
	if ((_hasNoLegs || _isStunned) && _isCS) exitWith {true};

	_curanm = animationState player;
	_issprint = "eva" in _curanm;
	//отключение школьниковского бега
	if (_issprint && {_key in SIDEWAYS_MOVEMENT_BUTTONS}) then {
		true
	} else {
		//if is sprinting or runing and press Z
		if (_isCS) then {
			_isrun = "spr" in _curanm || "run" in _curanm || "wlk" in _curanm;
			if ((_isrun || _issprint) && {_key in FAST_DROP_BUTTONS}) then {
				true
			} else {
				false
			}
		};
	};

	//false
};
input_internal_isChangeStance = {_key in CHANGE_STANCE_BUTTONS};
input_internal_isMovingButton = {_key in CAN_MOVE_BUTTONS};
input_internal_isMovingForward = {_key in MOVE_FORWARD_BUTTONS};

input_getKeyNameByInputName = {
	params ["_inp"];
	_inp = toLower _inp;
	private _idx = input_internal_map_act2kb getOrDefault [_inp,-1];
	if (_idx == -1) exitWith {"[ERROR_KEY_NOT_FOUND]"};
	(cd_settingsKeyboard select _idx select KEYBIND_INDEX_CURRENT) params ["_code","_shift","_ctrl","_alt","_isMouse"];
	private _plus = [];
	private _modifKeysCtrl = [KEY_RCONTROL,KEY_LCONTROL];
	private _modifKeysShift = [KEY_LSHIFT,KEY_RSHIFT];
	private _modifKeysAlt = [KEY_LALT,KEY_RALT];
	if (!array_exists(_modifKeysShift,_code) && _shift) then {_plus pushBack "Shift"};
	if (!array_exists(_modifKeysCtrl,_code) && _ctrl) then {_plus pushBack "Control"};
	if (!array_exists(_modifKeysAlt,_code) && _alt) then {_plus pushBack "Alt"};
	private _plspre = "";
	if (count _plus > 0) then {_plus = [""] + _plus; _plspre = " "};
	
	format["%3%1%2",([_code] call input_getAllKeyNames) joinString " или ",(_plspre) + (_plus joinString " + "),["","Мышь: "] select _isMouse]
};
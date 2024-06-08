// ======================================================
// Copyright (c) 2017-2024 the ReSDK_A3 project
// sdk.relicta.ru
// ======================================================

#include "..\..\host\engine.hpp"
#include "..\..\host\keyboard.hpp"
#include "widgets.hpp"

/*
=========================================================================

		GROUP: common

=========================================================================
*/

#define HOME_PROTECT if (_key == KEY_HOME) then {call displayClose};

// Открыть дисплей
displayOpen = {

	if (isDisplayOpen) exitWith {displayNull};

	private _isCreated = createDialog "mainDisplay";

	if (!_isCreated) exitWith {displaynull};

	private _display = getDisplay;

	_display displayAddEventHandler ["keyDown",
		{
			params ["_obj","_key"];

			//на случай если кто-то сдолбоёбится...
			#ifndef RELEASE
            HOME_PROTECT
			#endif
            //тут работают армовские приколы. Насколько я помню если в обработчике дисплея идёт возврат (условный) true то больше ничего обрабатываться в этом событии не будет - Yodes
            if (_key == KEY_ESCAPE) then {true;} else {false;}
		}];

	//TODO dynamic mode
	//(findDisplay 46) createDisplay "mainDisplay"

	_display
};

// Открыть динамический дисплей
dynamicDisplayOpen = {
	if (isDisplayOpen) exitWith {displayNull};

	(findDisplay 46) createDisplay "mainDisplay";

	//if (!_isCreated) exitWith {displaynull};

	private _display = getDisplay;
	_display setvariable ["$dynflag$",true];

	_display displayAddEventHandler ["keyDown",
		{
			params ["_obj","_key"];

			//на случай если кто-то сдолбоёбится...
			#ifndef RELEASE
            HOME_PROTECT
			#endif

			//тут работают армовские приколы. Насколько я помню если в обработчике дисплея идёт возврат (условный) true то больше ничего обрабатываться в этом событии не будет - Yodes
			if (_key == KEY_ESCAPE || {ADDRULE_FORBIDDEN_BUTTONS(_key) || {[_key] call input_movementCheck}}) then {true;} else {false;}
		}];

	//antistrafe handler
	_display displayAddEventHandler ["keyUp",{
		_this call strafeLock_onKeyUp
	}];

	_display
};

// Закрыть дисплей
displayClose = {
	getDisplay closeDisplay 0
};

// Создать виджет
createWidget = {
	params ["_display","_type","_pos","_parent"];
	private _postevent = {};
	if (_type select [0,1] == "!") then {
		private _splitedType = _type splitString "!";
		#define INDEX_TYPE 0
		#define INDEX_CUSTOM 1

		_type = _splitedType select INDEX_TYPE;
		private _cust = _splitedType select INDEX_CUSTOM;
		if (_cust == "background") exitwith {
			_postevent = {_this ctrlEnable false;};
		};
		if (_cust == "inphndl") exitwith {
			_postevent = {
				_this ctrlAddEventHandler ["KeyUp",{
					params ["_w","_key"];
					// if (_key == KEY_BACKSPACE) exitWith {
					// 	forceUnicode 0;
					// 	_text = ctrlText _w;
					// 	_sel = ctrlTextSelection _w;

					// 	_sel params ["_idxDel","_countDel","_tex"];
					// 	_aText = toArray _text;
					// 	if (_countDel != 0) then {
					// 		if (_countDel > 0) then {
					// 			_aText deleteRange [_idxDel,_countDel];
					// 			_w ctrlSetText (toString _aText);
					// 			_w ctrlSetTextSelection [_idxDel,0];
					// 		} else {
					// 			_aText deleteRange [_idxDel+_countDel,abs _countDel];
					// 			_w ctrlSetText (toString _aText);
					// 			_w ctrlSetTextSelection [_idxDel+_countDel,0];
					// 		};

					// 	} else {
					// 		_aText deleteRange [_idxDel-1,1];
					// 		_w ctrlSetText (toString _aText);
					// 		_w ctrlSetTextSelection [_idxDel-1,0];
					// 	};

					// };
					//auto-send by enter press
					if (_key == KEY_RETURN) exitWith {
						if equals(focusedCtrl getDisplay,_w) then {
							_w ctrlSetText (ctrlText _w + endl);
						};
					};
				}];
			};
		};
	};

	private _newObject = if (isNil "_parent") then {
		_display ctrlCreate [_type,-1];
	} else {
		_display ctrlCreate [_type,-1,_parent];
	};
	_newObject ctrlsetpixelprecision 2;
	[_newObject,_pos] call widgetSetPosition;

	_newObject call _postevent;

	_newObject
};

// Удалить виджет
deleteWidget = {
	params ["_widget",["_nextFrame",false]];

	if _nextFrame then {
		nextFrameParams({ctrlDelete _this},_widget);
	} else {
		ctrlDelete _widget;
	};
};

/*
=========================================================================

		GROUP: POSITIONS

=========================================================================
*/
//Устанавливает новую позицию виджету
widgetSetPosition = {
	params ["_widget","_posarray",["_time",-1]];
	#define precent_to_real(proc_val) (proc_val / 100)

	_posarray params ["_posx","_posy","_posw","_posh"];

	if (_widget getVariable ['isSquare',false]) then {
		_posw = transformSizeByAR(_posh);
	};

	private _window = ctrlParentControlsGroup _widget;

    //Если находится внутри окна то максимальные размеры берутся от этого окна
    if (!(_window isequalto widgetNull)) then
    {
        private _windPos = ctrlPosition _window; //натив
        private _windW = _windPos select 2;
        private _windH = _windPos select 3;
        _widget ctrlSetPosition [
			precent_to_real(_posx) * _windW,
			precent_to_real(_posy) * _windH,
			precent_to_real(_posw) * _windW,
			precent_to_real(_posh) * _windH
			];

    } else {
        _widget ctrlSetPosition [
			precent_to_real(_posx) * safezoneW + safezoneX,
			precent_to_real(_posy) * safezoneH + safezoneY,
			precent_to_real(_posw) * safezoneW,
			precent_to_real(_posh) * safezoneH
			];
    };

	if (_time != -1) then {
		_widget ctrlcommit _time;
	} else {
		_widget ctrlCommit 0;
	};
};

//Преобразовать позицию виджета из процента в экранное пространство
widgetPosPrecentToSafezone = {
	params ["_widget","_prec","_index"];
	private _vec4 = [0,0,0,0];
	_vec4 set [_index,_prec];
	_vec4 params ["_posx","_posy","_posw","_posh"];

	if (_widget getVariable ['isSquare',false]) then {
		_posw = transformSizeByAR(_posh);
	};

	private _window = ctrlParentControlsGroup _widget;

    //Если находится внутри окна то максимальные размеры берутся от этого окна
    if (!(_window isequalto widgetNull)) then
    {
        private _windPos = ctrlPosition _window; //натив
        private _windW = _windPos select 2;
        private _windH = _windPos select 3;
        [
			precent_to_real(_posx) * _windW,
			precent_to_real(_posy) * _windH,
			precent_to_real(_posw) * _windW,
			precent_to_real(_posh) * _windH
		] select _index;

    } else {
		[
			precent_to_real(_posx) * safezoneW + safezoneX,
			precent_to_real(_posy) * safezoneH + safezoneY,
			precent_to_real(_posw) * safezoneW,
			precent_to_real(_posh) * safezoneH
		] select _index;
    };
};

//Устанавливает новую позицию виджету без изменеия размеров
widgetSetPositionOnly = {
	params ["_widget","_posarray",["_time",-1]];
	#define precent_to_real(proc_val) (proc_val / 100)

	_posarray params ["_posx","_posy"];

	//if (_widget getVariable ['isSquare',false]) then {
	//	_posw = transformSizeByAR(_posh);
	//};

	private _window = ctrlParentControlsGroup _widget;

    //Если находится внутри окна то максимальные размеры берутся от этого окна
    if (!(_window isequalto widgetNull)) then
    {
        private _windPos = ctrlPosition _window; //натив
        private _windW = _windPos select 2;
        private _windH = _windPos select 3;
        _widget ctrlSetPosition [
			precent_to_real(_posx) * _windW,
			precent_to_real(_posy) * _windH
			];

    } else {
        _widget ctrlSetPosition [
			precent_to_real(_posx) * safezoneW + safezoneX,
			precent_to_real(_posy) * safezoneH + safezoneY
			];
    };

	//if (_time == -2) exitWith {}; //Пока не реализовывать
	if (_time != -1) then {
		_widget ctrlcommit _time;
	} else {
		_widget ctrlCommit 0;
	};
};


//Получает позицию виджета
widgetGetPosition = {

	(ctrlPosition _this) params ["_xp","_yp","_wp","_hp"];

	private _window = ctrlParentControlsGroup _this;

    if (_window isequalto widgetNull) then
    {
        #define STARTX (0 * safezoneW + safezoneX)
        #define STARTY (0 * safezoneH + safezoneY)
        #define DIAPAZONX ((1 * safezoneW + safezoneX) - STARTX)
        #define DIAPAZONY ((1 * safezoneH + safezoneY) - STARTY)

        _xp = (_xp - STARTX) / (DIAPAZONX / 100);
        _yp = (_yp - STARTY) / (DIAPAZONY / 100);
        _wp = _wp / (1 * safezoneW) * 100;
        _hp = _hp / (1 * safezoneH) * 100;
    } else {
		private _windPos = ctrlPosition _window; //натив
        private _windW = _windPos select 2;
        private _windH = _windPos select 3;

        _xp = _xp / (_windW) * 100;
        _yp = _yp / (_windH) * 100;
        _wp = _wp / (_windW) * 100;
        _hp = _hp / (_windH) * 100;
    };

	[_xp,_yp,_wp,_hp]
};

//Проверяет находится ли мышь внутри контрола
isMouseInsideWidget = {

	// Rewrited after 0.8.243

	private _wid = _this;
	if equals(_wid,widgetNull) exitWith {false};

	(ctrlPosition _wid) params ["_xp","_xy","_w","_h"];
	(ctrlMousePosition _wid) params ["_mX","_mY"];

	!((_mX < 0 || _mX > _w )  || (_mY < 0 || _mY > _h ))
	//( _xPos > _xe && _xPos < _xe2 ) && (_yPos > _ye && _yPos < _ye2 )
	/*if (
		(_mX < 0 && _mX > _w ) ||
		(_mY < 0 && _mY > _h )
	) exitWith {false};

	true*/

	/*private _array = ctrlPosition _this;

	if (_array isEqualTo []) exitWith {false};

    getMousePosition params ["_xPos","_yPos"];

	_array params ["_xe","_ye","_w","_h"];

	private _window = ctrlParentControlsGroup _this;

    if (!(_window isequalto widgetNull)) then {

        private _ParentWindow = _window;
        private _inc = 0;

        private _ctgPos = ctrlPosition _ParentWindow;
        //ctgPos.params(CX,CY);
     	_xe = _xe + (_ctgPos select 0);
        _ye = _ye + (_ctgPos select 1);

        //Я не уверен в достаточной быстроте цикла... Но пока работает так
        while {!(_ParentWindow isEqualTo widgetNull)} do
        {
            INC(_inc);
            //printf("Inc:%1",inc);
            _ParentWindow = ctrlParentControlsGroup _ParentWindow;
            _ctgPos = ctrlPosition _ParentWindow;
            //ctgPos.params(CX,CY);
			_xe = _xe + (_ctgPos select 0);
	        _ye = _ye + (_ctgPos select 1);

        };

	};

	if (
		( _xPos < _xe || _xPos > (_w + _xe) )  ||
		(_yPos < _ye || _yPos > (_h + _ye) )
	) exitWith {false};

	true*/
};

//Проверяет находится ли мышь внутри позиции
isMouseInsidePosition = {

	params ["_xe","_ye","_xe2","_ye2"];

	(call mouseGetPosition) params ["_xPos","_yPos"];

	// [20,50]
	// [30 , 30 , 60 , 60]
	if (
		( _xPos > _xe && _xPos < _xe2 ) && (_yPos > _ye && _yPos < _ye2 )
	) exitWith {true};

	false
};

//Получает позицию мыши внутри виджета
getMousePositionInWidget = {

	if (! (_this call isMouseInsideWidget)) exitWith {[0,0]};


   //Находится на экране
   #define STARTX (0 * safezoneW + safezoneX)
   #define STARTY (0 * safezoneH + safezoneY)
   #define DIAPAZONX ((1 * safezoneW + safezoneX) - STARTX)
   #define DIAPAZONY ((1 * safezoneH + safezoneY) - STARTY)

   (ctrlPosition _this) params ["_xp","_yp","_wp","_hp"];

   getMousePosition params ["_mX","_mY"];

   private _window = ctrlParentControlsGroup _this;

   if (_window isequalto widgetNull) then {

	   _xp = (_xp - STARTX) / (DIAPAZONX / 100);
	   _yp = (_yp - STARTY) / (DIAPAZONY / 100);
	   //добавляем смещение мыши
	   _xp = ((_mX - STARTX) / (DIAPAZONX / 100)) - _xp;
	   _yp = ((_mY - STARTY) / (DIAPAZONY / 100)) - _yp;

	  [_xp,_yp];

   	} else {

	   (ctrlPosition _window) params ["_windX","_windY","_windW","_windH"]; //натив

	   private _ParentWindow = ctrlParentControlsGroup _window;
	   private "_ctgPos";
	   while {!(_ParentWindow isEqualTo widgetNull)} do
	   {
		   _ctgPos = ctrlPosition _ParentWindow;
		   MOD(_windX, + (_ctgPos select 0));
		   MOD(_windY, + (_ctgPos select 1));
		   _ParentWindow = ctrlParentControlsGroup _ParentWindow;
	   };

	   _xp = -(_xp + (_windX - _mX))/ (_windW) * 100;
	   _yp = -(_yp + (_windY - _mY))/ (_windH) * 100;

	  [_xp,_yp];
   }
};

// Устанавливает текст в виджет
widgetSetText = {
	params ["_obj","_text"];

	if (_text isEqualType "") then {
        //строка
        _obj setStructuredText (parseText _text);
    } else {
        //уже текст
        _obj setStructuredText _text;
    }
};

// Устанавливает картинку в виджет
widgetSetPicture = {
	params ["_obj","_text"];

	_obj ctrlsettext _text;
};

// Получает высоту текста виджета
widgetGetTextHeight = {

	private _window = ctrlParentControlsGroup _this;

	private _height = ctrlTextHeight _this;

	if (_window isEqualTo widgetNull) then
    {
        _height = _height / (1 * safezoneH) * 100;
    } else {
        private _windH = ctrlPosition _window; //натив
        _windH = _windH select 3;
        _height = _height / (_windH) * 100;
    };

	_height
};

//скроллинг контрол группы WIDGETGROUP_H
widgetWGScrolldown = {
	params ["_wid"];
	_wid ctrlSetAutoScrollRewind true;
	_wid ctrlSetAutoScrollDelay 0;
	_wid ctrlSetAutoScrollSpeed 0.001;

	invokeAfterDelayParams({_this ctrlSetAutoScrollSpeed 0;},0.5,_wid);
};

//=================== MOUSE HELPERS =====================

// Устанавливает позицию мыши в процентах
mouseSetPosition = {
	params ["_xpos","_ypos"];
	#define precent_to_real(proc_val) (proc_val / 100)
    setMousePosition [precent_to_real(_xpos) * safezoneW + safezoneX,precent_to_real(_ypos) * safezoneH + safezoneY];
};

//Получает позицию мыши (значения в процентах)
mouseGetPosition = {

	getMousePosition params ["_mX","_mY"];

	//Находится на экране
	#define STARTX (0 * safezoneW + safezoneX)
	#define STARTY (0 * safezoneH + safezoneY)
	#define DIAPAZONX ((1 * safezoneW + safezoneX) - STARTX)
	#define DIAPAZONY ((1 * safezoneH + safezoneY) - STARTY)

	private _xp = ((_mX - STARTX) / (DIAPAZONX / 100));
	private _yp = ((_mY - STARTY) / (DIAPAZONY / 100));

	[_xp,_yp];
};

//Преобразует позицию мыши в координаты экранного пространства
convertScreenCoords = {
	if (count _this == 0) exitWith {[-100,-100]};
	_this params ["_mX","_mY"];

	//Находится на экране
	#define STARTX (0 * safezoneW + safezoneX)
	#define STARTY (0 * safezoneH + safezoneY)
	#define DIAPAZONX ((1 * safezoneW + safezoneX) - STARTX)
	#define DIAPAZONY ((1 * safezoneH + safezoneY) - STARTY)

	private _xp = ((_mX - STARTX) / (DIAPAZONX / 100));
	private _yp = ((_mY - STARTY) / (DIAPAZONY / 100));

	[_xp,_yp];
};

// Конвертация мировой позиции в экранные координаты. Всегда возвращает vec2
positionWorldToScreen = {
	((worldToScreen _this) call convertScreenCoords)
};

//screenToWorld scripted alternative (ray to distance, not surface)
getScreenPointToWorld = {
    params [["_screenPos",getMousePosition],["_mulDist",1000]];

    _screenPos = _screenPos vectorDiff [0.5, 0.5];
    private _res = getResolution;

    private _m = _res select 4;
    private _aspect = _res select 7;
    positionCameraToWorld (vectorNormalized [
      (_screenPos select 0) * tan (45/2) * _m * _aspect,
      -((_screenPos select 1) * tan (45/2) * _m),
      1
    ] vectorMultiply _mulDist);
};

//Проверяет находится ли позиция внутри другой позиции. Отсчёт позиции с верхнего левого угла всегда
isPointInScreenPosition = {
	params ["_point","_sp"];

	_sp params ["_xe","_ye","_xe2","_ye2"];

	_point params ["_xPos","_yPos"];

	if (
		( _xPos > _xe && _xPos < _xe2 ) && (_yPos > _ye && _yPos < _ye2 )
	) exitWith {true};

	false
};

//Можно ли видеть точку на экране
canSeeScreenPoint = {
	[_this,[0,0,100,100]] call isPointInScreenPosition
};

// видно ли объект в сцене. Лучше всего работает с малыми объектами
hasObjectInScene = {
	((worldToScreen (getposatl _this)) call convertScreenCoords) params ["_xPos","_yPos"];
	( _xPos > 0 && _xPos < 100 ) && (_yPos > 0 && _yPos < 100 )
};

//other screen support
hasEnabledBlackScreen = false;

// Устанавливает режим черного экрана
setBlackScreenGUI = {
	params ["_mode",["_time",0.001]];

	hasEnabledBlackScreen = _mode;

	if (_mode) then {
		titleCut ["","BLACK", _time];
	} else {
		titleCut ["","BLACK IN", _time];
	};
};


// Устанавливает режим видимости HUD-а
setVisibleHUD = {
	params ["_mode"];

	//chat
	{
		_x ctrlShow _mode;
	} foreach chat_widgets;
	//cursor
	{
		_x ctrlShow _mode;
	} foreach interaction_aim_widgets;
	//stamina
	{
		_x ctrlShow _mode;
	} foreach stamina_widgets;
	//inventory
	{
		_x ctrlShow _mode;
	} forEach inventor_slot_widgets;
	
	(cd_vv_widgets select 0) ctrlShow _mode;
	
	(hud_zone select 0) ctrlShow _mode;
};

widget_antiGamma_lastError = "";
// false is not allowed values
widget_antiGammaCheck = {

	#define checkRange(numberToCheck,bottom,top) (numberToCheck >= bottom && numberToCheck <= top)
	#define low_protect 0.9
	#define max_protect 1.1

	private _vOpts = getVideoOptions;
	//all values in range 0-2 (mid 1)

	//яркость (вкладка изображение)
	private _brightness = _vOpts get "brightness";
	//гамма (вкладка изображение)
	private _gamma = _vOpts get "gamma";
	//яркость (вкладка AA&PP)
	private _ppBrightness = _vOpts get "ppBrightness";
	//контраст (вкладка AA&PP)
	private _ppContrast = _vOpts get "ppContrast";

	private _errMesDef = "Восстановите значение опции ""%1"" в настройках (вкладка %2). Ваше значение %3, требуется от %4 до %5";

	if !checkRange(_brightness,low_protect,max_protect) exitWith {
		widget_antiGamma_lastError = format[_errMesDef,"Яркость","Изображение",_brightness tofixed 2,low_protect,max_protect];
		false
	};
	if !checkRange(_gamma,low_protect,max_protect) exitWith {
		widget_antiGamma_lastError = format[_errMesDef,"Гамма","Изображение",_gamma tofixed 2,low_protect,max_protect];
		false
	};
	if !checkRange(_ppBrightness,low_protect,max_protect) exitWith {
		widget_antiGamma_lastError = format[_errMesDef,"Яркость","AA & PP",_ppBrightness*100 tofixed 0,low_protect*100,max_protect*100];
		false
	};
	if !checkRange(_ppContrast,low_protect,max_protect) exitWith {
		widget_antiGamma_lastError = format[_errMesDef,"Контраст","AA & PP",_ppContrast*100 tofixed 0,low_protect*100,max_protect*100];
		false
	};
	
	widget_antiGamma_lastError = "";

	true

	//obsolete after platform 2.14
	// (findDisplay 46) createDisplay  "RscDisplayInterrupt";
	// ctrlActivate (findDisplay 49 displayCtrl 301);
	// _sets = (findDisplay 5);
	// (findDisplay 5) displayAddEventHandler ["Unload",{(findDisplay 49) closeDisplay 0}];
	// //{_x ctrlsettooltip (str ctrlidc _x)} foreach (allcontrols _sets);

	// _bri = _sets displayCtrl 112;
	// _gam = _sets displayCtrl 110;

	// _brival = sliderPosition _bri;
	// _gam = sliderPosition _gam;

	// _sets closeDisplay 0;

	// checkRange(_brival,low_protect,max_protect) && checkRange(_gam,low_protect,max_protect)
};

// Создание сообщения отключения от сервера
widget_createDisconnectMessage = {
	private _args = _this;
	if (isDisplayOpen) then {
		call displayClose;
	};

	_d = call dynamicDisplayOpen;

	_back = [_d,BACKGROUND,WIDGET_FULLSIZE] call createWidget;

	_okButton = [_d,BUTTON,[50 - 30/2,80-20/2,30,20]] call createWidget;
	_okButton ctrlSetText "Выход";
	_okButton ctrlSetBackgroundColor [0,0.113,0.01,0.8];
	_okButton ctrlAddEventHandler ["MouseButtonUp",{
		_h = [] spawn {call displayClose};
	}];
	_headerText = "Отключен";
	_reasonText = "Вы вышли с сервера";

	_header = [_d,TEXT,[0,5,100,20]] call createWidget;
	_reason = [_d,TEXT,[0,25,100,50]] call createWidget;

	#define setwt(wid,_t,_sz) [wid,format["<t align='center' size='%2'>%1</t>",_t,_sz]] call widgetSetText

	setwt(_header,_headerText,1.6);
	setwt(_reason,_reasonText,1.2);

	if (count _args != 2) exitWith {};
	_args params ["_headerText","_reasonText"];

	setwt(_header,_headerText,1.6);
	setwt(_reason,_reasonText,1.2);
};


//специальная функция регистрации переноса каретки по нажатию enter
widget_registerInput = {
	private _input = _this;
	_input ctrlAddEventHandler ["KeyUp",{
		params ["_w","_key"];
		if (_key == KEY_BACKSPACE) exitWith {
			forceUnicode 0;
			_text = ctrlText _w;
			_sel = ctrlTextSelection _w;

			_sel params ["_idxDel","_countDel","_tex"];
			_aText = toArray _text;
			if (_countDel != 0) then {
				if (_countDel > 0) then {
					_aText deleteRange [_idxDel,_countDel];
					_w ctrlSetText (toString _aText);
					_w ctrlSetTextSelection [_idxDel,0];
				} else {
					_aText deleteRange [_idxDel+_countDel,abs _countDel];
					_w ctrlSetText (toString _aText);
					_w ctrlSetTextSelection [_idxDel+_countDel,0];
				};

			} else {
				_aText deleteRange [_idxDel-1,1];
				_w ctrlSetText (toString _aText);
				_w ctrlSetTextSelection [_idxDel-1,0];
			};

		};
		//auto-send by enter press
		if (_key == KEY_RETURN) exitWith {
			if equals(focusedCtrl getDisplay,_w) then {
				_w ctrlSetText (ctrlText _w + endl);
			};
		};
	}];
};

// Внутренняя функция для расчетов размеров объекта в экранном пространстве
widgetModel_objectHelper = {
	params ["_func", "_array", ["_scale", 1]];

	private _adjustCam = 1;
	private _topFOV = getResolution select 6;
	private _leftFOV = getResolution select 7;

	private _topLeftX = (_leftFOV-1)*0.5/_leftFOV;
	private _bottomRightX =  1-_topLeftX;
	private _topLeftY = 0;
	private _bottomRightY = 1;

	private _return = [];

	switch (toLower _func) do {
		case ("2d"): {
			_array params ["_pointX", "_z", "_pointY"];

			private _scrX = _pointX * (_bottomRightX - _topLeftX) + _topLeftX;
			private _vX = _leftFOV * (_scrX - 0.5) * _adjustCam * _z;

			private _scrY = _pointY * (_bottomRightY - _topLeftY) + _topLeftY;
			private _vY = _topFOV * (0.5 - _scrY) * _adjustCam * _z;

			_vX = _vX / _scale;
			_vY = _vY / _scale;

			_return = [_vX, _vY, _z];
		};
		case ("3d"): {
			_array params ["_vX", "_vY", "_z"]; // z is distance from screen

			_vX = _vX * _scale;
			_vY = _vY * _scale;

			private _scrX = _vX / (_leftFOV * _adjustCam * _z) + 0.5;
			private _pointX = (_scrX - _topLeftX) / (_bottomRightX - _topLeftX);

			private _scrY = 0.5 - _vY / (_topFOV * _adjustCam * _z);
			private _pointY = (_scrY - _topLeftY) / (_bottomRightY - _topLeftY);

			_return = [_pointX, _z, _pointY];
		};
	};

	_return
};

widgetSetMouseMoveColors = {
	params ["_w","_out","_in"];
	_w setBackgroundColor _out;
	_w setvariable ["___ieFocusCol_Exit",_out];
	_w setvariable ["___ieFocusCol_Enter",_in];
	_w ctrlAddEventHandler ["MouseEnter",{_w = _this select 0; _w setBackgroundColor (_w getvariable "___ieFocusCol_Enter")}];
	_w ctrlAddEventHandler ["MouseExit",{_w = _this select 0; _w setBackgroundColor (_w getvariable "___ieFocusCol_Exit")}];
};



#ifdef EDITOR

//https://gist.github.com/HallyG/fa7a6cda10abcb630b1dc325f0523553
fn_iconViewer = {
	params [
		["_mode", "", [""]],
		["_args", [], [[]]]
	];

	if (!hasInterface) exitWith {};
	disableSerialization;

	private _fnc_GRID_X = {
		pixelW * pixelGridNoUIScale * (((_this) * (2)) / 4)
	};

	private _fnc_GRID_Y = {
		pixelH * pixelGridNoUIScale * ((_this * 2) / 4)
	};	

	switch _mode do {
		case "onload": {
			private _display = findDisplay 46 createDisplay "RscDisplayEmpty";
			if (isNull _display) exitWith {};

			uiNamespace setVariable ["HALs_icons_idd", _display];

			["create", []] call fn_iconViewer;

			if (isNil {localNamespace getVariable "HALs_gameIcons"}) then {
				private _h = [] spawn {
					systemChat "Fetching images from available pbos.";

					private _icons = [];
					private _addons = allAddonsInfo apply {_x select 0};
					{
						_icons append (addonFiles [_x, ".paa"]);
						_icons append (addonFiles [_x, ".jpg"]);
						_icons append (addonFiles [_x, ".tga"]);
						_icons append (addonFiles [_x, ".bmp"]);
					} forEach _addons;

					localNamespace setVariable ["HALs_gameIcons", _icons];
					localNamespace setVariable ["HALs_icons_numIcons", count _icons];
					localNamespace setVariable ["HALs_icons", _icons];

					["update", []] call fn_iconViewer;
				};
			} else {
				["update", []] call fn_iconViewer;
			};
		};

		case "create": {
			private _display = uiNamespace getVariable ["HALs_icons_idd", displayNull];
			if (isNull _display) exitWith {};

			private _TABLE_WIDTH = 130;
			private _TABLE_HEIGHT = 120;

			private _totW = ((_TABLE_WIDTH) call _fnc_GRID_X);
			private _totH = ((_TABLE_HEIGHT) call _fnc_GRID_Y);

			private _pos = [
				safeZoneX + (safeZoneW / 2) - (((_TABLE_WIDTH / 2) call _fnc_GRID_X)),
				safeZoneY + (safeZoneH / 2) - (((_TABLE_HEIGHT / 2) call _fnc_GRID_Y)),
				((_TABLE_WIDTH) call _fnc_GRID_X),
				((_TABLE_HEIGHT) call _fnc_GRID_Y)
			];

			private _ctrlGroupMain = _display ctrlCreate ["RscControlsGroupNoScrollbars", -1];
			_ctrlGroupMain ctrlSetPosition _pos;
			_ctrlGroupMain ctrlCommit 0;

			private _background = _display ctrlCreate ["RscText", -1, _ctrlGroupMain];
			_background ctrlSetPosition [0, 0, _pos select 2, _pos select 3];
			_background ctrlSetBackgroundColor [0.05, 0.05, 0.05, 0.95];
			_background ctrlEnable false;
			_background ctrlCommit 0;

			private _headerBackground = _display ctrlCreate ["RscText", -1, _ctrlGroupMain];
			_headerBackground ctrlSetPosition [0, 0, _pos select 2, ((3) call _fnc_GRID_Y)];
			_headerBackground ctrlSetBackgroundColor [
				profilenamespace getvariable ['GUI_BCG_RGB_R', 0.3843],
				profilenamespace getvariable ['GUI_BCG_RGB_G', 0.7019],
				profilenamespace getvariable ['GUI_BCG_RGB_B', 0.8862],
				1
			];
			_headerBackground ctrlEnable false;
			_headerBackground ctrlCommit 0;

			private _headerText = _display ctrlCreate ["RscText", -1, _ctrlGroupMain];
			_headerText ctrlSetPosition [0, 0, _pos select 2, ((3) call _fnc_GRID_Y)];
			_headerText ctrlSetFont "RobotoCondensed";
			_headerText ctrlSetTextColor [0.95, 0.95, 0.95, 1];
			_headerText ctrlSetFontHeight (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			_headerText ctrlSetText "Icon Viewer";
			_headerText ctrlEnable false;
			_headerText ctrlCommit 0;

			private _closeButton = _display ctrlCreate ["ctrlButtonPictureKeepAspect", -1, _ctrlGroupMain];
			_closeButton ctrlSetText "\a3\3DEN\Data\Displays\Display3DEN\search_end_ca.paa";
			_closeButton ctrlSetPosition [(_pos select 2) - ((3 + 0.5) call _fnc_GRID_X), 0, ((3 + 0.5) call _fnc_GRID_X), ((3) call _fnc_GRID_Y)];
			_closeButton ctrlAddEventHandler ["ButtonClick", {
				private _display = uiNamespace getVariable ["HALs_icons_idd", displayNull];
				if (!isNull _display) then {_display closeDisplay 2;};
			}];
			_closeButton ctrlCommit 0;

			private _footerBackground = _display ctrlCreate ["RscText", -1, _ctrlGroupMain];
			_footerBackground ctrlSetPosition [0, (_pos select 3) - ((5) call _fnc_GRID_Y), _pos select 2, ((5) call _fnc_GRID_Y)];
			_footerBackground ctrlSetBackgroundColor [0.1, 0.1, 0.1, 1];
			_footerBackground ctrlEnable false;
			_footerBackground ctrlCommit 0;

			private _ctrlGroupList = _display ctrlCreate ["RscControlsGroupNoScrollbars", 12002, _ctrlGroupMain];
			_ctrlGroupList ctrlSetPosition [
				0,
				((3 + 0.5) call _fnc_GRID_Y),
				_pos select 2,
				(_pos select 3) - ((3 + 0.5 + 0.5 + 5) call _fnc_GRID_Y)
			];
			_ctrlGroupList ctrlSetBackgroundColor [1, 1, 1, 0.9];
			_ctrlGroupList ctrlCommit 0;

			private _origPos = ctrlPosition _ctrlGroupList;
			private _boxesX = localNamespace getVariable ["HALs_icons_boxesX", 5];
			private _boxesY = localNamespace getVariable ["HALs_icons_boxesY", 5];

			private _w0 = (
				(_origPos select 2) - ((_boxesX + 1) * ((0.5) call _fnc_GRID_X))
			) / _boxesX;
			private _h0 = (
				(_origPos select 3) - ((_boxesY + 1) * ((0.5) call _fnc_GRID_Y))
			) / _boxesY;
			private _x0 = (0.5) call _fnc_GRID_X;
			private _y0 = (0.5) call _fnc_GRID_Y;

			private _ctrls = [];
			for [{_i = 0}, {_i < _boxesY}, {_i = _i + 1}] do {
				private _y = _y0 + (((0.5) call _fnc_GRID_Y) + _h0) * _i;
				private _x = _x0;
				
				for [{_j = 0}, {_j < _boxesX}, {_j = _j + 1}] do {
					_x = _x0 + (((0.5) call _fnc_GRID_X) + _w0) * _j;
					private _pos = [_x, _y, _w0, _h0];

					private _ctrlBox = _display ctrlCreate ["RscControlsGroupNoScrollbars", -1, _ctrlGroupList];
					_ctrlBox setVariable ["data", ""];
					_ctrlBox ctrlShow false;

					_ctrlBox ctrlSetPosition _pos;
					_ctrlBox ctrlCommit 0;

					private _ctrlTextBG = _display ctrlCreate ["RscText", -1, _ctrlBox];
					_ctrlTextBG ctrlSetBackgroundColor [1, 1, 1, 0.15];

					_ctrlTextBG ctrlSetPosition [0, 0, _pos select 2, _pos select 3];
					_ctrlTextBG ctrlEnable false;
					_ctrlTextBG ctrlCommit 0;

					private _ctrlPicture = _display ctrlCreate ["RscPictureKeepAspect", -1, _ctrlBox];
					_ctrlPicture ctrlSetText "";
					_ctrlPicture ctrlSetBackgroundColor [1, 1, 1, 0.25];

					_ctrlPicture ctrlSetPosition [0, 0, _pos select 2, _pos select 3];
					_ctrlPicture ctrlEnable false;
					_ctrlPicture ctrlCommit 0;

					private _ctrlTextTitle = _display ctrlCreate ["RscStructuredText", -1, _ctrlBox];
					_ctrlTextTitle ctrlSetStructuredText parseText format ["<t size='0.9' shadow='2' font='puristaMedium' align='center' >%1</t>",
						"a3\ui_f_oldman\data\displays\rscdisplaymain\spotlight_1_old_man_ca.paa"
					];
					_ctrlTextTitle setVariable ["bg", _ctrlTextBG];

					_ctrlTextTitle ctrlSetPosition [0, 0, _pos select 2, (ctrlTextHeight _ctrlTextTitle) min (_pos select 3)];
					_ctrlTextTitle ctrlEnable false;
					_ctrlTextTitle ctrlCommit 0;

					private _ctrlButton = _display ctrlCreate ["ctrlActivePictureKeepAspect", -1, _ctrlBox];
					_ctrlButton setVariable ["bg", _ctrlTextBG];
					_ctrlButton ctrlAddEventHandler ["ButtonDown", {
						private _ctrl = _this select 0;
						private _data = _ctrl getVariable "data";

						if (!isNil "_data") then {
							copyToClipboard str _data;
							hint "Copied to clipboard.";
						};
					}];
					_ctrlButton ctrlAddEventHandler ["MouseEnter", {
						private _ctrl = (_this select 0) getVariable "bg";
						_ctrl ctrlSetBackgroundColor [0, 0.3, 0.6, 0.6];
					}];
					_ctrlButton ctrlAddEventHandler ["MouseExit", {
						private _ctrl = (_this select 0) getVariable "bg";
						_ctrl ctrlSetBackgroundColor [1, 1, 1, 0.15];
					}];

					_ctrlButton ctrlSetText "\a3\Data_f\clear_empty.paa";
					_ctrlButton ctrlSetPosition [0, 0, _pos select 2, _pos select 3];
					_ctrlButton ctrlEnable true;
					_ctrlButton ctrlCommit 0;

					_ctrlBox setVariable ["ctrls", [_ctrlTextBG, _ctrlTextTitle, _ctrlPicture, _ctrlButton]];
					_ctrls pushBack _ctrlBox;
				};
			};

			_ctrlGroupList setVariable ["ctrls", _ctrls];
			_display setVariable ["ctrlList", _ctrlGroupList];

			private _ctrlSearchInfo = _display ctrlCreate ["RscStructuredText", -1, _ctrlGroupMain];
			_ctrlSearchInfo ctrlSetPosition [
				((0.5) call _fnc_GRID_X),
				(_pos select 3) - ((1 + 3) call _fnc_GRID_Y),
				((_TABLE_WIDTH - 0.5*2) call _fnc_GRID_X),
				((3) call _fnc_GRID_Y)
			];
			_ctrlSearchInfo ctrlSetTextColor [0.95, 0.95, 0.95, 1];
			_ctrlSearchInfo ctrlEnable false;
			_ctrlSearchInfo ctrlSetFontHeight (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			_ctrlSearchInfo ctrlSetStructuredText parseText format ["<t align='right'>%1 images found</t>", 0];
			_ctrlSearchInfo ctrlCommit 0;

			_display setVariable ["searchInfo", _ctrlSearchInfo];

			private _ctrlSearchCheckbox = _display ctrlCreate ["ctrlCheckbox", 12001, _ctrlGroupMain];
			_ctrlSearchCheckbox ctrlSetPosition [
				((_TABLE_WIDTH / 2) call _fnc_GRID_X) - ((_TABLE_WIDTH / 4) call _fnc_GRID_X) - ((3 + 0.5) call _fnc_GRID_X),
				(_pos select 3) - ((1 + 3) call _fnc_GRID_Y),
				((3) call _fnc_GRID_X),
				((3) call _fnc_GRID_Y)
			];
			_ctrlSearchCheckbox ctrlAddEventHandler ["CheckedChanged", {
				private _checked = (_this select 1) == 1;

				(_this select 0) ctrlSetTooltip (["Case Insensitive.", "Case Sensitive."] select _checked);
				localNamespace setVariable ["HALs_icons_caseSensitive", _checked];

				["filterItems", []] call fn_iconViewer;
			}];
			_ctrlSearchCheckbox ctrlCommit 0;

			private _checked = localNamespace getVariable ["HALs_icons_caseSensitive", true];
			_ctrlSearchCheckbox ctrlSetTooltip (["Case Insensitive.", "Case Sensitive."] select _checked);
			_ctrlSearchCheckbox cbSetChecked _checked;

			private _ctrlSearch = _display ctrlCreate ["RscEdit", 12001, _ctrlGroupMain];
			_ctrlSearch ctrlSetPosition [
				((_TABLE_WIDTH / 2) call _fnc_GRID_X) - ((_TABLE_WIDTH / 4) call _fnc_GRID_X),
				(_pos select 3) - ((1 + 3) call _fnc_GRID_Y),
				((_TABLE_WIDTH / 2) call _fnc_GRID_X),
				((3) call _fnc_GRID_Y)
			];
			_ctrlSearch ctrlSetFont "RobotoCondensed";
			_ctrlSearch ctrlSetTextColor [0.95, 0.95, 0.95, 1];
			_ctrlSearch ctrlSetText (localNamespace getVariable ["HALs_icons_searchText", ""]);
			_ctrlSearch ctrlSetFontHeight (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			_ctrlSearch ctrlSetBackgroundColor [0, 0, 0, 0.7];
			_ctrlSearch ctrlCommit 0;

			private _ctrlButtonSearch = _display ctrlCreate ["ctrlButtonPictureKeepAspect", 12001, _ctrlGroupMain];
			_ctrlButtonSearch ctrlSetPosition [
				((_TABLE_WIDTH / 2) call _fnc_GRID_X) - ((_TABLE_WIDTH / 4) call _fnc_GRID_X) + ((_TABLE_WIDTH / 2) call _fnc_GRID_X) + ((0.5) call _fnc_GRID_Y),
				(_pos select 3) - ((4) call _fnc_GRID_Y),
				((3) call _fnc_GRID_X),
				((3) call _fnc_GRID_Y)
			];
			_ctrlButtonSearch ctrlSetText "\a3\3DEN\Data\Displays\Display3DEN\search_start_ca.paa";
			_ctrlButtonSearch ctrlSetBackgroundColor [0, 0, 0, 0];
			_ctrlSearch setVariable ["button", _ctrlButtonSearch];
			_ctrlButtonSearch setVariable ["edit", _ctrlSearch];
			
			_ctrlButtonSearch ctrlAddEventHandler ["ButtonClick", {
				params [
					["_ctrl", controlNull, [controlNull]]
				];

				private _ctrlEditSearch = _ctrl getVariable ["edit", controlNull];
				private _searchText = ctrlText _ctrlEditSearch;
				private _oldText = localNamespace getVariable ["HALs_icons_searchText", ""];

				if (_searchText != _oldText) then {
					localNamespace setVariable ["HALs_icons_searchText", _searchText];

					["filterItems", []] call fn_iconViewer;
				};
			}];
			_ctrlButtonSearch ctrlCommit 0;

			private _ctrlPageInfo = _display ctrlCreate ["RscStructuredText", -1, _ctrlGroupMain];
			_ctrlPageInfo ctrlSetPosition [
				(1 + 3 + 0.5) call _fnc_GRID_X,
				(_pos select 3) - ((1 + 3) call _fnc_GRID_Y),
				((10) call _fnc_GRID_X),
				((5) call _fnc_GRID_Y)
			];
			_ctrlPageInfo ctrlSetTextColor [0.95, 0.95, 0.95, 1];
			_ctrlPageInfo ctrlSetFontHeight (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			_ctrlPageInfo ctrlSetStructuredText parseText format ["<t align='center'>1 | %2</t>", 99, 99];
			_ctrlPageInfo ctrlEnable false;
			_ctrlPageInfo ctrlCommit 0;

			_display setVariable ["pageInfo", _ctrlPageInfo];

			private _ctrlButtonL = _display ctrlCreate ["ctrlButton", -1, _ctrlGroupMain];
			_ctrlButtonL ctrlSetPosition [
				(1) call _fnc_GRID_X,
				(_pos select 3) - ((1 + 3) call _fnc_GRID_Y),
				((3) call _fnc_GRID_X),
				((3) call _fnc_GRID_Y)
			];
			_ctrlButtonL ctrlSetFont "PuristaMedium";
			_ctrlButtonL ctrlSetText "<";
			_ctrlButtonL ctrlSetTooltip "Previous page.";
			_ctrlButtonL ctrlSetBackgroundColor [1, 1, 1, 0.15];
			_ctrlButtonL ctrlSetFontHeight (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			_ctrlButtonL ctrlSetTextColor [0.95, 0.95, 0.95, 1];
			_ctrlButtonL ctrlAddEventHandler ["ButtonClick", {["changePage", [-1]] call fn_iconViewer;}];
			_ctrlButtonL ctrlCommit 0;

			private _ctrlButtonR = _display ctrlCreate ["ctrlButton", -1, _ctrlGroupMain];
			_ctrlButtonR ctrlSetPosition [
				(1 + 3 + 0.5 + 10 + 0.5) call _fnc_GRID_X,
				(_pos select 3) - ((1 + 3) call _fnc_GRID_Y),
				((3) call _fnc_GRID_X),
				((3) call _fnc_GRID_Y)
			];
			_ctrlButtonR ctrlSetFont "PuristaMedium";
			_ctrlButtonR ctrlSetText ">";
			_ctrlButtonR ctrlSetTooltip "Next page.";
			_ctrlButtonR ctrlSetBackgroundColor [1, 1, 1, 0.15];
			_ctrlButtonR ctrlSetFontHeight (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			_ctrlButtonR ctrlSetTextColor [0.95, 0.95, 0.95, 1];
			_ctrlButtonR ctrlAddEventHandler ["ButtonClick", {["changePage", [1]] call fn_iconViewer;}];
			_ctrlButtonR ctrlCommit 0;
		};

		case "filterItems": {
			private _searchText = localNamespace getVariable ["HALs_icons_searchText", ""];
			private _items = localNamespace getVariable ["HALs_gameIcons", []];

			if (_searchText != "") then {
				if (localNamespace getVariable ["HALs_icons_caseSensitive", true]) then {
					_items = _items select {(_x find _searchText) > -1};
				} else {
					_searchText = toLowerANSI _searchText;

					_items = _items select {(toLowerANSI _x find _searchText) > -1};
				};
			};

			localNamespace setVariable ["HALs_icons", _items];
			localNamespace setVariable ["HALs_icons_page", 0];
			["update", []] call fn_iconViewer;
		};

		case "changePage": {
			private _maxIcons = count (localNamespace getVariable ["HALs_icons", []]);
			private _iconsPerPage = (localNamespace getVariable ["HALs_icons_boxesX", 5]) * (localNamespace getVariable ["HALs_icons_boxesY", 5]);
			private _maxPages = ceil (_maxIcons / _iconsPerPage);

			if (_maxPages == 0) exitWith {
				localNamespace setVariable ["HALs_icons_page", 0];
				["update", []] call fn_iconViewer;
			};

			private _page = localNamespace getVariable ["HALs_icons_page", 0];
			private _amt = (_args param [0, 0, [0]]) + _page;

			if (_amt < 0) then {
				_amt = _maxPages - 1;
			} else {
				_amt = _amt % _maxPages;
			};

			localNamespace setVariable ["HALs_icons_page", _amt];
			["update", []] call fn_iconViewer;
		};

		case "update": {
			private _display = uiNamespace getVariable ["HALs_icons_idd", displayNull];
			private _ctrlGroupList = _display getVariable ["ctrlList", controlNull];
			private _ctrls = _ctrlGroupList getVariable ["ctrls", []];

			private _items = localNamespace getVariable ["HALs_icons", []];
			if (_items isEqualTo []) then {
				{_x ctrlShow false} forEach _ctrls;

				(_display getVariable ["pageInfo", controlNull]) ctrlSetStructuredText parseText format ["<t align='center'>0 | 0</t>"];
				(_display getVariable ["searchInfo", controlNull]) ctrlSetStructuredText parseText format ["<t align='right'>0 images found.</t>"];
			} else {
				private _page = localNamespace getVariable ["HALs_icons_page", 0];
				private _iconsPerPage = (localNamespace getVariable ["HALs_icons_boxesX", 5]) * (localNamespace getVariable ["HALs_icons_boxesY", 5]);
				private _maxPages = ceil (count _items / _iconsPerPage);

				private _n = count _items;
				for [{_i = 0}, {_i < _iconsPerPage}, {_i = _i + 1}] do { 
					private _ctrlBox = _ctrls select _i;

					private _idx = _page * _iconsPerPage + _i;
					if (_idx < _n) then {
						private _img = _items select _idx;
						(_ctrlBox getVariable ["ctrls", []]) params ["", "_ctrlTextTitle", "_ctrlPicture", "_ctrlButton"];

						_ctrlPicture ctrlSetText _img;
						_ctrlTextTitle ctrlSetStructuredText parseText format ["<t size='0.9' shadow='2' font='puristaMedium' align='center' >%1</t>", _img];
						_ctrlButton setVariable ["data", _img];

						_ctrlBox ctrlShow true;
					} else {
						_ctrlBox ctrlShow false;
					};
				};

				(_display getVariable ["pageInfo", controlNull]) ctrlSetStructuredText parseText format ["<t align='center'>%1 | %2</t>", _page + 1, _maxPages];
				(_display getVariable ["searchInfo", controlNull]) ctrlSetStructuredText parseText format ["<t align='right'>%1 images found.</t>", count _items];
			};
		};
	};
};

//["onload"] call fn_iconViewer;
#endif
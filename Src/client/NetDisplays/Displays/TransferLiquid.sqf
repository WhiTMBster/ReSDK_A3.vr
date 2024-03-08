// ======================================================
// Copyright (c) 2017-2024 the ReSDK_A3 project
// sdk.relicta.ru
// ======================================================



ND_INIT(TransferLiquid)
	
	//ctxParams = [callSelf(getName),LIST<getSelf(transferAmount)>]
	
	_ctg = if (isFirstLoad) then {
		_sx = 30;
		_sy = 30;
		private _ctg = [thisDisplay,WIDGETGROUP,[50 - _sx/2,50-_sy/2,_sx,_sy]] call createWidget;
		addSavedWdiget(_ctg);
		
		_back = [thisDisplay,BACKGROUND,[0,0,100,100],_ctg] call createWidget;
		_back setBackgroundColor [0.3,0.3,0.3,0.5];
		
		_closer = [thisDisplay,[0,90,100,10],_ctg] call nd_addClosingButton;
		_closer ctrlSetText "Закрыть";
		
		_ctg
	} else {
		getSavedWidgets select 0
	};
	
	call nd_cleanupData;
	
	regNDWidget(TEXT,vec4(0,0,100,20),_ctg,null);
	_curAm = ctxParams select 1;
	[lastNDWidget,format["<t align='center'>%1%2Сколько переливать? (текущ. %3)</t>",ctxParams deleteAt 0,sbr,ctxParams deleteAt 0]] call widgetSetText;
	lastNDWidget ctrlSetTooltip "Двойное нажатие по элементу списка выберет его";
	
	regNDWidget(WIDGETGROUP,vec4(0,20,100,70),_ctg,null);
	_ctgListbox = lastNDWidget;
	
	regNDWidget(LISTBOX,WIDGET_FULLSIZE,_ctgListbox,null);
	_list = lastNDWidget;
	
	_idx = -1; 
	_selIdx = -1;
	{
		_idx = _list lbAdd str _x;
		_list lbSetData [_idx,str _x];
		if (_x == _curAm) then {_selIdx = _idx};
	} foreach (ctxParams deleteAt 0);
	
	_list setvariable ["lastidx",_selIdx];
	
	_list ctrlAddEventHandler ["MouseButtonUp",{
		_postCheck = {
			params ["_list","_bt"];
			
			if (_bt != MOUSE_LEFT) exitWith {};
			_idx = lbCurSel _list;
			if (_idx < 0) exitWith {};
			if (_idx != (_list getVariable "lastidx")) exitWith {
				_list setVariable ["lastidx",_idx];
			};
			_amount = parseNumber (_list lbData _idx);
			if (_amount <= 0 || _amount >= INFINITY) exitWith {};
			[_amount] call nd_onPressButton;
			nextFrame(nd_onClose);
		};
		nextFrameParams(_postCheck,_this);
	}];
	
	if (_selIdx > -1) then {
		_list lbSetCurSel _selIdx;
	};
	
	//regNDWidget(BUTTON,vec4(0,20 + 30,100,30),_ctg,null);
	//lastNDWidget ctrlSetText "Перелить";
	
ND_END
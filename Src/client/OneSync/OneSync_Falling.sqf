// ======================================================
// Copyright (c) 2017-2024 the ReSDK_A3 project
// sdk.relicta.ru
// ======================================================


//Частота обновления службы падения
#define OS_FALLING_UPDATE_FREQUENCY 0

os_falling_handle = -1;

os_falling_isEnabled = {os_falling_handle != -1};

os_falling_startPos = vec3(0,0,0);
os_falling_isOnGround = false;

os_falling_setEnable = {
	params ["_mode"];
	
	private _oldMode = call os_falling_isEnabled;
	if (_mode == _oldMode) exitWith {
		warningformat("os::falling::setEnable() - already setted on %1",_oldMode);
	};	
	
	if (_mode) then {
		os_falling_handle = startUpdate(os_falling_onUpdate,OS_FALLING_UPDATE_FREQUENCY);
	} else {
		stopUpdate(os_falling_handle);
		os_falling_handle = -1;
	};
};

//код эквивалентен методу Mob::handle_falling()
os_falling_onUpdate = {
	_mob = player;
	/*if !isNullReference(attachedTo _mob) then {
		//проверка и переназначение на моба 
		_probGrabber = attachedTo _mob;
		if !isNull(_probGrabber getVariable "smd_face") then {
			_mob = _probGrabber;
		};
	};*/
	
	if !isNullReference(attachedTo _mob) exitWith {};
	if (isNullReference(_mob) || (abs speed _mob)==0) exitWith {};
	
	if (isTouchingGround _mob) then {
		//упал
		if !os_falling_isOnGround then {
			os_falling_isOnGround = true;
			_startFallPos = os_falling_startPos;
			if equals(_startFallPos,vec3(0,0,0)) exitWith {};
			
			_mPos = getPosATL _mob;
			_distFall = os_falling_startPos distance _mPos;
			//traceformat("falling distance %1",_distFall);
			if (_distFall < 1.2 || (abs((os_falling_startPos select 2)-(_mPos select 2)) < 1)) exitWith {};
			
			[_distFall] call os_falling_handleFall;
		};
	} else {
		//начал падать
		if os_falling_isOnGround then {
			[_mob] call os_falling_beginFalling;
		};
	};
};

os_falling_beginFalling = {
	params ["_mob"];
	os_falling_isOnGround = false;
	os_falling_startPos = getPosATL _mob;
};

os_falling_handleFall = {
	params ["_distFall"];
	
	rpcSendToServer("os_fall",vec2(player,_distFall));
};
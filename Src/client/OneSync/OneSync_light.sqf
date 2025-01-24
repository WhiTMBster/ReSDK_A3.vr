// ======================================================
// Copyright (c) 2017-2025 the ReSDK_A3 project
// sdk.relicta.ru
// ======================================================

/*
	Компонент клиентского освещения
*/

#define OS_LIGHT_UPDATE_DELAY 0.2
// влияет на частоту отправки сообщений. менять с осторожностью
#define OS_LIGHT_DATASEND_DELAY 1

os_light_handle_onupdate = -1;
os_light_lastTimeSendInfo = 0;
os_light_list_noProcessedLights = []; //vec2 (light,intensity)

os_light_setEnable = {
	params ["_mode"];
	if (_mode) then {
		os_light_lastTimeSendInfo = 0;
		os_light_handle_onupdate = startUpdate(os_light_onUpdate,OS_LIGHT_UPDATE_DELAY);
	} else {
		stopUpdate(os_light_handle_onupdate);
		os_light_handle_onupdate = -1;
	};
};

os_light_getLighting = {
	{
		(_x select 0) setLightIntensity 0;
	} count os_light_list_noProcessedLights;
	
	//значения взяты с сервера. всё должно совпадать
	private _light = round linearConversion [10,60,(getLightingAt player) select 3,0,4,true];

	{
		(_x select 0) setLightIntensity (_x select 1);
	} count os_light_list_noProcessedLights;
	_light
};

os_light_onUpdate = {
	if (hud_stealth > 0) then {
		if (tickTime >= os_light_lastTimeSendInfo) then {
			os_light_lastTimeSendInfo = tickTime + OS_LIGHT_DATASEND_DELAY;
			
			hud_light = call os_light_getLighting;
			
			rpcSendToServer("os_lt",vec2(player,hud_light));
		};
	} else {
		if (hud_light != 0) then {hud_light = 0};
	};
};

os_light_registerAsNoProcessedLight = {
	params ["_lt","_intensity"];
	os_light_list_noProcessedLights pushBackUnique [_lt,_intensity];
	_lt
};

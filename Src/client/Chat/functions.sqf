// ======================================================
// Copyright (c) 2017-2024 the ReSDK_A3 project
// sdk.relicta.ru
// ======================================================

#include "..\..\host\engine.hpp"
#include "..\WidgetSystem\widgets.hpp"
#include <..\..\host\text.hpp>
#include "helpers.hpp"
#include <Chat.hpp>

// Получает виджет, содержащий текстовое поле чата
chatGettextwidget = {chat_widgets select 2};

// Получает виджет, содержащий задний фон чата
chatgetbackgroundwidget = {chat_widgets select 1};

// Получает основную контрольную группу, содержающу виджеты чата
chatgetwidget = {chat_widgets select 0};

// Синхронизирует размеры виджетов чата
chat_syncsize = {
	private _ctg = call chatgetwidget;
	[_ctg,[0,0,chat_size_x,chat_size_y]] call widgetSetPosition;

	[getBackground,WIDGET_FULLSIZE] call widgetSetPosition;

	private _tf = getTextField;

	private _newHeight = getTextField call widgetGetTextHeight;
	(_tf call widgetGetPosition) params ["_x","_y","_w","_h"];

	private _windSize = (getBackground call widgetGetPosition) select 3;

	[_tf,[0,- _newHeight + _windSize/*0*/,(getBackground call widgetGetPosition) select 2,_newHeight]] call widgetSetPosition;
};

// Выводит текст в чат
chatprint = {
	params ["_text",["_type","default"]];

	[false] call chat_restoreVisible;

	private _struct = "";

	//removing null vals
	_text = _text regexreplace ["<null>","NULL"];

	switch (_type) do {
		//See more in https://community.bistudio.com/wiki/Structured_Text
		/*эмоуты юзеров*/case "emote" : {_struct = "<t color='#9C1AC4' font='RobotoCondensed' shadow = '1' shadowColor='#310140' size = '0.9'>" + _text + "</t>";};
		/*логи*/case "log" : {_struct = "<t color='#f73467' font='RobotoCondensedLight' shadow = '1' shadowColor='#5f079d'size = '0.9'>" + _text + "</t>"};
		/*пользовательские действия*/case "act" : {_struct = "<t color='#6BA3B0' font='RobotoCondensed' shadow = '2' size = '0.9'>" + _text + "</t>";};
		/*атаки защиты*/case "combat" : {_struct = "<t color='#FF3100' font='Zeppelin32' shadow = '2' shadowColor='#A62000' size = '1'>" + _text + "</t>";};
		/*мировая информация*/case "info" : {_struct = "<t color='#b7b7b7' font='PuristaMedium' shadow = '1' shadowColor='#292929' >" + _text + "</t>";};
		/*внутренее состояние персонажа*/case "mind" : {_struct = "<t color='#23E899' font='RobotoCondensed' shadow = '2' size = '0.9'>" + _text + "</t>";};
		/*игровые события*/case "event" : {_struct = "<t color='#7e8b36' font='Ringbear' shadow = '1' shadowColor='#3a3824'>" + _text + "</t>";};
		/*для системных сообщений*/case "system" : {_struct = "<t color='#40c8b3' font='RobotoCondensed' shadow = '1'shadowColor='#a80ab6' size = '0.87'>" + _text + "</t>";};
		case "error" : {
			private _randomTip = pick(ENM_TIPS_ERROR);
			private _randomSize = random(0.7) + 0.7;
			_struct = format ["<t color='#ad0000' font='PuristaBold' size = '%3'>%1 %2</t>",_randomTip,_text,_randomSize];};
		case "default" : {_struct = _text};
		default {
			warningformat("Unknown message type (%1) as message: " + _text ,_type);
			_struct = _text;
		};
	};

	chat_messages_data pushBack _struct;

	if ((count chat_messages_data) > chat_maxmessages) then {
		chat_messages_data deleteAt 0;
	};

	private _newtext = getChatAllText();

	private _tf = getTextField;

	[_tf,_newtext] call widgetSetText;

	private _newHeight = getTextField call widgetGetTextHeight;
	(_tf call widgetGetPosition) params ["_x","_y","_w","_h"];

	private _windSize = (getBackground call widgetGetPosition) select 3;

	[_tf,[0,- _newHeight + _windSize/*0*/,_w,_newHeight],0.15] call widgetSetPosition;

	//post events

   if (chat_isHistoryOpen) then {
	  [getHistoryField,_newtext] call widgetSetText;
	  private _histHeight = getHistoryField call widgetGetTextHeight;
	  [getHistoryField,[0,0,100,_histHeight]] call widgetSetPosition;
   };

	if (isLobbyOpen) then {
		_newtext call chat_onRenderLobby;
	};
};

// Отрисовывает чат в лобби. Копирует информацию из основного GUI чата в чат лобби
chat_onRenderLobby = {
	private _tf_lobby = lobby_widgetList select 1;
	private _wgTf_lobby = lobby_widgetList select 2;

	[_tf_lobby,_this] call widgetSetText;
	private _histHeight = _tf_lobby call widgetGetTextHeight;

	_backRef = _wgTf_lobby getVariable 'background';
	if (_histHeight < 100) then {
		//[_backRef,_backRef getVariable 'minpos'] call widgetSetPosition;
	} else {
		[_backRef,[0,0,100,_histHeight]] call widgetSetPosition;
	};

	[_tf_lobby,[0,0,100,_histHeight]] call widgetSetPosition;
	_wgTf_lobby call widgetWGScrolldown;
};

// Открывает окно истории чата
chatshowhistory = {
	_d = call dynamicDisplayOpen;

	#define HIST_SIZE_H 70

	_ctg = [_d,WIDGETGROUP,[10,10,80,HIST_SIZE_H]] call createWidget;

	_back = [_d,BACKGROUND,[0,0,100,100],_ctg] call createWidget;
	_back setBackgroundColor [0,0,0,0.8];

	_ctg = [_d,WIDGETGROUP_H,WIDGET_FULLSIZE,_ctg] call createWidget;

	_list = [_d,TEXT,[0,0,100,100],_ctg] call createWidget;

	[_list,(chat_messages_data joinString "<br/>") ] call widgetSetText;

	_newHeight = _list call widgetGetTextHeight;
	[_list,[0,0,100,_newHeight]] call widgetSetPosition;

	[_ctg] call widgetWGScrolldown;
	chat_widgets set [3,_list];

	chat_isHistoryOpen = true;

	private _closer = [_d,null,[10,HIST_SIZE_H + 10,80,4]] call createWidget_closeButton;

	_closer ctrlAddEventHandler ["MouseButtonUp",{
		chat_isHistoryOpen = false;
	}];

	[50,50] call mouseSetPosition
};

// NOT USED
chatPrintSmart = {
	params ["_txt","_ch","_src","_targ"];

	//check can see source and target
};

// Восстанавливает файдер чата
chat_resetFadeTimer = {
	chat_hideTimestamp = tickTime + chat_hideAfter;
	chat_isFullHidden = false;
};

// Восстанавливает видимость. Параметр _now в случае true восстанавливает видимость чата моментально
chat_restoreVisible = {
	params ["_now"];
	if (chat_hideValue != 0) then {

		chat_hideValue = 0;
		_ctg = call chatgetwidget;
		_ctg setFade 0;
		_ctg commit ([CHAT_ONE_STEP_FADE_SIMULATION,0] select _now);


	};
	call chat_resetFadeTimer;
};

// Обновляет чат
chat_onUpdate = {
	if (chat_isHideEnabled) then {
		if (tickTime > chat_hideTimestamp) then {
			//Чат полностью скрыт
			if (chat_isFullHidden) exitWith {};

			_ctg = call chatgetwidget;
			MOD(chat_hideValue,+0.1);

			_ctg setFade chat_hideValue;
			_ctg commit CHAT_ONE_STEP_FADE_SIMULATION;

			if (chat_hideValue > 1) then {
				chat_isFullHidden = true;
				chat_hideValue = 1;
			};
		};
	};
};

// Применяет цветовую тему к виджетам чата
chat_applyColorTheme = {
	getBackground setBackgroundColor (["chat_back"] call ct_getValue)
};

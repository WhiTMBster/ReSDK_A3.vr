// ======================================================
// Copyright (c) 2017-2024 the ReSDK_A3 project
// sdk.relicta.ru
// ======================================================

#include <..\..\..\host\GameObjects\Structures\Containers\MerchantConsole.hpp>

ND_INIT(MerchantConsole)
	private _ctg = [50,70] call nd_stdLoad;
	
	call nd_cleanupData;
	
	_dispType = ctxParams deleteAt 0;
	
	_genericSetBackEvents = {
		lastNDWidget ctrlAddEventHandler ["MouseExit",{_this select 0 setBackgroundColor [0,0,0,0]}];
		lastNDWidget ctrlAddEventHandler ["MouseEnter",{_this select 0 setBackgroundColor [.15,.15,.15,.6]}];
	};
	
	if equals(_dispType,MC_MODE_MAINMENU) exitWith {
		
		private _posmodes = [
			["Товары",MC_MAIN_TOTRADE],
			["Заказ",MC_MAIN_PRINT],
			["Внесение",MC_MAIN_CHANGEMON],
			["Статус",MC_MAIN_GETSTATUS],
			["Выключить",MC_MAIN_SWITCHMODE]
		];
		
		_sizeH = 100 / (count _posmodes);

		//smart creation
		for "_i" from 0 to (count _posmodes) - 1 do {
			(_posmodes select _i) params ["_t","_var"];
			regNDWidget(TEXT,vec4(5,_i * _sizeH,90,_sizeH),_ctg,null);
			lastNDWidget setVariable ["data",_var];
			lastNDWidget ctrlAddEventHandler ["MouseButtonUp",{
				params ["_c","_b"];
				if (["nd_merchcons_main_button",1] call input_spamProtect) exitWith {};
				_v = _c getVariable "data";
				[[MC_MODE_MAINMENU,_v]] call nd_onPressButton;
			}];
			
			call _genericSetBackEvents;

			[lastNDWidget,format["<t align='center'>%1</t>",_t]] call widgetSetText;
		};
	};
	//выключен
	if equals(_dispType,MC_MODE_DISABLED) exitWith {
		_sizeH = 100 / 5;
		_i = 4;
		regNDWidget(TEXT,vec4(5,_i * _sizeH,90,_sizeH),_ctg,null);
		call _genericSetBackEvents;
		lastNDWidget ctrlAddEventHandler ["MouseButtonUp",{
			params ["_c","_b"];
			if (["nd_merchcons_main_button",1] call input_spamProtect) exitWith {};
			[[MC_MODE_DISABLED,MC_MAIN_SWITCHMODE]] call nd_onPressButton;
		}];
		[lastNDWidget,format["<t align='center'>%1</t>","Включить"]] call widgetSetText;
		
	};
	if equals(_dispType,MC_MODE_SELECTCAT) exitWith {
		_sizeH = 10;
		_curY = 0;
		{
			_x params ["_cat","_name"];
			regNDWidget(TEXT,vec4(5,_curY,90,_sizeH),_ctg,null);
			lastNDWidget setVariable ["data",_cat];
			call _genericSetBackEvents;
			[lastNDWidget,format["<t align='center'>%1</t>",_name]] call widgetSetText;
			lastNDWidget ctrlAddEventHandler ["MouseButtonUp",{
				params ["_c","_b"];
				_cat = _c getVariable "data";
				[[MC_MODE_SELECTCAT,_cat]] call nd_onPressButton;
			}];
			
			modvar(_curY) + _sizeH;
		} foreach ctxParams;
		
		//debug
		/*for "_i" from 1 to 50 do {
			regNDWidget(TEXT,vec4(5,_curY,90,_sizeH),_ctg,null);
			call _genericSetBackEvents;
			[lastNDWidget,format["<t align='center'>BT: %1</t>",_i]] call widgetSetText;
			modvar(_curY) + _sizeH;
		};*/
		
		regNDWidget(TEXT,vec4(5,_curY,90,_sizeH),_ctg,null);
		call _genericSetBackEvents;
		lastNDWidget ctrlAddEventHandler ["MouseButtonUp",{
			params ["_c","_b"];
			[[MC_MODE_SELECTCAT,MC_GENERIC_BACK]] call nd_onPressButton;
		}];
		[lastNDWidget,format["<t align='center'>%1%1%1НАЗАД%2%2%2</t>",slt,sgt]] call widgetSetText;
	};
	if equals(_dispType,MC_MODE_CATLIST) exitWith {
		regNDWidget(WIDGETGROUP_H,vec4(0,8,100,92),_ctg,null);
		_inctg = lastNDWidget;
		
		regNDWidget(TEXT,vec4(5,0,90,8),_ctg,null);
		call _genericSetBackEvents;
		lastNDWidget ctrlAddEventHandler ["MouseButtonUp",{
			params ["_c","_b"];
			[[MC_MODE_CATLIST,MC_GENERIC_BACK]] call nd_onPressButton;
		}];
		[lastNDWidget,format["<t align='center'>%1%1%1НАЗАД%2%2%2</t>",slt,sgt]] call widgetSetText;
		
		_sizeH = 8;
		_c_posx = 5+90-50+5;
		_c_sizex = 90-50;
		//smart creation
		for "_i" from 0 to (count ctxParams) - 1 do {
			(ctxParams select _i) params ["_name","_price","_count",["_amounted",0]];
			regNDWidget(TEXT,vec4(5,_i * _sizeH,_c_sizex,_sizeH),_inctg,null);
			lastNDWidget setVariable ["data",_i];
			/*lastNDWidget ctrlAddEventHandler ["MouseButtonUp",{
				params ["_c","_b"];
				//if (["nd_merchcons_main_button",1] call input_spamProtect) exitWith {};
				_v = _c getVariable "data";
				[[MC_MODE_CATLIST,_v]] call nd_onPressButton;
			}];*/
			
			call _genericSetBackEvents;

			[lastNDWidget,format["<t align='center'>%1 - %2 зв. %3</t>",_name,_price,ifcheck(_amounted>0,format vec3("[СКЛ:%1/ЗАК:%2]",_count,_amounted),format vec2("[СКЛ:%1]",_count))]] call widgetSetText;
			
			
			regNDWidget(TEXT,vec4(_c_posx,_i * _sizeH,_c_sizex/2,_sizeH),_inctg,null);
			lastNDWidget setVariable ["data",_i];
			call _genericSetBackEvents;
			[lastNDWidget,format["<t align='center'>Меньше</t>"]] call widgetSetText;
			if (_amounted > 0) then {
				lastNDWidget ctrlAddEventHandler ["MouseButtonUp",{
					params ["_c","_b"];
					[[MC_MODE_CATLIST,MC_CATLIST_DEC,_c getVariable "data"]] call nd_onPressButton;
				}];
			} else {
				[lastNDWidget,format["<t align='center' color='#A30000'>Меньше</t>"]] call widgetSetText;
			};

			regNDWidget(TEXT,vec4(_c_posx+_c_sizex/2,_i * _sizeH,_c_sizex/2,_sizeH),_inctg,null);
			lastNDWidget setVariable ["data",_i];
			call _genericSetBackEvents;
			[lastNDWidget,format["<t align='center'>Больше</t>"]] call widgetSetText;
			if (_count > 0 && _amounted < _count) then {
				lastNDWidget ctrlAddEventHandler ["MouseButtonUp",{
					params ["_c","_b"];
					[[MC_MODE_CATLIST,MC_CATLIST_INC,_c getVariable "data"]] call nd_onPressButton;
				}];
			} else {
				[lastNDWidget,format["<t align='center' color='#A30000'>Больше</t>"]] call widgetSetText;
			};
			
		};
	};
	if equals(_dispType,MC_MODE_PRINT) exitWith {
		regNDWidget(WIDGETGROUP_H,vec4(5,0,90,60),_ctg,null);
		_ctgIn = lastNDWidget;
		_priceAll = ctxParams deleteAt 0;
		if (_priceAll == -999) then {
			regNDWidget(TEXT,WIDGET_FULLSIZE,_ctgIn,null);
			[lastNDWidget,"<t size='1.6' align='center'>Ничего не заказано</t>"] call widgetSetText;
		} else {
			_txt = "<t size='1.4' align='center'>Заказ сформирован:</t><t size='1.2'>";
			{
				_x params ["_name","_count"];
				modvar(_txt) + sbr + format["%1 - %2",_name,[_count,["штука","штуки","штук"],true] call toNumeralString];
			} foreach ctxParams;
			
			modvar(_txt)+"</t>"+sbr+sbr+format["<t size='1.4'>Итоговая стоимость: %1</t>",[_priceAll,["звяк","звяка","звяков"],true] call toNumeralString];
			
			regNDWidget(TEXT,WIDGET_FULLSIZE,_ctgIn,null);
			[lastNDWidget,_txt] call widgetSetText;
			_ht = lastNDWidget call widgetGetTextHeight;
			[lastNDWidget,[0,0,100,_ht]] call widgetSetPosition;
		};
		
		
		_tml = [
			["<t align='center' color='#388F00'>ЗАКАЗАТЬ</t>",MC_PRINT_DO],
			["<t align='center' color='#C8CF13'>ОЧИСТИТЬ</t>",MC_PRINT_CLEAR],
			[format["<t align='center'>%1%1%1НАЗАД%2%2%2</t>",slt,sgt],MC_GENERIC_BACK]
		];
		_noReq = _priceAll == -999;
		for "_i" from 1 to 3 do {
			if (_i < 3 && _noReq) then {continue};
			
			regNDWidget(TEXT,vec4(5,60 + (_i * 10),90,10),_ctg,null);
			[lastNDWidget,_tml select (_i-1) select 0] call widgetSetText;
			call _genericSetBackEvents;
			lastNDWidget setVariable ["data",_tml select (_i-1) select 1];
			lastNDWidget ctrlAddEventHandler ["MouseButtonUp",{
				params ["_c","_b"];
				[[MC_MODE_PRINT,_c getVariable "data"]] call nd_onPressButton;
			}];
		};
	};
	if equals(_dispType,MC_MODE_GETSTATUS) exitWith {
		regNDWidget(TEXT,vec4(0,0,100,70),_ctg,null);
		
		_txt = "<t align='center' size='1.3'>Информация</t><t size='1.2'>";
		_mon = ctxParams deleteAt 0;
		modvar(_txt) +sbr+ format["Средства: %1",[_mon,["звяк","звяка","звяков"],true]call toNumeralString];		
		
		modvar(_txt) + sbr+sbr+sbr+ (ctxParams deleteAt 0);
		
		modvar(_txt)+"</t>";
		[lastNDWidget,_txt] call widgetSetText;
		
		regNDWidget(TEXT,vec4(5,75,90,20),_ctg,null);
		call _genericSetBackEvents;
		lastNDWidget ctrlAddEventHandler ["MouseButtonUp",{
			params ["_c","_b"];
			[[MC_MODE_GETSTATUS,MC_GENERIC_BACK]] call nd_onPressButton;
		}];
		[lastNDWidget,format["<t align='center'>%1%1%1НАЗАД%2%2%2</t>",slt,sgt]] call widgetSetText;
	};
	
ND_END
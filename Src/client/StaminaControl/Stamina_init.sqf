// ======================================================
// Copyright (c) 2017-2024 the ReSDK_A3 project
// sdk.relicta.ru
// ======================================================

#include <..\WidgetSystem\widgets.hpp>
#include <..\..\host\engine.hpp>
#include <..\..\host\text.hpp>
#include <Stamina.hpp>

#include "Stamina.sqf"

stamina_widgets = [];
stamina_mainHandle = -1;
stamina_heartbeatHandle = -1;
stamina_lastVal = -1;
stamina_lastFullTime = -1; //отметка времени последнего полного заполнения стамины

call stamina_init;


#ifdef stamina_debug

	ison = true;
	_pfh = {
		_isInc = false;
		
		_precentVal = call stamina_convCurToPrec;
		//logformat("in precented %1",_precentVal);
		
		if (ison) then {
			INC(_precentVal);
			INC(cd_stamina_cur);
			if (_precentVal >= 100) then {ison = false};
		} else {
			DEC(_precentVal);
			DEC(cd_stamina_cur);
			if (_precentVal <= 0) then {ison = true};
		};
		
		[_precentVal] call stamina_setValue;
	};

	startUpdate(_pfh,1);
	
#endif
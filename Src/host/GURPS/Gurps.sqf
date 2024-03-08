// ======================================================
// Copyright (c) 2017-2024 the ReSDK_A3 project
// sdk.relicta.ru
// ======================================================

#include "..\engine.hpp"
#include "..\oop.hpp"
#include "..\text.hpp"
#include <..\CombatSystem\CombatSystem.hpp>
#include "gurps.hpp"

#include "Gurps_init.sqf"
//#define log_onEncumbranceRecalculate

gurps_throwdices = {
	private _amount = 0;
	for "_i" from 1 to _this do {
		MOD(_amount, + D6);
	};
	_amount
};

gurps_rollstd = {
	private _skill = _this;
	private _d = _3D6;
    #define AMOUNT _skill - _d
    #define RET(type) [AMOUNT,type,_d]

    // Success

    if (_d in [3,4]) exitWith {RET(DICE_CRITSUCCESS)};

    if ((_d == 5 && _skill >= 15) || (_d == 6 && _skill >= 16)) exitWith {RET(DICE_CRITSUCCESS)};

    if (_d <= _skill) exitWith {RET(DICE_SUCCESS)};

    // Failure

    if (_d == 18) exitWith {RET(DICE_CRITFAIL)};

    if (_d == 17) exitWith {
        if (_skill <= 15) exitWith {RET(DICE_CRITFAIL)};
        RET(DICE_FAIL);
    };

    if (_d - _skill >= 10) exitWith {RET(DICE_CRITFAIL)}; //было _d - _skill >= 10. Поправил из ментора

    if (_d > _skill) exitWith {RET(DICE_FAIL)};

    errorformat("No return. skill:%1; dices:%2",_skill arg _d);
};

gurps_rollnocrit = {
	private _skill = _this;
	private _d = _3D6;
	#define AMOUNT _skill - _d
	#define RET(type) [AMOUNT,type,_d]

	// Success
	if (_d <= _skill) exitWith {RET(DICE_SUCCESS)};

	// Failure
	if (_d > _skill) exitWith {RET(DICE_FAIL)};

	errorformat("No return. skill:%1; dices:%2",_skill arg _d);
};

//вычисляет силу удара с руки
gurps_getDamageByStrength = {
	private _st = _this;

	//TODO give byref values

/*	if (_st in [1,2]) exitWith {[1,-6,1,-5]};
    if (_st in [3,4]) exitWith {[1,-5,1,-4]};
    if (_st in [5,6]) exitWith {[1,-4,1,-3]};
    if (_st in [7,8]) exitWith {[1,-3,1,-2]};

    if (_st == 9) exitWith {[1,-2,1,-1]};
    if (_st == 10) exitWith {[1,-2,1,0]};
    if (_st == 11) exitWith {[1,-1,1,1]};
    if (_st == 12) exitWith {[1,-1,1,2]};
    if (_st == 13) exitWith {[1,0,2,-1]};
    if (_st == 14) exitWith {[1,0,2,0]};
    if (_st == 15) exitWith {[1,1,2,1]};
    if (_st == 16) exitWith {[1,1,2,2]};
    if (_st == 17) exitWith {[1,2,3,-1]};
    if (_st == 18) exitWith {[1,2,3,0]};
    if (_st == 19) exitWith {[2,-1,3,1]};
    if (_st == 20) exitWith {[2,-1,3,2]};
    if (_st == 21) exitWith {[2,0,4,-1]};
    if (_st == 22) exitWith {[2,0,4,0]};
    if (_st == 23) exitWith {[2,1,4,1]};
    if (_st == 24) exitWith {[2,1,4,2]};
    if (_st == 25) exitWith {[2,2,5,-1]};
    if (_st == 26) exitWith {[2,2,5,0]};

    if (_st in [27,28]) exitWith {[3,-1,5,1]};
    if (_st in [29,30]) exitWith {[3,0,5,2]};
    if (_st in [31,32]) exitWith {[3,1,6,-1]};
    if (_st in [33,34]) exitWith {[3,2,6,0]};
    if (_st in [35,36]) exitWith {[4,-1,6,1]};
    if (_st in [37,38]) exitWith {[4,0,6,2]};

    if (_st == 39) exitWith {[4,1,7,-1]};

    if (_st >= 40 && _st < 45) exitWith {[4,1,7,-1]};
    if (_st >= 45 && _st < 50) exitWith {[5,0,7,1]};
    if (_st >= 50 && _st < 55) exitWith {[5,2,8,-1]};
    if (_st >= 55 && _st < 60) exitWith {[6,0,8,1]};
    if (_st >= 60 && _st < 65) exitWith {[7,-1,9,0]};
    if (_st >= 65 && _st < 70) exitWith {[7,1,9,2]};
    if (_st >= 70 && _st < 75) exitWith {[8,0,10,0]};
    if (_st >= 75 && _st < 80) exitWith {[8,2,10,2]};
    if (_st >= 80 && _st < 85) exitWith {[9,0,11,0]};
    if (_st >= 85 && _st < 90) exitWith {[9,2,11,2]};
    if (_st >= 90 && _st < 95) exitWith {[10,0,12,0]};
    if (_st >= 95 && _st < 100) exitWith {[10,2,12,2]};
    if (_st == 100) exitWith {[11,0,13,0]};*/


	if (_st > 100) then {
    	private _o_st = floor((_st - 100) / 10);
    	[(11 + _o_st),0,(13 + _o_st),0]
    } else {
		private _o_st = obj_gurps_combat getVariable (str _st);
		if (isNullVar(_o_st)) exitWith {
			errorformat("gurps::calucateCharDamage() - Cant find value for st %1. Returns by default vec4<zero>",_st);
			[0,0,0,0]
		};

		_o_st
	};
};

//Высчитывает скорость из дистанции по системе
gurps_getFallingSpeedByDistance = {
	params ["_dist"];
	/*
	Иначе, вы можете рассчитать скорость в ярдах в секунду по формуле:
		квадратный корень из (21,4 × g × Высота падения в ярдах), где
		g – местная гравитация в G (g = 1 на Земле).

		Округлите до ближайшего целого числа.
	*/
	round sqrt(21.4 * 1 * _dist)
};

//расчёт роста
gurps_calculateCharHeight = {
	private this = _this;
	private _st = callSelf(getST);

	private _h = call {
		if(_st <= 6) exitWith { floor(132 + random(157-132))};
		if(_st == 7) exitWith { floor(140 + random(165-140))};
		if(_st == 8) exitWith { floor(147 + random(172-147))};
		if(_st == 9) exitWith { floor(155 + random(180-155))};
		if(_st == 10) exitWith { floor(160 + random(185-160))};
		if(_st == 11) exitWith { floor(165 + random(190-165))};
		if(_st == 12) exitWith { floor(172 + random(198-172))};
		if(_st == 13) exitWith { floor(180 + random(205-180))};
		//st >= 14...
		floor(188 + random(210-188))
	};

	setSelf(height,_h);

};

//расчёт веса (Выполняться должен только после создания всех нужных частей тела)
gurps_calculateCharWeight = {
	private this = _this;
	private _st = callSelf(getST);

	private _w = call {
		if(_st <= 6) exitWith { floor(27 + random(54-27))};
	    if(_st == 7) exitWith { floor(34 + random(61-34))};
	    if(_st == 8) exitWith { floor(41 + random(68-41))};
	    if(_st == 9) exitWith { floor(48 + random(75-48))};
	    if(_st == 10) exitWith { floor(52 + random(79-52))};
	    if(_st == 11) exitWith { floor(57 + random(88-57))};
	    if(_st == 12) exitWith { floor(64 + random(100-64))};
	    if(_st == 13) exitWith { floor(70 + random(111-70))};
	    //if(_st >= 14) exitWith {
			floor(77 + random(122-77))
		//};}
	};

	setSelf(weight,_w);

	/*
	100%, то
		вес головы составит 7%;

		туловища - 43%;
		плеча - 3%;

		(19)
		бедра - 12%;
		голени - 5%;
		стопы - 2%;

		(3)
		предплечья - 2% и
		кисти 1%.
	*/
	#define initWPart(part,val) setVar(_selections get part,weight,val)
	#define wToPrec(val) _w * (val) / 100

	private _selections = getSelf(bodyParts); //NOT SELECTIONS
	private _handWeight = wToPrec(3);
	private _headWeight = wToPrec(7 - 2.1);
	private _legWeight = wToPrec(19);

	initWPart(BP_INDEX_ARM_R,_handWeight);
	initWPart(BP_INDEX_ARM_L,_handWeight);

	initWPart(BP_INDEX_HEAD,_headWeight);

	initWPart(BP_INDEX_LEG_R,_legWeight);
	initWPart(BP_INDEX_LEG_L,_legWeight);

	//расчёт органов
	#define initWOrg(part,val) setVar(_borgans get part,weight,val)
	/*
		heart - 0.42
		liver - 2.4
		Kidney(x2) - 0.35 / 2
		guts - 2.9
		stomach - ? (prob 2.9 - 2)
		Lungs - 1.4

		----------
		brain - 2.1
		//eyes - 0.04

	*/
	private _bodyLeft = 49;
	private _borgans = getVar(_selections get BP_INDEX_TORSO,organs);

	MOD(_bodyLeft,-0.42);
	private _orgWeight = wToPrec(0.42);
	initWOrg(BO_INDEX_HEART,_orgWeight);

	#define __ex_ini(part,wei) MOD(_bodyLeft,- wei); _orgWeight = wToPrec(wei); initWOrg(part,_orgWeight)

	__ex_ini(BO_INDEX_LIVER,2.4);
	__ex_ini(BO_INDEX_KIDNEY_L,0.175);
	__ex_ini(BO_INDEX_KIDNEY_R,0.175);
	__ex_ini(BO_INDEX_GUTS,2);
	__ex_ini(BO_INDEX_STOMACH,0.9);
	__ex_ini(BO_INDEX_LUNGS,1.4);
	setVar(getVar(_selections get BP_INDEX_HEAD,brain),weight,wToPrec(2.1));

	//_full = (_handWeight * 2) + (_legWeight * 2) + _headWeight + (wToPrec(49));
	//errorformat("partsw - %1; Real %2 (mob %3). Body left %4",_full arg _w arg getSelf(owner) arg (_bodyLeft));

};

gurps_getEncumbrance = {
	private _basicLift = getVar(_this,bl) select 0; // сколько кг может поднять над рукой
	private _encumbrance = getVar(_this,encumbrance); //в кг
	if (_encumbrance <= _basicLift) exitWith {0};
	if (_encumbrance <= (_basicLift * 2)) exitWith {1}; //move*0.8, dodge-1
	if (_encumbrance <= (_basicLift * 3)) exitWith {2}; //move*0.6,dodge-3
	if (_encumbrance <= (_basicLift * 6)) exitWith {3}; //move*0.4,dodge-3
	//if (_encumbrance <= (_basicLift * 10)) exitWith {4}; //move*0.2,dodge-4
	//errorformat("Cant find encumbrance level for %1. bl is %2",_encumbrance arg _basicLift);
	4
};

gurps_recalcuateEncumbrance = {
	private this = _this;

	//private _oldEncum = getSelf(curEncumbranceLevel);
	#ifdef log_onEncumbranceRecalculate
		warningformat("ItemList are updated - %1",getSelf(slots));
	#endif
	private _encumbrance = 0;
	{
		if (!isNullObject(_y)) then {
			MOD(_encumbrance, + callFunc(_y,getWeight));
		};
	} foreach getSelf(slots);
	#ifdef log_onEncumbranceRecalculate
		warningformat("encumbrance recalculated - %1",_encumbrance);
	#endif

	setSelf(encumbrance,_encumbrance);

	private _newEncum = this call gurps_getEncumbrance;
	#ifdef log_onEncumbranceRecalculate
		warningformat("new encumLevel - %1",_newEncum);
	#endif
	setSelf(curEncumbranceLevel,_newEncum);

	callSelfParams(fastSendInfo,"hud_encumb" arg _newEncum);
};

gurps_initSkills = {
	params ['this',"_st","_iq","_dx","_ht"];

	#define skill_alloc(basicval) basicval

	callSelfParams(initST,skill_alloc(_st));
	callSelfParams(initIQ,skill_alloc(_iq));
	callSelfParams(initDX,skill_alloc(_dx));
	callSelfParams(initHT,skill_alloc(_ht));

	//setSelf(dmg,callSelf(getST) call gurps_getDamageByStrength);

	/*//базовый груз сразу в киллограммовой системе
	private _bl = _st * _st / 10;
	if (_bl > 5) then {
		_bl = round _bl;
	};
	setSelf(bl,[_bl arg 0]);

	setSelf(hp,skill_alloc(_st));
	setSelf(will,skill_alloc(_iq));
	setSelf(per,skill_alloc(_iq));
	setSelf(fp,skill_alloc(_ht));
	private _bs = (_ht + _dx) / 4;
	setSelf(bs,[_bs arg 0]);

	setSelf(move,[floor(_bs) arg 0]);
	setSelf(animCoef,_bs / 4);//подогнанные значения

	setSelf(rta,pow(5,0.75)/pow(_bs,0.75)); //real time action
	*/

	//TODO DONE THIS
	this call gurps_calculateCharHeight;
	this call gurps_calculateCharWeight;
};

gurps_initPeacefullSkills = {
	#define leadToZero(value) (value) max 0
	OBSOLETE(gurps::initPeacefullSkills);

	private _iq = getVar(_this,iq) select SKILL_BASE;
	private _dx = getVar(_this,dx) select SKILL_BASE;
	//shroomery //алхимия по-умолчанию нет.
	setVar(_this,skill_alchemy,leadToZero(_iq - 6)); //химия. ИЛИ (алхимия)грибничество - 3
	setVar(_this,skill_engineering,leadToZero(_iq - 5)); //крафт инженерки (общее)
	setVar(_this,skill_repair,leadToZero(_iq - 5)); //или инженерия -3
	setVar(_this,skill_theft,leadToZero(_dx - 5)); //или iq -5
	setVar(_this,skill_stealth,leadToZero(_dx - 6)); //скрытность
	setVar(_this,skill_agility,leadToZero(_dx - 6)); //карабканье
};

//модификатор дистанции для стрельбы
gurps_getDistanceModificator = {
	params [["_dist",0],["_speed",0]];

	//километры в час => мили в час
	if (_speed > 0) then {
		//В этом случае добавьте скорость в ярдах/с (2 мили/час = 1 ярд/с) к расстоянию
		_speed = (_speed / 1.609 / 2);
		modvar(_dist) + _speed;
	};

	if (_dist <=2) exitWith {0};
	if (_dist <=3) exitWith {-1};
	if (_dist <=5) exitWith {-2};
	if (_dist <=7) exitWith {-3};
	if (_dist <=10) exitWith {-4};
	if (_dist <=15) exitWith {-5};
	if (_dist <=20) exitWith {-6};
	if (_dist <=30) exitWith {-7};
	if (_dist <=50) exitWith {-8};
	if (_dist <=70) exitWith {-9};
	if (_dist <=100) exitWith {-10};
	if (_dist <=150) exitWith {-11};
	if (_dist <=200) exitWith {-12};
	if (_dist <=300) exitWith {-13};
	if (_dist <=500) exitWith {-14};
	if (_dist <=700) exitWith {-15};
	if (_dist <=1000) exitWith {-16};
	if (_dist <=1500) exitWith {-17};
	if (_dist <=2000) exitWith {-18};
	if (_dist <=3000) exitWith {-19};
	if (_dist <=5000) exitWith {-20};
	if (_dist <=7000) exitWith {-21};
	if (_dist <=10000) exitWith {-22};
	if (_dist <=15000) exitWith {-23};
	if (_dist <=20000) exitWith {-24};
	if (_dist <=30000) exitWith {-25};
	if (_dist <=50000) exitWith {-26};
	if (_dist <=70000) exitWith {-27};
	if (_dist <=100000) exitWith {-28};
	if (_dist <=150000) exitWith {-29};
	if (_dist <=200000) exitWith {-30};
	if (_dist <=300000) exitWith {-31};
	if (_dist <=500000) exitWith {-32};
	if (_dist <=700000) exitWith {-33};
	-34
};

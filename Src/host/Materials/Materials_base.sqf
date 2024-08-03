// ======================================================
// Copyright (c) 2017-2024 the ReSDK_A3 project
// sdk.relicta.ru
// ======================================================

#include "Materials.h"
#include "..\Networking\Network.hpp"

class(MatBase) attribute(staticInit)
	
	func(staticInit)
	{
		params ["_thisClass","_thisType"];
		if (_thisClass!="MatBase") exitWith {};

		private _mdata = createHashMap;
		{
			private _class = _x;
			
			private _obj = instantiate(_class);
			private _objClass = callFunc(_obj,getClassName);

			mat_map_all set [tolower _objClass,_obj];

			callFuncParams(_obj,applyStepDataForGlobalVar,_mdata);
		} foreach getAllObjectsTypeOfStr(_thisClass);

		netSetGlobal(materials_map_stepData,_mdata);
	};
	
	var(name,"Материал");
	var(color,"ffffff");
	var(stepSound,["cr_step" arg 2]);

	var(damageEffect,0);
	var(damageSounds,[]);

	var(resistSounds,[]);

	func(applyStepDataForGlobalVar)
	{
		objParams_1(_hm);

		if (callSelf(getStepDataKey) in _hm) exitWith {
			setLastError("Duplicated step config for " + callSelf(getClassName));
		};

		_hm set [callSelf(getStepDataKey),
			[
				getSelf(stepSound)
			]
		]
	};

	getter_func(getStepDataKey,getSelf(damageEffect));
	

	getter_func(getDamageEffect,getSelf(damageEffect));
	func(getDamageSound)
	{
		objParams();
		private _list = getSelf(damageSounds);
		if not_equalTypes(_list,[]) exitWith {
			if not_equalTypes(_list,"") exitWith {""};
			_list;
		};
		if (count _list == 0) exitWith {""};
		pick _list
	};

	var(pullSounds,[]);
	func(getPullSound)
	{
		objParams();
		private _ps = getSelf(pullSounds);
		if (count _ps == 0) exitWith {""};
		pick _ps
	};

	func(getResistSound)
	{
		objParams();
		private _list = getSelf(resistSounds);
		if not_equalTypes(_list,[]) exitWith {
			if not_equalTypes(_list,"") exitWith {""};
			_list;
		};
		if (count _list == 0) exitWith {""};
		pick _list
	};
	
	func(getStepSoundNetworkData)
	{
		objParams();
		getSelf(stepSound)
	};

	//коэффициент для вычисления хп с помощью веса объекта
	getterconst_func(getWeightCoefForCalcHP,1);

	getter_func(getDamageCoefOnAttack,1);

	//------------------------------------------------
	//модификатор урона огнем (1к-1) и базовая вероятность распространения
	getterconst_func(getFireDamageModifier,1); //no mod
	getterconst_func(getFireDamageIgniteProb,0);//basic prob 0-100

	//------ destruction ------
	//типы, выпадаемые при разрушении
	func(getDestructionTypes)
	{
		objParams();
		[];
	};

endclass

class(MatStone) extends(MatBase)

	var(name,"Камень");
	var(color,"3D3833");
	var(stepSound,["stone" arg 6]);

	var(damageEffect,SLIGHT_DAM_STONE);
	var(damageSounds,["damage\stone_1" arg "damage\stone_2" arg "damage\stone_3"]);
	var(resistSounds,["damage\block_stone_1" arg "damage\block_stone_2"]);
	
	var(pullSounds,["pull\stone1" arg "pull\stone2" arg "pull\stone3"]);

	getterconst_func(getWeightCoefForCalcHP,150);

	getter_func(getDamageCoefOnAttack,0.2);

	getter_func(getDestructionTypes,["StoneDebris1" arg "StoneDebris2" arg "StoneDebris3" arg "StoneDebris4" arg "StoneDebris5"]);

endclass

class(MatBeton) extends(MatStone)

	var(name,"Бетон");
	var(damageEffect,SLIGHT_DAM_BETON);
	var(color,"8C8C8C");
	var(stepSound,["concrete" arg 5]);

	var(resistSounds,["damage\block_beton_1" arg "damage\block_beton_2" arg "damage\block_beton_3"]);
	
	var(pullSounds,["pull\stone1" arg "pull\stone2" arg "pull\stone3"]);

	getterconst_func(getWeightCoefForCalcHP,120);

	getter_func(getDamageCoefOnAttack,0.3);

	getter_func(getDestructionTypes,["ConcreteDebris1" arg "ConcreteDebris2" arg "ConcreteDebris3" arg "ConcreteDebris4"]);

endclass

class(MatDirt) extends(MatBase)
	var(name,"Земля");
	var(color,"704402");
	var(stepSound,["mud" arg 5]);
	var(damageEffect,SLIGHT_DAM_DIRT);
	var(damageSounds,["damage\cloth_1" arg "damage\cloth_2" arg "damage\cloth_3"]);
	var(pullSounds,["pull\stone1" arg "pull\stone2" arg "pull\stone3"]);
	getterconst_func(getWeightCoefForCalcHP,50);

	getter_func(getDamageCoefOnAttack,0.6);

	getterconst_func(getFireDamageIgniteProb,2);

	getter_func(getDestructionTypes,["DirtDebris1" arg "DirtDebris2"]);
endclass

class(MatWood) extends(MatBase)

	var(name,"Дерево");
	var(color,"362D25");
	var(stepSound,["wood" arg 8]);

	var(damageEffect,SLIGHT_DAM_WOOD);
	var(damageSounds,["damage\wood_1" arg "damage\wood_2" arg "damage\wood_3"]);
	var(resistSounds,["damage\block_wood_1" arg "damage\block_wood_2" arg "damage\block_wood_3"]);
	var(pullSounds,["pull\wood1" arg "pull\wood2" arg "pull\wood3" arg "pull\wood4" arg "pull\wood5" arg "pull\wood6"]);
	getterconst_func(getWeightCoefForCalcHP,50);

	getter_func(getDamageCoefOnAttack,1.3);

	getterconst_func(getFireDamageModifier,1.5);
	getterconst_func(getFireDamageIgniteProb,70);

	getter_func(getDestructionTypes,["WoodenDebris1" arg "WoodenDebris2" arg "WoodenDebris3" arg "WoodenDebris4" arg "WoodenDebris5" arg "WoodenDebris6" arg "WoodenDebris7"]);

endclass

class(MatMetal) extends(MatBase)

	var(name,"Металл");
	var(color,"822B14");
	var(stepSound,["baremetal" arg 4]);

	var(damageEffect,SLIGHT_DAM_METAL);
	var(damageSounds,["damage\metal_1" arg "damage\metal_2"]);
	var(resistSounds,["damage\block_metal_1" arg "damage\block_metal_2"]);
	var(pullSounds,["pull\wood7"]);
	getterconst_func(getWeightCoefForCalcHP,100);

	getter_func(getDamageCoefOnAttack,0.7);

	getter_func(getDestructionTypes,["MetalDebris1" arg "MetalDebris2"]);

endclass


class(MatGlass) extends(MatBase)

	var(name,"Стекло");
	var(color,"147182");
	var(stepSound,["glass" arg 1]);
	var(damageEffect,SLIGHT_DAM_GLASS);
	var(damageSounds,["damage\glass_1" arg "damage\glass_2" arg "damage\glass_3"]);
	var(resistSounds,["steps\glass1"]);
	var(pullSounds,["pull\glass1" arg "pull\glass2" arg "pull\glass3" arg "pull\glass4" arg "pull\glass5" arg "pull\glass6"]);
	getterconst_func(getWeightCoefForCalcHP,200);

	getter_func(getDamageCoefOnAttack,3.2);

	getter_func(getDestructionTypes,[]);
endclass

class(MatCloth) extends(MatBase)

	var(name,"Ткань");
	var(color,"5CAD8A");
	var(damageEffect,SLIGHT_DAM_CLOTH);
	var(damageSounds,["damage\cloth_1" arg "damage\cloth_2" arg "damage\cloth_3"]);
	var(stepSound,["capet" arg 7]);
	var(pullSounds,["updown\armorUp"]);
	getterconst_func(getWeightCoefForCalcHP,20);

	getter_func(getDamageCoefOnAttack,1.5);

	getterconst_func(getFireDamageModifier,2.5);
	getterconst_func(getFireDamageIgniteProb,80);

	getter_func(getDestructionTypes,["ClothDebris1" arg "ClothDebris2"]);
endclass

class(MatPaper) extends(MatBase)

	var(name,"Бумага");
	var(color,"E8E5B0");
	var(stepSound,["paper" arg 1]);
	var(damageEffect,SLIGHT_DAM_PAPER);
	var(damageSounds,["damage\paper_1" arg "damage\paper_2" arg "damage\paper_3"]);
	var(pullSounds,["updown\paper_up1" arg "updown\paper_up2"]);
	getterconst_func(getWeightCoefForCalcHP,10);


	getter_func(getDamageCoefOnAttack,4);

	getterconst_func(getFireDamageModifier,3);
	getterconst_func(getFireDamageIgniteProb,90);

	getter_func(getDestructionTypes,[]);
endclass

class(MatFlesh) extends(MatBase)

	var(name,"Плоть");
	var(color,"B04A6A");
	var(stepSound,["flesh" arg 2]);
	var(damageEffect,SLIGHT_DAM_FLESH);
	var(damageSounds,["damage\flesh_1" arg "damage\flesh_2" arg "damage\flesh_3"]);
	var(pullSounds,["pull\organic1"]);
	getterconst_func(getWeightCoefForCalcHP,30);

	getter_func(getDamageCoefOnAttack,1.5);

	getterconst_func(getFireDamageModifier,1.1);
	getterconst_func(getFireDamageIgniteProb,50);

	getter_func(getDestructionTypes,["FleshDebris1"]);
endclass

class(MatOrganic) extends(MatBase)

	var(name,"Органика");
	var(color,"85497A");
	var(stepSound,["org" arg 4]);
	var(damageEffect,SLIGHT_DAM_ORGANIC);
	var(damageSounds,["damage\organic_1" arg "damage\organic_2"]);
	var(pullSounds,["pull\organic1"]);
	getterconst_func(getWeightCoefForCalcHP,25);

	getter_func(getDamageCoefOnAttack,2);

	getterconst_func(getFireDamageModifier,1.2);
	getterconst_func(getFireDamageIgniteProb,65);

	getter_func(getDestructionTypes,["OrganicDebris1"]);

endclass

class(MatSynt) extends(MatBase)
	//это пластик и прочая хрень
	var(name,"Синтетика");
	var(color,"6038A6");
	var(stepSound,["cr_step" arg 2]);
	var(damageEffect,SLIGHT_DAM_SYNT);
	var(damageSounds,["damage\synt_1" arg "damage\synt_2" arg "damage\synt_3"]);
	var(pullSounds,["pull\synt1" arg "pull\synt2" arg "pull\synt3" arg "pull\synt4" arg "pull\synt5" arg "pull\synt6"]);
	getterconst_func(getWeightCoefForCalcHP,50);

	getter_func(getDamageCoefOnAttack,1.2);

	getterconst_func(getFireDamageModifier,1.4);
	getterconst_func(getFireDamageIgniteProb,75);

	getter_func(getDestructionTypes,["SyntDebris1"]);
endclass



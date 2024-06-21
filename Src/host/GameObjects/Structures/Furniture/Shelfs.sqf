// ======================================================
// Copyright (c) 2017-2024 the ReSDK_A3 project
// sdk.relicta.ru
// ======================================================

#include <..\..\..\engine.hpp>
#include <..\..\..\oop.hpp>
#include <..\..\GameConstants.hpp>

// Стеллажи
editor_attribute("InterfaceClass")
editor_attribute("TemplatePrefab")
class(ShelfBase) extends(Furniture) 
	var(name,"Полка"); 
	editor_only(var(desc,"Мебель для складирования предметов на поверхности");)
	var(material,"MatWood");
	var(dr,1);
endclass

editor_attribute("EditorGenerated")
class(Sink) extends(ShelfBase)
	var(model,"ca\structures\furniture\bathroom\sink\sink.p3d");
	var(name,"Раковина");
	var(desc,"Настоящая роскошь");

	var(material,"MatBeton");
	var(sourceMatter,"Water");
	func(onInteractWith)
	{
		objParams_2(_with,_usr);
		if isTypeOf(_with,IReagentNDItem) exitWith {
			if !callSelfParams(canUseWaterSink,_usr) exitWith {};
			if callFuncParams(_with,addReagent,getSelf(sourceMatter) arg getVar(_with,curTransferSize)) then {
				callFuncParams(_usr,meSay,"наполняет " + callFunc(_with,getName));
				callSelf(playSinkSound);
			};
		};
	};

	func(onClick)
	{
		objParams_1(_usr);
		if !callSelfParams(canUseWaterSink,_usr) exitWith {};
		private _pt = nullPtr;
		{
			_pt = callFuncParams(_usr,getPart,_x);
			if !isNullReference(_pt) then {
				setVar(_pt,germs,(getVar(_pt,germs) - randInt(40,60)) max 0);
			};
		} foreach [BP_INDEX_ARM_R,BP_INDEX_ARM_L,BP_INDEX_HEAD];

		if !isNullReference(_pt) then {
			callFunc(_usr,syncGermsVisual);
			callFuncParams(_usr,meSay,"умывается");
			callSelf(playSinkSound);
		};
	};

	func(canUseWaterSink)
	{
		objParams_1(_usr);
		if (getSelf(hp)<=(getSelf(hpMax)/3)) exitWith {
			private _m = pick["слишком сильно повреждено."];
			callFuncParams(_usr,localSay,callSelf(getName) + " "+_m arg "error");
			false;
		};
		true
	};

	func(playSinkSound)
	{
		objParams();
		callSelfParams(playSound,"reagents\sink.ogg" arg getRandomPitchInRange(0.9,1.3));
	};
endclass


class(Umivalnik) extends(Sink)
	var(model,"metro_ob\model\umivalnik1.p3d");
	var(name,"Умывальник");
endclass

editor_attribute("EditorGenerated")
class(WoodenSmallShelf) extends(ShelfBase)
	var(model,"ml\ml_object_new\shabbat\bar_stoika.p3d");
endclass

editor_attribute("EditorGenerated")
class(WoodenSmallShelf1) extends(WoodenSmallShelf)
	var(model,"a3\structures_f_epb\furniture\shelveswooden_f.p3d");
endclass

editor_attribute("EditorGenerated")
class(LongShelf) extends(ShelfBase)
	var(model,"ml_shabut\stelazh_ot_seregi\stelazh_ot_seregi.p3d");
	var(dr,2);
endclass

editor_attribute("EditorGenerated")
class(SteelSmallShelf) extends(ShelfBase)
	var(model,"ca\structures\furniture\generalstore\shelf.p3d");
	var(material,"MatMetal");
	var(dr,2);
endclass

editor_attribute("EditorGenerated")
class(BigRedEdgesRack) extends(ShelfBase)
	var(model,"a3\structures_f\furniture\metal_wooden_rack_f.p3d");
endclass

class(Shelves) extends(ShelfBase)
	var(model,"a3\structures_f\furniture\metal_rack_f.p3d");
	var(material,"MatMetal");
	var(name,"Полки");
endclass
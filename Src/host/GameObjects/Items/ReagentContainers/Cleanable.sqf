// ======================================================
// Copyright (c) 2017-2024 the ReSDK_A3 project
// sdk.relicta.ru
// ======================================================

#include <..\..\..\engine.hpp>
#include <..\..\..\oop.hpp>
#include <..\..\..\text.hpp>
#include <..\..\GameConstants.hpp>

//footstep model: "a3\characters_f\footstep_%1.p3d", ['l', 'r'] select (_i %2)

class(CleanableItem) extends(Item)
	getter_func(canPickup,false);
	var(icon,null);
	var(weight,-1);
	var(model,"WaterSpill_01_Small_New_F");
	#include "..\..\Interfaces\IReagentContainer.Interface"
	var(reagents,[[] arg 5000] newReagents);
	
	func(onInteractWith)
	{
		objParams_2(_with,_usr);
		
		if isTypeOf(_with,BrushCleaner) exitWith {
			callFuncParams(_usr,meSay," убирает " + lowerize(callSelf(getName)));
			delete(this);
			callFuncParams(_usr,playSound,"UNCATEGORIZED\clean" arg getRandomPitchInRange(0.9,1.3));
		};
	};
	
endclass

class(BloodPoolSmall) extends(CleanableItem)
	var(name,"Кровь");
	var(desc,"Просто лужица крови.");
	var(model,"BloodSplatter_01_Small_New_F");
	getter_func(canIncrease,getSelf(incrLeft) <= 0);
	getterconst_func(getIncreaseType,"BloodPoolMedium");
	var(incrLeft,3); //сколько раз прокнет  предже чем увеличит лужу
	
	//Должен возвращать ссылку на созданную кровь или nullPtr
	func(increasePool)
	{
		objParams();
		modSelf(incrLeft, - 1);
		if callSelf(canIncrease) exitWith {
			private _obj = getSelf(loc);
			
			_obj = [callSelf(getIncreaseType),getPosATL _obj,null,false] call createItemInWorld;
			delete(this);
			_obj
		};
		this
	};
	
endclass

class(BloodPoolMedium) extends(BloodPoolSmall)
	var(model,"BloodPool_01_Medium_New_F");
	getterconst_func(getIncreaseType,"BloodPoolBig");
	var(incrLeft,4);
endclass

class(BloodPoolBig) extends(BloodPoolMedium)
	var(model,"BloodPool_01_Large_New_F");
	getterconst_func(canIncrease,false);
endclass
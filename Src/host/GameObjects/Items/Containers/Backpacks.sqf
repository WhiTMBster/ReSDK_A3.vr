// ======================================================
// Copyright (c) 2017-2025 the ReSDK_A3 project
// sdk.relicta.ru
// ======================================================

#include "..\..\..\engine.hpp"
#include "..\..\..\oop.hpp"
#include "..\..\GameConstants.hpp"
#include "..\..\..\..\client\Inventory\inventory.hpp"

editor_attribute("InterfaceClass")
class(Backpack) extends(Container)
var(name,"Рюкзак");
	var(desc,"Отлично подходит для таскания всякого барахла.");
	var(model,"a3\props_f_enoch\military\decontamination\deconkit_01_f.p3d");
	var(weight,gramm(600));
	var(allowedSlots,[INV_BACKPACK]);

	var_exprval(countSlots,DEFAULT_BACKPACK_STORAGE);
	var(size,ITEM_SIZE_LARGE);
	var(maxSize,ITEM_SIZE_LARGE);

	var(icon,"\A3\weapons_f\ammoboxes\bags\data\ui\icon_B_C_Gorod_khk_ca.paa");

	func(onEquip)
	{
		objParams_1(_usr);

		callSuper(Container,onEquip);
		private _mob = getVar(_usr,owner);
		[_mob,"addBackpack",[_mob, getSelf(armaClass)]] call repl_doLocal;
	};

	func(onUnequip)
	{
		objParams_1(_usr);

		callSuper(Container,onUnequip);
		private _mob = getVar(_usr,owner);
		[_mob,"removeBackpack",_mob] call repl_doLocal;
	};
endclass

//Отдельный от рюкзаков
class(CoinBag) extends(Container)

	var(name,"Мешочек");
	var(desc,"Маленький мешочек для хранения звяков и бряков.");
	var(model,"relicta_models\models\interier\props\bagforgold.p3d");
	var(icon,invicon(meshochek));
	var(weight,gramm(130));
	var(allowedSlots,[INV_BELT]);

	var_exprval(countSlots,BASE_STORAGE_CAPACITY(1.4));
	var(size,ITEM_SIZE_SMALL);
	var(maxSize,ITEM_SIZE_SMALL);
endclass

class(FabricBagBig1) extends(Container)
	var(name,"Мешок");
	var(allowedSlots,[INV_BACKPACK]);
	var_exprval(countSlots,DEFAULT_BOX_STORAGE);
	var(maxSize,ITEM_SIZE_BIG);
	var(size,ITEM_SIZE_HUGE);
	var(weight,gramm(800));
	var(model,"ml_shabut\meshok\meshok1.p3d");
	var(icon,invicon(bigsack));
	
endclass

class(FabricBagBig2) extends(FabricBagBig1)
	var(model,"ml_shabut\meshok\meshok2.p3d");
endclass


// Новые рюкзами 24.05.25

//Рюкзаки из кожи
editor_attribute("InterfaceClass")
class(LeatherBackpack) extends(Backpack)
	var(weight,gramm(1000));
	var(size,ITEM_SIZE_MEDIUM);
	var(maxSize,ITEM_SIZE_MEDIUM);
endclass

class(LeatherBackpackBrown) extends(LeatherBackpack)
	var(name,"Рюкзак из кожи");
	var(armaClass,"Backpack_brn");
endclass

editor_attribute("Deprecated" arg "Этот рюкзак будет удалён в будущем.")
class(SmallBackpack) extends(LeatherBackpackBrown)
endclass

class(LeatherBackpackRed) extends(LeatherBackpack)
	var(name,"Рюкзак из красной кожи");
	var(armaClass,"Backpack_red");
endclass

class(LeatherBackpackSand) extends(LeatherBackpack)
	var(name,"Рюкзак из жёлтой кожи");
	var(armaClass,"Backpack_snd");
endclass

class(LeatherBackpackWhite) extends(LeatherBackpack)
	var(name,"Рюкзак из белой кожи");
	var(armaClass,"Backpack_wht");
endclass

class(LeatherBackpackBlack) extends(LeatherBackpack)
	var(name,"Рюкзак из чёрной кожи");
	var(armaClass,"Backpack_blk");
endclass

class(LeatherBackpackGreen) extends(LeatherBackpack)
	var(name,"Рюкзак из зелёной кожи");
	var(armaClass,"Backpack_grn");
endclass

class(LeatherBackpackKhaki) extends(LeatherBackpack)
	var(name,"Рюкзак из светло-зелёной кожи");
	var(armaClass,"Backpack_khk");
endclass

// Большие рюкзаки из кожи
editor_attribute("InterfaceClass")
class(BigLeatherBackpack) extends(Backpack)
	var(weight,gramm(1500));
	var(size,ITEM_SIZE_LARGE);
	var(maxSize,ITEM_SIZE_MEDIUM);
endclass

class(BigLeatherBackpackBrown) extends(BigLeatherBackpack)
	var(name,"Большой рюкзак из кожи");
	var(armaClass,"lambert1_brn");
endclass

class(BigLeatherBackpackRed) extends(BigLeatherBackpack)
	var(name,"Большой рюкзак из красной кожи");
	var(armaClass,"lambert1_red");
endclass

class(BigLeatherBackpackBlack) extends(BigLeatherBackpack)
	var(name,"Большой рюкзак из чёрной кожи");
	var(armaClass,"lambert1_blk");
endclass

class(BigLeatherBackpackSand) extends(BigLeatherBackpack)
	var(name,"Большой рюкзак из жёлтой кожи");
	var(armaClass,"lambert1_snd");
endclass

//Портфели
editor_attribute("InterfaceClass")
class(BackpackBriefcase) extends(Backpack)
	var(weight,gramm(1000));
	var(size,ITEM_SIZE_MEDIUM);
	var(maxSize,ITEM_SIZE_MEDIUM);
endclass

class(Satchel) extends(BackpackBriefcase)
	var(name,"Ранец");
	var(armaClass,"Backpack_04");

endclass

class(SoldierSatchel) extends(BackpackBriefcase)
	var(name,"Солдатский ранец");
	var(armaClass,"pouch_black");
	var(weight,gramm(2000));
	var(size,ITEM_SIZE_LARGE);
	var(maxSize,ITEM_SIZE_LARGE);
endclass

//Мешки
editor_attribute("InterfaceClass")
class(BackpackBag) extends(Backpack)
	var(weight,gramm(1000));
	var(size,ITEM_SIZE_MEDIUM);
	var(maxSize,ITEM_SIZE_MEDIUM);
endclass

class(Kitbag) extends(BackpackBag)
	var(name,"Мешок на верёвочке");
	var(armaClass,"prospectors_02_backpack");
	var(weight,gramm(500));
endclass

class(WaistBag) extends(BackpackBag)
	var(name,"Поясной мешок");
	var(armaClass,"republican_bag_01");
		var(weight,gramm(200));
	var(size,ITEM_SIZE_SMALL);
	var(maxSize,ITEM_SIZE_SMALL);
endclass
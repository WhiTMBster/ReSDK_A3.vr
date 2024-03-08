// ======================================================
// Copyright (c) 2017-2024 the ReSDK_A3 project
// sdk.relicta.ru
// ======================================================


interactMenu_disableGlobal = false;

//активно ли интеракт меню
interactMenu_isLoadedMenu = false;

_interactMenu_skillWidgets = [];
_interactMenu_skillWidgets resize 8;
interactMenu_skillWidgets = _interactMenu_skillWidgets apply {widgetNull};
interactMenu_skillNames = ["СЛ","ИН","ЛВ","ЗД","ВНС","ВОЛЯ","ВОС","ЖЗ"];

#define INT_PATH(pt) (PATH_PICTURE_FOLDER + "interact\" + 'pt' + ".paa" )

interactMenu_intentPath = [INT_PATH(help),INT_PATH(grab),INT_PATH(harm)];

interactMenu_intentWidgets = [widgetNull,widgetNull,widgetNull];
interactMenu_activeIntent = [widgetNull]; //ссылка на виджет активного
interactMenu_intentActiveColors = [
	[0.1,0.729,0.1,1], //help
	[0.878,0.8,0.149,1], //grab
	[0.71,0.035,0.035,1] //harm
];

_sels = [];
_sels resize 13;
interactMenu_selectionWidgets = _sels apply {widgetNull};

interactMenu_activeSelectionWidget = [widgetNull]; //виджет активной зоны

//специальные действия на F
interactMenu_specialActions = [
	["Пинать",SPECIAL_ACTION_KICK,ACTION_SWITCHABLE],
	["Красть",SPECIAL_ACTION_STEAL,ACTION_SWITCHABLE],
	["Схватить",SPECIAL_ACTION_GRAB,ACTION_SWITCHABLE],
	["Прятаться",SPECIAL_ACTION_STEALTH,ACTION_PLAYING],
	["Кусать",SPECIAL_ACTION_BITE,ACTION_SWITCHABLE],
	["Глаза",SPECIAL_ACTION_EYES,ACTION_PLAYING],
	["Прыгать",SPECIAL_ACTION_JUMP,ACTION_SWITCHABLE],
	["Сон",SPECIAL_ACTION_SLEEP,ACTION_PLAYING],
	["Бросок",SPECIAL_ACTION_THROW,ACTION_SWITCHABLE],
	["Дыхание",SPECIAL_ACTION_BREATH,ACTION_PLAYING]
	//todo карабканье
];
//фразы для худа
interactMenu_specialActions_map_hud = createHashMapFromArray [
	[SPECIAL_ACTION_KICK,"[Спец] Пинать"],
	[SPECIAL_ACTION_GRAB,"[Спец] Хватать"],
	[SPECIAL_ACTION_BITE,"[Спец] Кусать"],
	[SPECIAL_ACTION_JUMP,"[Спец] Прыгать"],
	[SPECIAL_ACTION_STEAL,"[Спец] Красть"],
	[SPECIAL_ACTION_THROW,"[Спец] Бросать"]
];

interactMenu_curActiveSpecAct = [widgetNull];

//мапа для специальных действий
_nmap = [];
_nmap resize (count interactMenu_specialActions);
interactMenu_specActWidgets = _nmap apply {widgetNull};

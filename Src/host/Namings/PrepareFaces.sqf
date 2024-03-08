// ======================================================
// Copyright (c) 2017-2024 the ReSDK_A3 project
// sdk.relicta.ru
// ======================================================

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
	This common component. Included in preinit
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

#include "FaceList.sqf"

//список всех лиц без категорий
faces_list_man = []; 
faces_list_woman = [];

faces_map_man = createHashMap; //key: en-name, value : listfaces
faces_map_woman = createHashMap;

private ___skippedmanclasses = 0;

face_list_category = [
	["white","Корняк","Корнячка","Корняки"],
	["persian","Вахатец","Вахатка","Вахатцы"],
	["asian","Тегинец","Тегинка","Тегинцы"],
	["black","Углярец","Углярка","Углярцы"]
];

faces_list_man = [false] call facesys_prepManFaces;
faces_list_woman = call facesys_prepWomanFaces;




//just logged this
if (isServer) then {
	_cman = count (faces_list_man);
	_cwman = count (faces_list_woman);
	logformat("Faces lists loaded. Counts: %1/%2 (man/woman); Skipped man faces %3",_cman arg _cwman arg ___skippedmanclasses);
} else {
	facesys_prepManFaces = null;
	facesys_prepWomanFaces = null;
};

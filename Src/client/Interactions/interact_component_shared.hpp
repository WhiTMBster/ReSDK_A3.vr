// ======================================================
// Copyright (c) 2017-2024 the ReSDK_A3 project
// sdk.relicta.ru
// ======================================================


#define getObjReference(obj) (obj getVariable ["ref","noref"])

#define getObjReferenceWithMob(obj) (if (typeof obj == BASIC_MOB_TYPE) then {obj} else {getObjReference(obj)})
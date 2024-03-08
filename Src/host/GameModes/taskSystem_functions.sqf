// ======================================================
// Copyright (c) 2017-2024 the ReSDK_A3 project
// sdk.relicta.ru
// ======================================================


#include "..\engine.hpp"
#include "..\oop.hpp"
#include "..\text.hpp"

/*
	func(hasTaskByTag) {objParams_1(_tag); super();};

	// Получение объектов задач по тэгу
	func(getAllTasksByTag) {objParams_1(_tag);super()};

	// Получение первой задачи по тэгу 
	func(getFirstTaskByTag) {objParams_1(_tag);super()};

	// Проверить есть ли хотя бы одна успешно выполненная задача с указанным тэгом
	func(hasAnySuccessTaskByTag) {objParams_1(_tag);super()};

	// Проверить выполнены ли успешно все задачи с указанным тэгом
	func(hasAllSuccessTaskByTag) { objParams_1(_tag);super()};
*/
"
	name:Есть задача с тэгом
	desc:Возвращает ИСТИНУ, если с указанным тегом существует хотя бы одна задача
	exec:pure
	in:string:Тэг:Проверяемый тэг задач
	out:bool:Существует:Возвращает результат - существует ли одна или несколько задач с таким тэгом
"
node_func(taskSystem_hasTaskByTag) = {
	params ["_tag"];
	if isNullReference(gm_currentMode) exitWith {false};
	callFuncParams(gm_currentMode,hasTaskByTag,_tag);
};


"
	name:Все задачи с тэгом
	desc:Возвращает список задач с указанным тэгом. Если задач с таким тэгом не найдено - возвращается пустой массив.
	exec:pure
	in:string:Тэг:Проверяемый тэг задач
	out:array[TBase]:Задачи:Список задач с указанным тэгом.
"
node_func(taskSystem_getAllTasksByTag) = {
	params ["_tag"];
	if isNullReference(gm_currentMode) exitWith {[]};
	callFuncParams(gm_currentMode,getAllTasksByTag,_tag);
};

"
	name:Первая задача с тэгом
	desc:Возвращает первую задачу с указанным тэгом. Если задач с указанным тэгом не существует - возвращает null-объект.
	exec:pure
	in:string:Тэг:Проверяемый тэг задач
	out:TBase:Задача:Первая задача с указанным тэгом.
"
node_func(taskSystem_getFirstTaskByTag) = {
	params ["_tag"];
	if isNullReference(gm_currentMode) exitWith {nullPtr};
	callFuncParams(gm_currentMode,getFirstTaskByTag,_tag);
};

"
	name:Любая задача с тэгом выполнена
	desc:Возвращает ИСТИНУ, если хотя бы одна задача с указанным тэгом успешно выполнена. Успешным выполнением является результат задачи больше нуля.
	exec:pure
	in:string:Тэг:Проверяемый тэг задач
	out:bool:Выполнена:Есть ли выполненная задача с указанным тэгом. Если задач с указанным тэгом не существует - возвращает ЛОЖЬ.
"
node_func(taskSystem_hasAnySuccessTaskByTag) = {
	params ["_tag"];
	if isNullReference(gm_currentMode) exitWith {false};
	callFuncParams(gm_currentMode,hasAnySuccessTaskByTag,_tag);
};

"
	name:Все задачи с тэгом выполнены
	desc:Возвращает ИСТИНУ, если все задачи с указанным тэгом успешно выполнена. Успешным выполнением является результат задачи больше нуля.
	exec:pure
	in:string:Тэг:Проверяемый тэг задач
	out:bool:Выполнены:Выполнены ли все задачи с указанным тэгом. Если задач с указанным тэгом не существует - возвращает ЛОЖЬ.
"
node_func(taskSystem_hasAllSuccessTaskByTag) = {
	params ["_tag"];
	if isNullReference(gm_currentMode) exitWith {false};
	callFuncParams(gm_currentMode,hasAllSuccessTaskByTag,_tag);
};

// ======================================================
// Copyright (c) 2017-2024 the ReSDK_A3 project
// sdk.relicta.ru
// ======================================================


//game state dependences in src\host\CommonComponents\Gamemode.sqf
#define GAME_STATE_PRELOAD 0
#define GAME_STATE_LOBBY 1
#define GAME_STATE_PLAY 2
#define GAME_STATE_END 3

//регистратор структуры роли
//#define addRole(roleclass,rolename,countSlots) [roleclass,rolename,countSlots,[]]
#define ROLE_NAME 0
#define ROLE_DESC 1
#define ROLE_COUNT 2
#define ROLE_CONDITION_ADD_TO_LATE 3
#define ROLE_CONTENDERS 4
//Используется только в дефолтных ролях
#define ROLE_INDEX 5
	
	#define __addRoleToLateGame(roleName) [roleName,__internal_isDefaultRole] call gm_addRoleToLateGame
	#define __addRoleToLateGameWithArgs(args) args call gm_addRoleToLateGame
	#define __arrayArgs_LateGameCondition [__internal_roleName,__internal_isDefaultRole]

	#define LATERULE_AFTERSTART {__addRoleToLateGame(__internal_roleName)}
	#define LATERULE_BYCONDITION(cond) {if (cond) then {__addRoleToLateGame(__internal_roleName)}}
	#define LATERULE_DISABLE LATERULE_BYCONDITION(false)
	#define LATERULE_AFTERCONDITION(cond) {asyncInvoke({cond},{__addRoleToLateGameWithArgs(_this)},__arrayArgs_LateGameCondition,-1,{})}
	#define LATERULE_AFTERDELAY(delay) {invokeAfterDelayParams({__addRoleToLateGameWithArgs(_this)},delay,__arrayArgs_LateGameCondition)}


#define setGameModeName(name)  gm_gameModeName = name;

//Добавить роль прегейма
#define addPreStartRole(type) __refroletype = missionNamespace getVariable [("role_")+ (type),nullPtr]; if isNullReference(__refroletype) then { \
errorformat("Cant load pre start role <%2> in game mode %1: Null reference",gm_gameModeName arg type); \
} else {gm_preStartRoles pushBackUnique __refroletype; \
if callFunc(__refroletype,isMainRole) then {gm_preStartMainRoles pushBackUnique __refroletype}}

//добавить роль прогресса
#define addLateRole(type) __refroletype = missionNamespace getVariable [("role_")+ (type),nullPtr]; if isNullReference(__refroletype) then { \
errorformat("Cant load late role <%2> in game mode %1: Null reference",gm_gameModeName arg type); \
} else {gm_roundProgressRoles pushBackUnique __refroletype}


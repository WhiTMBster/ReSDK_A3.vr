// ======================================================
// Copyright (c) 2017-2024 the ReSDK_A3 project
// sdk.relicta.ru
// ======================================================

#include "..\..\host\engine.hpp"
#define INTERACT_ITEM_DISTANCE 1.35
#define INTERACT_ITEM_LEG_DISTANCE 1.7
#define INTERACT_MOB_DISTANCE 1.2
#define INTERACT_MOB_COLLECT_DIST 3
#define WORLD_CONTAINER_ALLOWDISTANCE INTERACT_ITEM_DISTANCE


#define INTERACT_DISTANCE 1.35

#define getHeadMobPos(mob) (mob modelToWorld (mob selectionPosition "head"))
#define getCenterMobPos(mob) (mob modelToWorld (mob selectionPosition("spine3")))

#define isInteractible(targ) ((targ getVariable ["isInteractible",true] && inventory_isPressedInteractButton) || (typeof targ == BASIC_MOB_TYPE))

#define VERB_LASTCHECKEDOBJECTDATA_DEFAULT [objNull,[0,0,0],false]

#define INTERACT_LODS_CHECK_STANDART "VIEW","FIRE"
//#define INTERACT_LODS_CHECK_STANDART "ROADWAY","VIEW"
#define INTERACT_LODS_CHECK_GEOM "GEOM","VIEW"

//interact modes in rpc iact
#define INTERACT_RPC_CLICK 0
#define INTERACT_RPC_ALTCLICK 1
#define INTERACT_RPC_EXAMINE 2
#define INTERACT_RPC_MAIN 3
#define INTERACT_RPC_EXTRA 4
#define INTERACT_RPC_CLICK_SELF 5

// types of client-side progress
/*
0 - dropped on moving, any rotation or click client
1 - dropped on moving, point of the screen in front of the camera is not visible or click client
2 - dropped on moving
*/
#define INTERACT_PROGRESS_TYPE_FULL 0
#define INTERACT_PROGRESS_TYPE_MEDIUM 1
#define INTERACT_PROGRESS_TYPE_LAZY 2


#define ATTACK_TYPE_ASSOC_HAND 0
// только прямые
#define ATTACK_TYPE_ASSOC_THRUST_ONLY 1
//только амплитудные
#define ATTACK_TYPE_ASSOC_SWING_ONLY 2
//2 стандартных режима
#define ATTACK_TYPE_ASSOC_STANDARD 3
//по сколько выстрелов можно делать WPN_[x]_[n] (ATTACK_TYPE_ASSOC_WPN_1_3 - 1 и 3)
#define ATTACK_TYPE_ASSOC_WPN_HANDLE 4
#define ATTACK_TYPE_ASSOC_WPN_1 5
#define ATTACK_TYPE_ASSOC_WPN_1_3 6

#define ATTACK_TYPE_ASSOC_SWING_HANDLE 7

#define ATTACK_TYPE_ASSOC_IS_SHOOTING(v) (v in [ATTACK_TYPE_ASSOC_WPN_1,ATTACK_TYPE_ASSOC_WPN_1_3])
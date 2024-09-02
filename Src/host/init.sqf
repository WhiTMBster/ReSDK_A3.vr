// ======================================================
// Copyright (c) 2017-2024 the ReSDK_A3 project
// sdk.relicta.ru
// ======================================================

#include "engine.hpp"

server_loadingState = 0;

loadFile("src\host\ScriptErrorHandler\ScriptErrorHandler_init.sqf");
loadFile("src\host\Curl\Curl.sqf");
loadFile("src\host\Yaml\Yaml_init.sqf");
loadFile("src\host\Networking\Network.sqf");
loadFile("src\public_loader.sqf");
#ifdef EDITOR
	loadFile("src\host\Tools\ScriptingEditor\ScriptingEditor_init.sqf");
	loadFile("src\host\Tools\SDK\SDK_init.sqf");
#endif
loadFile("src\host\VerbSystem\loadBeforeOOPInit.sqf"); //иницализация хелпер функции для форматирования действий с помощью verbList(...)

loadFile("src\host\ServerVoice\ServerVoice_init.sqf"); //server voice services

//classes

loadFile("src\host\Tools\EditorWorkspaceDebug\SandboxClasses.sqf");

loadFile("src\host\OOP_engine\oop_object.sqf");
#include "CombatSystem\RuntimeWeaponModulesGenerator.sqf"
#include "GameObjects\loader.hpp"
#include "CombatSystem\loader.hpp"
#include "CraftSystem\Crafts\Basic.sqf"
loadFile("src\host\DataObjects\DataObjects_init.sqf");
loadFile("src\host\Reagents\loader.hpp");
#include "StatusEffects\StatusEffects_init.sqf"
#include "Perks\Perks_init.sqf"
#include <GameModes\loader.hpp>
loadFile("src\host\Traits\TraitClasses\TraitBase.sqf");
loadFile("src\host\GameEvents\loader.hpp");
loadFile("src\host\SpecialActions\SpecialActions.sqf");
loadFile("src\host\Client\client.sqf");
loadFile("src\host\Gender\Genders.sqf");
loadFile("src\host\Materials\Materials_init.sqf");
call nodegen_loadClasses;
// start class generator
call cs_runtime_internal_makeAll;

//OOP INIT ZONE
[] call oop_loadTypes;
//end classes

//structures initialize
loadFile("src\host\Structs\Structs_init.sqf");
call struct_initialize; //init all struct

//another loaded files...
//DEPREACTED loadFile("src\host\Database\fDB\fDB_init.sqf"); //локальная база данных
loadFile("src\host\Database\SQLite\SQLite_init.sqf");
loadFile("src\host\Namings\Naming_init.sqf"); //система имён
loadFile("src\host\Traits\TraitsInit.sqf"); //пороки, последствия
loadFile("src\host\FaithSystem\FaithInit.sqf"); //система веры
loadFile("src\host\MatterSystem\MatterSystem_init.sqf"); //материи, реагенты
loadFile("src\host\Reagents\ReagetSystem_init.sqf"); //новая система реагентов
loadFile("src\host\CaveSystem\CaveSystem.sqf");
loadFile("src\host\MapManager\map_manager.sqf");
loadFile("src\host\NOEngine\NOEngineInit.sqf");// Network objects engine
loadFile("src\host\GURPS\Gurps.sqf");
loadFile("src\host\PointerSystem\Pointer.sqf");
loadFile("src\host\VerbSystem\verbs.sqf");
loadFile("src\host\ClientManager\ClientManager.sqf");
loadFile("src\host\Atmos\Atmos_init.sqf");
loadFile("src\host\GamemodeManager\GamemodeManager.sqf");
loadFile("src\host\CraftSystem\Craft.sqf"); //serverside craft system
loadFile("src\host\AmbientControl\AmbientControl_init.sqf");
loadFile("src\host\ServerInteraction\ServerInteractionInit.sqf"); //throwing, interactions etc. on serverside
loadFile("src\host\ServerLighting\ServerLighting_init.sqf"); //serverside lighting system
loadFile("src\host\Reputation\Reputation_init.sqf"); //reputation system
//loadFile("src\host\AI\ai_init.sqf");//ai system
// Initialize tools in debug
#ifdef EDITOR
if (!isMultiplayer) then {
	loadFile("src\host\Tools\EditorWorkspaceDebug\EntryPoint.sqf");

	loadFile("src\host\Tools\LightEditor\LightEditor.sqf");
	loadFile("src\host\Tools\ParticleEditor\ParticleEditor.sqf");
	loadFile("src\host\Tools\ProxyItemsEditor\ProxyItemsEditor.sqf");
	loadFile("src\host\Tools\IconGenerator\IconGenerator.sqf");
	loadFile("src\host\Tools\EditorDebug\EditorDebug.sqf");
	loadFile("src\host\Tools\HotReload\HotReload_init.sqf");

	loadFile("src\host\ServerSceneTest\serverscrene_init.sqf"); //for testing only
};
#endif

#ifdef DEBUG
loadFile("src\host\UnitTests\UnitTest.sqf");
#endif

server_loadingState = 1;

if (isMultiplayer) then {

	//fixed kicking before open server
	{
		(getUserInfo _x) params ["","_owner"];
		if (_owner > 2) then {
			SERVER_PASSWORD serverCommand (format["#kick %1 Сервер ещё не загружен.",_owner]);
		};
	} forEach allUsers;

	SERVER_PASSWORD serverCommand "#unlock";
	/*stopUpdate(server_internal_preInit_kickHandle);
	server_internal_preInit_kickHandle = null;*/

	//setting date
	#ifndef EDITOR
	setDate [1985,5,20,0,00];
	#endif
};

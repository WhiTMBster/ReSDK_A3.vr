// ======================================================
// Copyright (c) 2017-2025 the ReSDK_A3 project
// sdk.relicta.ru
// ======================================================
/*
	for compiling error code use setvar _clientCompileErrorCode > 100
*/
#include "..\..\engine.hpp"

log("Compiling shared components");
//call compile __pragma_preprocess "src\host\CommonComponents\loader.hpp";
#include <..\..\CommonComponents\loader.hpp>

;
private _shCnt = count allClientContents;
if (_shCnt == 0) exitWith {
	error("Shared components not found or empty");
	_clientCompileErrorCode = 101;
};

logformat("Shared components count: %1",_shCnt);

log("Compiling client components");

#ifdef DEBUG
	#define cmplog(fcat) allClientContents pushBack (compile format['log("Init %1")',fcat]);
#else
	#define cmplog(fcat)
#endif

#include <..\..\..\client\loader.hpp>

;
private _cliCnt = (count allClientContents)-  _shCnt;
if (_cliCnt == 0) exitWith {
	error("Client components not found or empty");
	_clientCompileErrorCode = 102;
};

logformat("Client components count: %1",_cliCnt);

_finalizedStageCatch = true;
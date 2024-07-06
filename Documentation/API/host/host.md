# bitflags.hpp

## b_set(a,b)

Type: constant

Description: установить флаги
- Param: a
- Param: b

Replaced value:
```sqf
([a,b] call bit_set)
```
File: [host\bitflags.hpp at line 8](../../../Src/host/bitflags.hpp#L8)
## b_def(bits)

Type: constant

Description: определить фгали
- Param: bits

Replaced value:
```sqf
[0,bits] call bit_set
```
File: [host\bitflags.hpp at line 11](../../../Src/host/bitflags.hpp#L11)
## b_check(a,b)

Type: constant

Description: проверить есть ли флаг
- Param: a
- Param: b

Replaced value:
```sqf
([a,b] call bit_check)
```
File: [host\bitflags.hpp at line 14](../../../Src/host/bitflags.hpp#L14)
## b_toArray(bits)

Type: constant

Description: все флаги в массив
- Param: bits

Replaced value:
```sqf
((bits) call bit_toArray)
```
File: [host\bitflags.hpp at line 17](../../../Src/host/bitflags.hpp#L17)
## b_not(bin)

Type: constant

Description: 				00110101
- Param: bin

Replaced value:
```sqf
((bin) call bitwise_not)
```
File: [host\bitflags.hpp at line 24](../../../Src/host/bitflags.hpp#L24)
## b_and(a,b)

Type: constant

Description: 
- Param: a
- Param: b

Replaced value:
```sqf
([a,b] call bitwise_and)
```
File: [host\bitflags.hpp at line 35](../../../Src/host/bitflags.hpp#L35)
## b_or(a,b)

Type: constant

Description: 
- Param: a
- Param: b

Replaced value:
```sqf
([a,b] call bitwise_or)
```
File: [host\bitflags.hpp at line 47](../../../Src/host/bitflags.hpp#L47)
## b_xor(a,b)

Type: constant

Description: 
- Param: a
- Param: b

Replaced value:
```sqf
([a,b] call bitwise_xor)
```
File: [host\bitflags.hpp at line 60](../../../Src/host/bitflags.hpp#L60)
## b_0

Type: constant

Description: Макси


Replaced value:
```sqf
1
```
File: [host\bitflags.hpp at line 66](../../../Src/host/bitflags.hpp#L66)
## b_1

Type: constant

Description: 524286 при всех флагах. Дальше значения за 1кк


Replaced value:
```sqf
2
```
File: [host\bitflags.hpp at line 67](../../../Src/host/bitflags.hpp#L67)
## b_2

Type: constant

Description: Точность потеряна


Replaced value:
```sqf
4
```
File: [host\bitflags.hpp at line 68](../../../Src/host/bitflags.hpp#L68)
## b_3

Type: constant

Description: 


Replaced value:
```sqf
8
```
File: [host\bitflags.hpp at line 69](../../../Src/host/bitflags.hpp#L69)
## b_4

Type: constant

Description: 


Replaced value:
```sqf
16
```
File: [host\bitflags.hpp at line 70](../../../Src/host/bitflags.hpp#L70)
## b_5

Type: constant

Description: 


Replaced value:
```sqf
32
```
File: [host\bitflags.hpp at line 71](../../../Src/host/bitflags.hpp#L71)
## b_6

Type: constant

Description: 


Replaced value:
```sqf
64
```
File: [host\bitflags.hpp at line 72](../../../Src/host/bitflags.hpp#L72)
## b_7

Type: constant

Description: 


Replaced value:
```sqf
128
```
File: [host\bitflags.hpp at line 73](../../../Src/host/bitflags.hpp#L73)
## b_8

Type: constant

Description: 


Replaced value:
```sqf
256
```
File: [host\bitflags.hpp at line 74](../../../Src/host/bitflags.hpp#L74)
## b_9

Type: constant

Description: 


Replaced value:
```sqf
512
```
File: [host\bitflags.hpp at line 75](../../../Src/host/bitflags.hpp#L75)
## b_10

Type: constant

Description: 


Replaced value:
```sqf
1024
```
File: [host\bitflags.hpp at line 76](../../../Src/host/bitflags.hpp#L76)
## b_11

Type: constant

Description: 


Replaced value:
```sqf
2048
```
File: [host\bitflags.hpp at line 77](../../../Src/host/bitflags.hpp#L77)
## b_12

Type: constant

Description: 


Replaced value:
```sqf
4096
```
File: [host\bitflags.hpp at line 78](../../../Src/host/bitflags.hpp#L78)
## b_13

Type: constant

Description: 


Replaced value:
```sqf
8192
```
File: [host\bitflags.hpp at line 79](../../../Src/host/bitflags.hpp#L79)
## b_14

Type: constant

Description: 


Replaced value:
```sqf
16384
```
File: [host\bitflags.hpp at line 80](../../../Src/host/bitflags.hpp#L80)
## b_15

Type: constant

Description: 


Replaced value:
```sqf
32768
```
File: [host\bitflags.hpp at line 81](../../../Src/host/bitflags.hpp#L81)
## b_16

Type: constant

Description: 


Replaced value:
```sqf
65536
```
File: [host\bitflags.hpp at line 82](../../../Src/host/bitflags.hpp#L82)
## b_17

Type: constant

Description: 


Replaced value:
```sqf
131072
```
File: [host\bitflags.hpp at line 83](../../../Src/host/bitflags.hpp#L83)
## b_18

Type: constant

Description: 524286 при всех флагах. Дальше значения за 1кк


Replaced value:
```sqf
262144
```
File: [host\bitflags.hpp at line 85](../../../Src/host/bitflags.hpp#L85)
## b_19

Type: constant

Description: 


Replaced value:
```sqf
524288
```
File: [host\bitflags.hpp at line 86](../../../Src/host/bitflags.hpp#L86)
## b_20

Type: constant

Description: Точность потеряна


Replaced value:
```sqf
1.04858e+006
```
File: [host\bitflags.hpp at line 88](../../../Src/host/bitflags.hpp#L88)
## b_21

Type: constant

Description: 


Replaced value:
```sqf
2.09715e+006
```
File: [host\bitflags.hpp at line 89](../../../Src/host/bitflags.hpp#L89)
## b_22

Type: constant

Description: 


Replaced value:
```sqf
4.1943e+006
```
File: [host\bitflags.hpp at line 90](../../../Src/host/bitflags.hpp#L90)
## b_23

Type: constant

Description: 


Replaced value:
```sqf
8.38861e+006
```
File: [host\bitflags.hpp at line 91](../../../Src/host/bitflags.hpp#L91)
## b_24

Type: constant

Description: 


Replaced value:
```sqf
1.67772e+007
```
File: [host\bitflags.hpp at line 92](../../../Src/host/bitflags.hpp#L92)
# engine.hpp

## PLATFORM_VERSION

Type: constant

Description: ! dont use on client, because compiled client (CONTENT-file) used vm-compiler. Only server and editor allowed


Replaced value:
```sqf
'__GAME_VER__'
```
File: [host\engine.hpp at line 13](../../../Src/host/engine.hpp#L13)
## PLATFORM_VERSION_MAJ

Type: constant

Description: 


Replaced value:
```sqf
__GAME_VER_MAJ__
```
File: [host\engine.hpp at line 14](../../../Src/host/engine.hpp#L14)
## PLATFORM_VERSION_MIN

Type: constant

Description: 


Replaced value:
```sqf
__GAME_VER_MIN__
```
File: [host\engine.hpp at line 15](../../../Src/host/engine.hpp#L15)
## PLATFORM_VERSION_BUILD

Type: constant

Description: 


Replaced value:
```sqf
__GAME_BUILD__
```
File: [host\engine.hpp at line 16](../../../Src/host/engine.hpp#L16)
## ISDEVBUILD

Type: constant

> Exists if **EDITOR** defined

Description: 


Replaced value:
```sqf
(0 call{ \
		private _file = ".git\head"; \
		private _pattern = "refs/heads/development"; \
		if (is3DEN) then { \
			if ([_file] call file_exists) then { \
				_pattern in ([_file] call file_read) \
			} else { \
				false \
			};\
		} else { \
			if (FILEEXISTS _file) then { \
				_pattern in (LOADFILE _file) \
			} else { \
				false \
			}; \
		}; \
	})
```
File: [host\engine.hpp at line 19](../../../Src/host/engine.hpp#L19)
## ISDEVBUILD

Type: constant

> Exists if **EDITOR** not defined

Description: 


Replaced value:
```sqf
false
```
File: [host\engine.hpp at line 37](../../../Src/host/engine.hpp#L37)
## ENABLE_LINE_IN_FILES

Type: constant

Description: 


Replaced value:
```sqf

```
File: [host\engine.hpp at line 46](../../../Src/host/engine.hpp#L46)
## __pragma_preprocess

Type: constant

> Exists if **ENABLE_LINE_IN_FILES** defined

Description: 


Replaced value:
```sqf
preprocessFileLineNumbers
```
File: [host\engine.hpp at line 49](../../../Src/host/engine.hpp#L49)
## __pragma_preprocess

Type: constant

> Exists if **ENABLE_LINE_IN_FILES** not defined

Description: 


Replaced value:
```sqf
preprocessFile
```
File: [host\engine.hpp at line 51](../../../Src/host/engine.hpp#L51)
## __pragma_prep_cli

Type: constant

Description: 


Replaced value:
```sqf
preprocessFile
```
File: [host\engine.hpp at line 54](../../../Src/host/engine.hpp#L54)
## region(name)

Type: constant

Description: simple implementation of regions
- Param: name

Replaced value:
```sqf

```
File: [host\engine.hpp at line 57](../../../Src/host/engine.hpp#L57)
## endregion

Type: constant

Description: 


Replaced value:
```sqf

```
File: [host\engine.hpp at line 58](../../../Src/host/engine.hpp#L58)
## arg

Type: constant

Description: logger


Replaced value:
```sqf
,
```
File: [host\engine.hpp at line 61](../../../Src/host/engine.hpp#L61)
## args1(a)

Type: constant

Description: args struct
- Param: a

Replaced value:
```sqf
a
```
File: [host\engine.hpp at line 64](../../../Src/host/engine.hpp#L64)
## args2(a,b)

Type: constant

Description: 
- Param: a
- Param: b

Replaced value:
```sqf
a,b
```
File: [host\engine.hpp at line 65](../../../Src/host/engine.hpp#L65)
## args3(a,b,c)

Type: constant

Description: 
- Param: a
- Param: b
- Param: c

Replaced value:
```sqf
a,b,c
```
File: [host\engine.hpp at line 66](../../../Src/host/engine.hpp#L66)
## args4(a,b,c,d)

Type: constant

Description: 
- Param: a
- Param: b
- Param: c
- Param: d

Replaced value:
```sqf
a,b,c,d
```
File: [host\engine.hpp at line 67](../../../Src/host/engine.hpp#L67)
## args5(a,b,c,d,e)

Type: constant

Description: 
- Param: a
- Param: b
- Param: c
- Param: d
- Param: e

Replaced value:
```sqf
a,b,c,d,e
```
File: [host\engine.hpp at line 68](../../../Src/host/engine.hpp#L68)
## args6(a,b,c,d,e,f)

Type: constant

Description: 
- Param: a
- Param: b
- Param: c
- Param: d
- Param: e
- Param: f

Replaced value:
```sqf
a,b,c,d,e,f
```
File: [host\engine.hpp at line 69](../../../Src/host/engine.hpp#L69)
## conDllCall

Type: constant

Description: 


Replaced value:
```sqf
"debug_console" callExtension
```
File: [host\engine.hpp at line 71](../../../Src/host/engine.hpp#L71)
## log(message)

Type: constant

Description: 
- Param: message

Replaced value:
```sqf
[message] call cprint
```
File: [host\engine.hpp at line 73](../../../Src/host/engine.hpp#L73)
## logformat(provider,formatText)

Type: constant

Description: 
- Param: provider
- Param: formatText

Replaced value:
```sqf
[provider,formatText] call cprint
```
File: [host\engine.hpp at line 74](../../../Src/host/engine.hpp#L74)
## errorformat(message,fmt)

Type: constant

Description: 
- Param: message
- Param: fmt

Replaced value:
```sqf
[message,fmt] call cprintErr
```
File: [host\engine.hpp at line 86](../../../Src/host/engine.hpp#L86)
## trace(message)

Type: constant

> Exists if **__TRACE__ENABLED** defined

Description: 
- Param: message

Replaced value:
```sqf

```
File: [host\engine.hpp at line 92](../../../Src/host/engine.hpp#L92)
## traceformat(message,fmt)

Type: constant

> Exists if **__TRACE__ENABLED** defined

Description: 
- Param: message
- Param: fmt

Replaced value:
```sqf
"debug_console" callExtension (format ["TRACE: " + message + "#1011",fmt]);
```
File: [host\engine.hpp at line 92](../../../Src/host/engine.hpp#L92)
## breakpoint_setfile(x)

Type: constant

> Exists if **__TRACE__ENABLED** defined

Description: breakpoints
- Param: x

Replaced value:
```sqf
__bp__file__ = x;
```
File: [host\engine.hpp at line 95](../../../Src/host/engine.hpp#L95)
## breakpoint(data)

Type: constant

> Exists if **__TRACE__ENABLED** defined

Description: breakpoints
- Param: data

Replaced value:
```sqf

```
File: [host\engine.hpp at line 96](../../../Src/host/engine.hpp#L96)
## traceformat(message,fmt)

Type: constant

> Exists if **__TRACE__ENABLED** not defined

Description: 
- Param: message
- Param: fmt

Replaced value:
```sqf

```
File: [host\engine.hpp at line 101](../../../Src/host/engine.hpp#L101)
## breakpoint_setfile(x)

Type: constant

> Exists if **__TRACE__ENABLED** not defined

Description: breakpoints
- Param: x

Replaced value:
```sqf

```
File: [host\engine.hpp at line 103](../../../Src/host/engine.hpp#L103)
## OBSOLETE(funcname)

Type: constant

Description: 
- Param: funcname

Replaced value:
```sqf
private _dt = format ["[OBSOLETE] => %1(): This function will be removed in the future and should not be used." + "#1101", #funcname]; "debug_console" callExtension _dt; [_dt] call discWarning;
```
File: [host\engine.hpp at line 110](../../../Src/host/engine.hpp#L110)
## NOTIMPLEMENTED(funcname)

Type: constant

Description: 
- Param: funcname

Replaced value:
```sqf
private _dt = format ["[NOT_IMPLEMENTED] => %1(): This function not implemented." + "#1101", #funcname]; "debug_console" callExtension _dt; [_dt] call discWarning;
```
File: [host\engine.hpp at line 112](../../../Src/host/engine.hpp#L112)
## ___appexitstr(value)

Type: constant

Description: закрытие потока программы
- Param: value

Replaced value:
```sqf
#value
```
File: [host\engine.hpp at line 115](../../../Src/host/engine.hpp#L115)
## appExit(exitCode)

Type: constant

Description: 
- Param: exitCode

Replaced value:
```sqf
logformat("Application exited. Reason: %1 (%2)",exitCode arg __appexit_listreasons select exitCode); if (!isMultiplayer) then {client_isLocked = true; server_isLocked = true; endMission "END1";} else {if (isServer) then {server_isLocked = true} else {client_isLocked = true}}
```
File: [host\engine.hpp at line 116](../../../Src/host/engine.hpp#L116)
## __appexit_listreasons

Type: constant

Description: 


Replaced value:
```sqf
(["EXIT" \
	,"CRITICAL" \
	,"DOUBLEDEF" \
	,"UNDEFINEDMODULE" \
	,"COMPILATIOEXCEPTION" \
	,"RUNTIMEERROR" \
	,"ASSERTION_FAIL" \
	,"EXTENSION_ERROR" \
	])apply{"APPEXIT_REASON_"+_x}
```
File: [host\engine.hpp at line 117](../../../Src/host/engine.hpp#L117)
## APPEXIT_REASON_EXIT

Type: constant

Description: 


Replaced value:
```sqf
0
```
File: [host\engine.hpp at line 127](../../../Src/host/engine.hpp#L127)
## APPEXIT_REASON_CRITICAL

Type: constant

Description: 


Replaced value:
```sqf
1
```
File: [host\engine.hpp at line 128](../../../Src/host/engine.hpp#L128)
## APPEXIT_REASON_DOUBLEDEF

Type: constant

Description: 


Replaced value:
```sqf
2
```
File: [host\engine.hpp at line 129](../../../Src/host/engine.hpp#L129)
## APPEXIT_REASON_UNDEFINEDMODULE

Type: constant

Description: 


Replaced value:
```sqf
3
```
File: [host\engine.hpp at line 130](../../../Src/host/engine.hpp#L130)
## APPEXIT_REASON_COMPILATIOEXCEPTION

Type: constant

Description: 


Replaced value:
```sqf
4
```
File: [host\engine.hpp at line 131](../../../Src/host/engine.hpp#L131)
## APPEXIT_REASON_RUNTIMEERROR

Type: constant

Description: 


Replaced value:
```sqf
5
```
File: [host\engine.hpp at line 132](../../../Src/host/engine.hpp#L132)
## APPEXIT_REASON_ASSERTION_FAIL

Type: constant

Description: 


Replaced value:
```sqf
6
```
File: [host\engine.hpp at line 133](../../../Src/host/engine.hpp#L133)
## APPEXIT_REASON_EXTENSION_ERROR

Type: constant

Description: 


Replaced value:
```sqf
7
```
File: [host\engine.hpp at line 134](../../../Src/host/engine.hpp#L134)
## DISABLE_REGEX_ON_FILE

Type: constant

> Exists if **_SQFVM** defined

Description: 


Replaced value:
```sqf

```
File: [host\engine.hpp at line 141](../../../Src/host/engine.hpp#L141)
## loadFile(path)

Type: constant

> Exists if **DISABLE_REGEX_ON_FILE** defined

Description: 
- Param: path

Replaced value:
```sqf
if (server_isLocked) exitWith {error("Compile process aborted - server.isLocked == true")}; logformat("Start loading file %1",path); ["Load file - '%1'",path] call logInfo;  call compile __pragma_preprocess (path)
```
File: [host\engine.hpp at line 147](../../../Src/host/engine.hpp#L147)
## importClient(path)

Type: constant

> Exists if **DISABLE_REGEX_ON_FILE** defined

Description: 
- Param: path

Replaced value:
```sqf
if (isNil {allClientContents}) then {allClientContents = [];}; if (client_isLocked) exitWith {error("Compile process aborted - client.isLocked == true")}; \
	private _ctx = compile __pragma_prep_cli (path); if (_canCallClientCode) then {call _ctx}; allClientContents pushback _ctx;
```
File: [host\engine.hpp at line 149](../../../Src/host/engine.hpp#L149)
## importCommon(path)

Type: constant

> Exists if **DISABLE_REGEX_ON_FILE** defined

Description: 
- Param: path

Replaced value:
```sqf
if (isNil {allClientContents}) then {allClientContents = [];}; \
	private _ctx = compile __pragma_prep_cli ("src\host\CommonComponents\" + path); \
	if (_canCallClientCode) then {call _ctx}; allClientContents pushback _ctx;
```
File: [host\engine.hpp at line 152](../../../Src/host/engine.hpp#L152)
## loadFile(path)

Type: constant

> Exists if **DISABLE_REGEX_ON_FILE** not defined

Description: 
- Param: path

Replaced value:
```sqf
if (server_isLocked) exitWith {error("Compile process aborted - server.isLocked == true")}; logformat("Start loading file %1",path); ["Load file - '%1'",path] call logInfo; call compile __pragma_preprocess (path)
```
File: [host\engine.hpp at line 156](../../../Src/host/engine.hpp#L156)
## importClient(path)

Type: constant

> Exists if **DISABLE_REGEX_ON_FILE** not defined

Description: 
- Param: path

Replaced value:
```sqf
if (isNil {allClientContents}) then {allClientContents = [];}; if (client_isLocked) exitWith {error("Compile process aborted - client.isLocked == true")}; \
	_macro_module = path regexFind ["\w+(?=\.)",0] select 0 select 0 select 0; \
	private _ctx = compile ((__pragma_prep_cli (path))regexReplace ["__THIS_MODULE_REPLACE__",""""+ _macro_module+""""]); if (_canCallClientCode) then {call _ctx}; allClientContents pushback _ctx;
```
File: [host\engine.hpp at line 158](../../../Src/host/engine.hpp#L158)
## importCommon(path)

Type: constant

> Exists if **DISABLE_REGEX_ON_FILE** not defined

Description: 
- Param: path

Replaced value:
```sqf
if (isNil {allClientContents}) then {allClientContents = [];}; \
	_macro_file = """shared" +"\" + path + """"; _macro_module = path regexFind ["\w+(?=\.)",0] select 0 select 0 select 0; \
	__prep = ((__pragma_prep_cli ("src\host\CommonComponents\" + path)) regexReplace ["__THIS_FILE_REPLACE__",(_macro_file regexReplace ["\\","\\\\"])]) regexReplace ["__THIS_MODULE_REPLACE__",""""+ _macro_module+""""]; \
	private _ctx = compile __prep; \
	if (_canCallClientCode) then {call _ctx}; allClientContents pushback _ctx;
```
File: [host\engine.hpp at line 162](../../../Src/host/engine.hpp#L162)
## __vm_log(text)

Type: constant

> Exists if **__VM_VALIDATE** defined

Description: 
- Param: text

Replaced value:
```sqf
"debug_console" callExtension ((text)+"#1110")
```
File: [host\engine.hpp at line 170](../../../Src/host/engine.hpp#L170)
## loadFile(path)

Type: constant

> Exists if **__VM_VALIDATE** defined

Description: 
- Param: path

Replaced value:
```sqf
\
	__vm_log("Load file: " + path); \
	call compile preprocessFile (path);
```
File: [host\engine.hpp at line 172](../../../Src/host/engine.hpp#L172)
## __vm_warning(data)

Type: constant

> Exists if **__VM_VALIDATE** defined

Description: 
- Param: data

Replaced value:
```sqf
diag_log format["[VM_WARN]: %1",data];
```
File: [host\engine.hpp at line 176](../../../Src/host/engine.hpp#L176)
## locationnull

Type: constant

> Exists if **__VM_VALIDATE** defined

Description: 


Replaced value:
```sqf
0
```
File: [host\engine.hpp at line 179](../../../Src/host/engine.hpp#L179)
## is3DEN

Type: constant

> Exists if **__VM_VALIDATE** defined

Description: 


Replaced value:
```sqf
true
```
File: [host\engine.hpp at line 180](../../../Src/host/engine.hpp#L180)
## addMissionEventHandler

Type: constant

> Exists if **__VM_VALIDATE** defined

Description: 


Replaced value:
```sqf
["addMissionEventHandler"] pushBack 
```
File: [host\engine.hpp at line 182](../../../Src/host/engine.hpp#L182)
## toString

Type: constant

> Exists if **__VM_VALIDATE** defined

Description: 


Replaced value:
```sqf
str
```
File: [host\engine.hpp at line 184](../../../Src/host/engine.hpp#L184)
## linearConversion

Type: constant

> Exists if **__VM_VALIDATE** defined

Description: 


Replaced value:
```sqf
["linearConversion"] pushBack 
```
File: [host\engine.hpp at line 185](../../../Src/host/engine.hpp#L185)
## parseSimpleArray

Type: constant

> Exists if **__VM_VALIDATE** defined

Description: 


Replaced value:
```sqf
["parseSimpleArray"] pushBack 
```
File: [host\engine.hpp at line 186](../../../Src/host/engine.hpp#L186)
## endMission

Type: constant

> Exists if **__VM_VALIDATE** defined

Description: 


Replaced value:
```sqf
["endMission"] pushBack 
```
File: [host\engine.hpp at line 187](../../../Src/host/engine.hpp#L187)
## FLOOR

Type: constant

> Exists if **__VM_VALIDATE** defined

Description: for randInt


Replaced value:
```sqf

```
File: [host\engine.hpp at line 189](../../../Src/host/engine.hpp#L189)
## NO_VM_EXECUTE

Type: constant

> Exists if **__VM_VALIDATE** defined

Description: 


Replaced value:
```sqf
if (true) exitwith {};
```
File: [host\engine.hpp at line 191](../../../Src/host/engine.hpp#L191)
## __vm_log(text)

Type: constant

> Exists if **__VM_VALIDATE** not defined

Description: 
- Param: text

Replaced value:
```sqf

```
File: [host\engine.hpp at line 193](../../../Src/host/engine.hpp#L193)
## __vm_warning(data)

Type: constant

> Exists if **__VM_VALIDATE** not defined

Description: 
- Param: data

Replaced value:
```sqf

```
File: [host\engine.hpp at line 194](../../../Src/host/engine.hpp#L194)
## NO_VM_EXECUTE

Type: constant

> Exists if **__VM_VALIDATE** not defined

Description: 


Replaced value:
```sqf

```
File: [host\engine.hpp at line 196](../../../Src/host/engine.hpp#L196)
## __vm_log(text)

Type: constant

> Exists if **__GH_ACTION** defined

Description: 
- Param: text

Replaced value:
```sqf
diag_log (text)
```
File: [host\engine.hpp at line 200](../../../Src/host/engine.hpp#L200)
## __vm_log(text)

Type: constant

> Exists if **__VM_BUILD** defined

Description: 
- Param: text

Replaced value:
```sqf
"debug_console" callExtension ((text)+"#1110")
```
File: [host\engine.hpp at line 203](../../../Src/host/engine.hpp#L203)
## fileExists(file)

Type: constant

Description: check if file exists
- Param: file

Replaced value:
```sqf
fileexists (file)
```
File: [host\engine.hpp at line 207](../../../Src/host/engine.hpp#L207)
## SHORT_PATH

Type: constant

Description: 


Replaced value:
```sqf
call {private _arr = __FILE__ splitString "\"; private _ret = ""; if (!isMultiplayer) then \
{ {if (_foreachindex >= 8) then {_ret = _ret + "\" + _x}} forEach _arr } else { \
_ret = __FILE__; \
}; _ret select [1,count _ret - 1]} \

```
File: [host\engine.hpp at line 209](../../../Src/host/engine.hpp#L209)
## getMissionName

Type: constant

Description: 


Replaced value:
```sqf
(missionname+".vr")
```
File: [host\engine.hpp at line 214](../../../Src/host/engine.hpp#L214)
## SHORT_PATH_CUSTOM(d__)

Type: constant

Description: 
- Param: d__

Replaced value:
```sqf
(d__) call {private _arr = _this splitString "\"; private _ret = ""; if (!isMultiplayer) then \
{ if (getMissionName in _arr) then {_ret = (_arr select [(_arr find getMissionName)+1,count _arr]) joinString "\"} else {_ret = _this}; } else { \
_ret = _this; \
}; _ret} \

```
File: [host\engine.hpp at line 215](../../../Src/host/engine.hpp#L215)
## null

Type: constant

Description: common macro


Replaced value:
```sqf
nil
```
File: [host\engine.hpp at line 223](../../../Src/host/engine.hpp#L223)
## isNull(val)

Type: constant

Description: prob correct??? (rewrite)
- Param: val

Replaced value:
```sqf
(isnil{val})
```
File: [host\engine.hpp at line 225](../../../Src/host/engine.hpp#L225)
## isNullReference(obj)

Type: constant

Description: 
- Param: obj

Replaced value:
```sqf
(isNULL (obj))
```
File: [host\engine.hpp at line 226](../../../Src/host/engine.hpp#L226)
## isNullVar(var)

Type: constant

Description: 
- Param: var

Replaced value:
```sqf
(isnil 'var')
```
File: [host\engine.hpp at line 227](../../../Src/host/engine.hpp#L227)
## defIsNull(_v,_defval)

Type: constant

Description: Определяет значение переменной
- Param: _v
- Param: _defval

Replaced value:
```sqf
if isNullVar(_v) then {_defval} else {_v}
```
File: [host\engine.hpp at line 230](../../../Src/host/engine.hpp#L230)
## outRef(var,def)

Type: constant

Description: Распаковывает ссылку на переменную из верхнего уровня если существует
- Param: var
- Param: def

Replaced value:
```sqf
var = if isNullVar(var) then {def} else {var}
```
File: [host\engine.hpp at line 232](../../../Src/host/engine.hpp#L232)
## isNullPtr(obj)

Type: constant

Description: prob correct??? (rewrite)
- Param: obj

Replaced value:
```sqf
(obj isequaltypeany [locationnull,controlnull,objnull,displaynull])
```
File: [host\engine.hpp at line 235](../../../Src/host/engine.hpp#L235)
## isReference(obj)

Type: constant

Description: 
- Param: obj

Replaced value:
```sqf
(obj isequaltypeany [locationnull,controlnull,objnull,displaynull])
```
File: [host\engine.hpp at line 237](../../../Src/host/engine.hpp#L237)
## stringEmpty

Type: constant

Description: string help


Replaced value:
```sqf
""
```
File: [host\engine.hpp at line 245](../../../Src/host/engine.hpp#L245)
## isValid(ptr)

Type: constant

Description: Осуществляет проверку значения в стиле C++. Любые nullable значения вернут false
- Param: ptr

Replaced value:
```sqf
([ptr] call rv_cppcheck)
```
File: [host\engine.hpp at line 249](../../../Src/host/engine.hpp#L249)
## valid(ptr)

Type: constant

Description: псевдоним if (valid(modlue_somevariable))
- Param: ptr

Replaced value:
```sqf
([ptr] call rv_cppcheck)
```
File: [host\engine.hpp at line 251](../../../Src/host/engine.hpp#L251)
## bool(val)

Type: constant

Description: alias to valid
- Param: val

Replaced value:
```sqf
valid(val)
```
File: [host\engine.hpp at line 253](../../../Src/host/engine.hpp#L253)
## __gptr_os

Type: constant

Description: 


Replaced value:
```sqf
(selectrandom table_hex)
```
File: [host\engine.hpp at line 256](../../../Src/host/engine.hpp#L256)
## generatePtr

Type: constant

Description: 


Replaced value:
```sqf
(__gptr_os + __gptr_os + __gptr_os + __gptr_os + __gptr_os)
```
File: [host\engine.hpp at line 257](../../../Src/host/engine.hpp#L257)
## inRange(numberToCheck,bottom,top)

Type: constant

Description: Проверка диапазона
- Param: numberToCheck
- Param: bottom
- Param: top

Replaced value:
```sqf
((numberToCheck) >= bottom && (numberToCheck) <= top)
```
File: [host\engine.hpp at line 267](../../../Src/host/engine.hpp#L267)
## boolToInt(bval)

Type: constant

Description: 
- Param: bval

Replaced value:
```sqf
([0,1]select (bval))
```
File: [host\engine.hpp at line 269](../../../Src/host/engine.hpp#L269)
## precentage(checked,precval)

Type: constant

Description: получить процент от числа
- Param: checked
- Param: precval

Replaced value:
```sqf
((checked)*(precval)/100)
```
File: [host\engine.hpp at line 272](../../../Src/host/engine.hpp#L272)
## formatTime(secs)

Type: constant

Description: формат в игровое время мин и сек (часы вряд-ли где-то юзаются)
- Param: secs

Replaced value:
```sqf
(secs call{format["%1 мин. %2 сек.",floor(_this / 60),_this % 60]})
```
File: [host\engine.hpp at line 275](../../../Src/host/engine.hpp#L275)
## t_asMin(s)

Type: constant

Description: форматирование времени: каст секунды в минуты
- Param: s

Replaced value:
```sqf
((s)*60)
```
File: [host\engine.hpp at line 278](../../../Src/host/engine.hpp#L278)
## t_asHrs(s)

Type: constant

Description: 
- Param: s

Replaced value:
```sqf
((s)*3600)
```
File: [host\engine.hpp at line 279](../../../Src/host/engine.hpp#L279)
## INFINITY

Type: constant

Description: 


Replaced value:
```sqf
1e39
```
File: [host\engine.hpp at line 281](../../../Src/host/engine.hpp#L281)
## INC(var)

Type: constant

Description: 
- Param: var

Replaced value:
```sqf
var = var+1
```
File: [host\engine.hpp at line 283](../../../Src/host/engine.hpp#L283)
## DEC(var)

Type: constant

Description: 
- Param: var

Replaced value:
```sqf
var = var-1
```
File: [host\engine.hpp at line 284](../../../Src/host/engine.hpp#L284)
## MOD(var,val)

Type: constant

Description: Возможно тут проблема при конкатенации строк с присутствием в них запятых
- Param: var
- Param: val

Replaced value:
```sqf
var = var val
```
File: [host\engine.hpp at line 287](../../../Src/host/engine.hpp#L287)
## modvar(var)

Type: constant

Description: 
- Param: var

Replaced value:
```sqf
var = var
```
File: [host\engine.hpp at line 288](../../../Src/host/engine.hpp#L288)
## MODARR(var,index,modif)

Type: constant

Description: array helpers
- Param: var
- Param: index
- Param: modif

Replaced value:
```sqf
var set[index,(var select(index)) modif]
```
File: [host\engine.hpp at line 291](../../../Src/host/engine.hpp#L291)
## SETARR(arr,index,val)

Type: constant

Description: 
- Param: arr
- Param: index
- Param: val

Replaced value:
```sqf
arr set[index,val]
```
File: [host\engine.hpp at line 292](../../../Src/host/engine.hpp#L292)
## GETARR(arr,index)

Type: constant

Description: 
- Param: arr
- Param: index

Replaced value:
```sqf
arr select(index)
```
File: [host\engine.hpp at line 293](../../../Src/host/engine.hpp#L293)
## array_exists(arr,var)

Type: constant

Description: 
- Param: arr
- Param: var

Replaced value:
```sqf
((var)in arr)
```
File: [host\engine.hpp at line 295](../../../Src/host/engine.hpp#L295)
## array_shuffle(array)

Type: constant

Description: рандомный сорт массива
- Param: array

Replaced value:
```sqf
(array call BIS_fnc_arrayShuffle)
```
File: [host\engine.hpp at line 297](../../../Src/host/engine.hpp#L297)
## array_copy(array)

Type: constant

Description: копирование массива
- Param: array

Replaced value:
```sqf
(+(array))
```
File: [host\engine.hpp at line 299](../../../Src/host/engine.hpp#L299)
## array_remlast(arr)

Type: constant

Description: poplast
- Param: arr

Replaced value:
```sqf
(arr call {_this deleteAt (count _this - 1)})
```
File: [host\engine.hpp at line 301](../../../Src/host/engine.hpp#L301)
## array_selectlast(arr)

Type: constant

Description: select last item
- Param: arr

Replaced value:
```sqf
(arr call {_this select (count _this - 1)})
```
File: [host\engine.hpp at line 303](../../../Src/host/engine.hpp#L303)
## array_isempty(arr)

Type: constant

Description: check if array empty
- Param: arr

Replaced value:
```sqf
(count(arr)==0)
```
File: [host\engine.hpp at line 305](../../../Src/host/engine.hpp#L305)
## array_count(arr)

Type: constant

Description: check array elements count
- Param: arr

Replaced value:
```sqf
(count (arr))
```
File: [host\engine.hpp at line 307](../../../Src/host/engine.hpp#L307)
## array_remove(array,el)

Type: constant

Description: 
- Param: array
- Param: el

Replaced value:
```sqf
([array,el] call {params["_a","_e"]; _a deleteAt(_a find _e)})
```
File: [host\engine.hpp at line 309](../../../Src/host/engine.hpp#L309)
## vec1(x)

Type: constant

Description: 
- Param: x

Replaced value:
```sqf
[x]
```
File: [host\engine.hpp at line 311](../../../Src/host/engine.hpp#L311)
## vec2(x,y)

Type: constant

Description: 
- Param: x
- Param: y

Replaced value:
```sqf
[x,y]
```
File: [host\engine.hpp at line 312](../../../Src/host/engine.hpp#L312)
## vec3(x,y,z)

Type: constant

Description: 
- Param: x
- Param: y
- Param: z

Replaced value:
```sqf
[x,y,z]
```
File: [host\engine.hpp at line 313](../../../Src/host/engine.hpp#L313)
## vec4(x,y,w,h)

Type: constant

Description: 
- Param: x
- Param: y
- Param: w
- Param: h

Replaced value:
```sqf
[x,y,w,h]
```
File: [host\engine.hpp at line 314](../../../Src/host/engine.hpp#L314)
## refcreate(value)

Type: constant

Description: reference packer
- Param: value

Replaced value:
```sqf
[value]
```
File: [host\engine.hpp at line 318](../../../Src/host/engine.hpp#L318)
## refget(val)

Type: constant

Description: 
- Param: val

Replaced value:
```sqf
(val select 0)
```
File: [host\engine.hpp at line 319](../../../Src/host/engine.hpp#L319)
## refset(ref,newvalue)

Type: constant

Description: 
- Param: ref
- Param: newvalue

Replaced value:
```sqf
ref set[0,newvalue]
```
File: [host\engine.hpp at line 320](../../../Src/host/engine.hpp#L320)
## refunpack(ref)

Type: constant

Description: 
- Param: ref

Replaced value:
```sqf
ref = (ref select 0)
```
File: [host\engine.hpp at line 321](../../../Src/host/engine.hpp#L321)
## __ptr_struct_internal__(address,value)

Type: constant

Description: 
- Param: address
- Param: value

Replaced value:
```sqf
vec2(address,value)
```
File: [host\engine.hpp at line 340](../../../Src/host/engine.hpp#L340)
## nullptr

Type: constant

Description: 


Replaced value:
```sqf
ptr_cnl
```
File: [host\engine.hpp at line 341](../../../Src/host/engine.hpp#L341)
## ptr_alloc(initial)

Type: constant

Description: 
- Param: initial

Replaced value:
```sqf
((initial)call ptr_create)
```
File: [host\engine.hpp at line 342](../../../Src/host/engine.hpp#L342)
## ptr_free(refval)

Type: constant

Description: 
- Param: refval

Replaced value:
```sqf
((refval)call ptr_destroy)
```
File: [host\engine.hpp at line 343](../../../Src/host/engine.hpp#L343)
## PTR_STRUCT_ADDRESS

Type: constant

Description: internal ptr helpers


Replaced value:
```sqf
0
```
File: [host\engine.hpp at line 345](../../../Src/host/engine.hpp#L345)
## PTR_STRUCT_VALUE

Type: constant

Description: 


Replaced value:
```sqf
1
```
File: [host\engine.hpp at line 346](../../../Src/host/engine.hpp#L346)
## ptr_address(p)

Type: constant

Description: simple commands
- Param: p

Replaced value:
```sqf
((p)call ptr_cts)
```
File: [host\engine.hpp at line 348](../../../Src/host/engine.hpp#L348)
## ptr_read(p)

Type: constant

Description: 
- Param: p

Replaced value:
```sqf
((p)select PTR_STRUCT_VALUE)
```
File: [host\engine.hpp at line 349](../../../Src/host/engine.hpp#L349)
## ptr_write(p,v)

Type: constant

Description: 
- Param: p
- Param: v

Replaced value:
```sqf
(p)set[PTR_STRUCT_VALUE,v]
```
File: [host\engine.hpp at line 350](../../../Src/host/engine.hpp#L350)
## ptr_modvar(p)

Type: constant

Description: functionality
- Param: p

Replaced value:
```sqf
_poldvm_g_=0;(p call ptr_remval)pushBack _poldvm_g_
```
File: [host\engine.hpp at line 352](../../../Src/host/engine.hpp#L352)
## ptr_inc(p)

Type: constant

Description: 
- Param: p

Replaced value:
```sqf
_poldvs_g_=(p)select PTR_STRUCT_VALUE;p set[PTR_STRUCT_VALUE,_poldvs_g_+1];
```
File: [host\engine.hpp at line 353](../../../Src/host/engine.hpp#L353)
## ptr_dec(p)

Type: constant

Description: 
- Param: p

Replaced value:
```sqf
_poldvs_g_=(p)select PTR_STRUCT_VALUE;p set[PTR_STRUCT_VALUE,_poldvs_g_-1];
```
File: [host\engine.hpp at line 354](../../../Src/host/engine.hpp#L354)
## ptr(p)

Type: constant

Description: simple commands
- Param: p

Replaced value:
```sqf
_poldvm_g_=0;(p call ptr_remval)pushBack
```
File: [host\engine.hpp at line 342](../../../Src/host/engine.hpp#L342)
## isptr(p)

Type: constant

Description: check is ptr
- Param: p

Replaced value:
```sqf
((p)call ptr_check)
```
File: [host\engine.hpp at line 358](../../../Src/host/engine.hpp#L358)
## hashSet_createEmpty()

Type: constant

Description: hash set
- Param: 

Replaced value:
```sqf
createHashMap
```
File: [host\engine.hpp at line 361](../../../Src/host/engine.hpp#L361)
## hashSet_create(keys)

Type: constant

Description: hash set
- Param: keys

Replaced value:
```sqf
((keys)createHashMapFromArray [])
```
File: [host\engine.hpp at line 361](../../../Src/host/engine.hpp#L361)
## hashSet_createList(vals)

Type: constant

Description: 
- Param: vals

Replaced value:
```sqf
([vals]createHashMapFromArray [])
```
File: [host\engine.hpp at line 363](../../../Src/host/engine.hpp#L363)
## hashSet_add(hash,item)

Type: constant

Description: 
- Param: hash
- Param: item

Replaced value:
```sqf
(hash)set [item,nil]
```
File: [host\engine.hpp at line 364](../../../Src/host/engine.hpp#L364)
## hashSet_toArray(hash)

Type: constant

Description: 
- Param: hash

Replaced value:
```sqf
(keys(hash))
```
File: [host\engine.hpp at line 365](../../../Src/host/engine.hpp#L365)
## hashSet_rem(hash,item)

Type: constant

Description: 
- Param: hash
- Param: item

Replaced value:
```sqf
(hash)deleteAt (item)
```
File: [host\engine.hpp at line 366](../../../Src/host/engine.hpp#L366)
## hashSet_exists(hash,item)

Type: constant

Description: 
- Param: hash
- Param: item

Replaced value:
```sqf
((item)in(hash))
```
File: [host\engine.hpp at line 367](../../../Src/host/engine.hpp#L367)
## hashSet_count(hash)

Type: constant

Description: 
- Param: hash

Replaced value:
```sqf
(count(hash))
```
File: [host\engine.hpp at line 368](../../../Src/host/engine.hpp#L368)
## hashSet_clear(hash)

Type: constant

Description: 
- Param: hash

Replaced value:
```sqf
(hash)call{{_this deleteat _x}foreach +_this}
```
File: [host\engine.hpp at line 369](../../../Src/host/engine.hpp#L369)
## hashSet_copyFrom(hash,merged)

Type: constant

Description: 
- Param: hash
- Param: merged

Replaced value:
```sqf
(hash)merge (merged)
```
File: [host\engine.hpp at line 370](../../../Src/host/engine.hpp#L370)
## hashMapNew

Type: constant

Description: hashmap


Replaced value:
```sqf
createHashMap
```
File: [host\engine.hpp at line 373](../../../Src/host/engine.hpp#L373)
## hashMapNewArgs

Type: constant

Description: 


Replaced value:
```sqf
createHashMapFromArray
```
File: [host\engine.hpp at line 374](../../../Src/host/engine.hpp#L374)
## prop(varname)

Type: constant

Description: 
- Param: varname

Replaced value:
```sqf
varname
```
File: [host\engine.hpp at line 395](../../../Src/host/engine.hpp#L395)
## onpropset(varname)

Type: constant

Description: 
- Param: varname

Replaced value:
```sqf
varname##_set
```
File: [host\engine.hpp at line 396](../../../Src/host/engine.hpp#L396)
## onpropget(varname)

Type: constant

Description: 
- Param: varname

Replaced value:
```sqf
varname##_get
```
File: [host\engine.hpp at line 397](../../../Src/host/engine.hpp#L397)
## propset(varname,val)

Type: constant

Description: 
- Param: varname
- Param: val

Replaced value:
```sqf
val call onpropset(varname)
```
File: [host\engine.hpp at line 398](../../../Src/host/engine.hpp#L398)
## propget(varname)

Type: constant

Description: 
- Param: varname

Replaced value:
```sqf
call onpropget(varname)
```
File: [host\engine.hpp at line 399](../../../Src/host/engine.hpp#L399)
## objectAddEventHandler

Type: constant

Description: preprocessing protect to native function eventhandler


Replaced value:
```sqf
ADDEVENTHANDLER
```
File: [host\engine.hpp at line 418](../../../Src/host/engine.hpp#L418)
## __eventHandlerName__(varname)

Type: constant

Description: 
- Param: varname

Replaced value:
```sqf
varname##_evh
```
File: [host\engine.hpp at line 420](../../../Src/host/engine.hpp#L420)
## eventHandlerArgs

Type: constant

Description: 


Replaced value:
```sqf
_evhargs__
```
File: [host\engine.hpp at line 421](../../../Src/host/engine.hpp#L421)
## registerEventHandler(varname)

Type: constant

Description: 
- Param: varname

Replaced value:
```sqf
__eventHandlerName__(varname) = []
```
File: [host\engine.hpp at line 422](../../../Src/host/engine.hpp#L422)
## addEventHandler(varname,val)

Type: constant

Description: 
- Param: varname
- Param: val

Replaced value:
```sqf
__eventHandlerName__(varname) pushBack (val)
```
File: [host\engine.hpp at line 423](../../../Src/host/engine.hpp#L423)
## removeEventHandler(varname,val)

Type: constant

Description: 
- Param: varname
- Param: val

Replaced value:
```sqf
__eventHandlerName__(varname) deleteat (__eventHandlerName__(varname) find (val))
```
File: [host\engine.hpp at line 424](../../../Src/host/engine.hpp#L424)
## callEventHandler(varname,evhargs)

Type: constant

Description: 
- Param: varname
- Param: evhargs

Replaced value:
```sqf
private eventHandlerArgs = evhargs; {call _x;true} count __eventHandlerName__(varname)
```
File: [host\engine.hpp at line 425](../../../Src/host/engine.hpp#L425)
## equals(obja,objb)

Type: constant

Description: comparison
- Param: obja
- Param: objb

Replaced value:
```sqf
((obja)isequalto(objb))
```
File: [host\engine.hpp at line 429](../../../Src/host/engine.hpp#L429)
## not_equals(obja,objb)

Type: constant

Description: 
- Param: obja
- Param: objb

Replaced value:
```sqf
((obja)isnotequalto(objb))
```
File: [host\engine.hpp at line 430](../../../Src/host/engine.hpp#L430)
## equalTypes(obja,objb)

Type: constant

Description: 
- Param: obja
- Param: objb

Replaced value:
```sqf
((obja)isequaltype(objb))
```
File: [host\engine.hpp at line 433](../../../Src/host/engine.hpp#L433)
## not_equalTypes(obja,objb)

Type: constant

Description: 
- Param: obja
- Param: objb

Replaced value:
```sqf
(!equalTypes(obja,objb))
```
File: [host\engine.hpp at line 434](../../../Src/host/engine.hpp#L434)
## all_of(values)

Type: constant

Description: algorithm
- Param: values

Replaced value:
```sqf
([values] call allOf)
```
File: [host\engine.hpp at line 437](../../../Src/host/engine.hpp#L437)
## any_of(values)

Type: constant

Description: 
- Param: values

Replaced value:
```sqf
([values] call anyOf)
```
File: [host\engine.hpp at line 438](../../../Src/host/engine.hpp#L438)
## none_of(values)

Type: constant

Description: 
- Param: values

Replaced value:
```sqf
([values] call noneOf)
```
File: [host\engine.hpp at line 439](../../../Src/host/engine.hpp#L439)
## pick

Type: constant

Description: random helpers


Replaced value:
```sqf
selectRandom
```
File: [host\engine.hpp at line 442](../../../Src/host/engine.hpp#L442)
## rand(_beg,_end)

Type: constant

Description: выбор рандомного числа включительно Bis_fnc_randomNum
- Param: _beg
- Param: _end

Replaced value:
```sqf
(linearConversion [0,1,random 1,_beg,_end])
```
File: [host\engine.hpp at line 444](../../../Src/host/engine.hpp#L444)
## randInt(_beg,_end)

Type: constant

Description: BIS_fnc_randomInt
- Param: _beg
- Param: _end

Replaced value:
```sqf
(FLOOR linearConversion [0,1,random 1,(_beg)min(_end),(_end)max(_beg)+1])
```
File: [host\engine.hpp at line 446](../../../Src/host/engine.hpp#L446)
## prob(val)

Type: constant

Description: 
- Param: val

Replaced value:
```sqf
(random[0,50,100]<(val))
```
File: [host\engine.hpp at line 448](../../../Src/host/engine.hpp#L448)
## pow(a,b)

Type: constant

Description: math helpers
- Param: a
- Param: b

Replaced value:
```sqf
((a) ^ (b))
```
File: [host\engine.hpp at line 451](../../../Src/host/engine.hpp#L451)
## clamp(val,__min,__max)

Type: constant

Description: Ограничение числа
- Param: val
- Param: __min
- Param: __max

Replaced value:
```sqf
((val)max(__min)min(__max))
```
File: [host\engine.hpp at line 454](../../../Src/host/engine.hpp#L454)
## clampangle(x,a,b)

Type: constant

Description: 
- Param: x
- Param: a
- Param: b

Replaced value:
```sqf
(((((x) % 360 + 360) % 360) max (a)) min (b))
```
File: [host\engine.hpp at line 456](../../../Src/host/engine.hpp#L456)
## parseNumberSafe(v)

Type: constant

Description: 
- Param: v

Replaced value:
```sqf
((parseNumber (v)) call {if(finite _this) then {_this} else {0}})
```
File: [host\engine.hpp at line 458](../../../Src/host/engine.hpp#L458)
## netTickTime

Type: constant

Description: delay subsystem


Replaced value:
```sqf
CBA_missionTime
```
File: [host\engine.hpp at line 462](../../../Src/host/engine.hpp#L462)
## tickTime

Type: constant

Description: 


Replaced value:
```sqf
diag_tickTime
```
File: [host\engine.hpp at line 463](../../../Src/host/engine.hpp#L463)
## deltaTime

Type: constant

Description: 


Replaced value:
```sqf
diag_deltaTime
```
File: [host\engine.hpp at line 464](../../../Src/host/engine.hpp#L464)
## __alloc_thread_loc__

Type: constant

> Exists if **EDITOR** defined

Description: 


Replaced value:
```sqf
(cba_common_perFrameHandlerArray select -1) set [6,format["%1 at line %2",[__FILE__,getMissionPath "",""] call stringReplace,__LINE__]]; \
		(cba_common_perFrameHandlerArray select -1) set [7,diag_stacktrace]
```
File: [host\engine.hpp at line 467](../../../Src/host/engine.hpp#L467)
## startUpdate(func,delay)

Type: constant

> Exists if **EDITOR** defined

Description: 
- Param: func
- Param: delay

Replaced value:
```sqf
[func,delay] call CBA_fnc_addPerFrameHandler
```
File: [host\engine.hpp at line 470](../../../Src/host/engine.hpp#L470)
## startUpdateParams(func,delay,params)

Type: constant

> Exists if **EDITOR** defined

Description: 
- Param: func
- Param: delay
- Param: params

Replaced value:
```sqf
call{private _h = [func,delay,params] call CBA_fnc_addPerFrameHandler; __alloc_thread_loc__; _h}
```
File: [host\engine.hpp at line 470](../../../Src/host/engine.hpp#L470)
## startUpdateParams(func,delay,params)

Type: constant

> Exists if **EDITOR** not defined

Description: 
- Param: func
- Param: delay
- Param: params

Replaced value:
```sqf
[func,delay,params] call CBA_fnc_addPerFrameHandler
```
File: [host\engine.hpp at line 473](../../../Src/host/engine.hpp#L473)
## stopUpdate(handle)

Type: constant

Description: 
- Param: handle

Replaced value:
```sqf
handle call CBA_fnc_removePerFrameHandler
```
File: [host\engine.hpp at line 476](../../../Src/host/engine.hpp#L476)
## thisUpdate

Type: constant

Description: 


Replaced value:
```sqf
(_this select 1)
```
File: [host\engine.hpp at line 478](../../../Src/host/engine.hpp#L478)
## stopThisUpdate()

Type: constant

Description: 
- Param: 

Replaced value:
```sqf
stopUpdate(_this select 1)
```
File: [host\engine.hpp at line 480](../../../Src/host/engine.hpp#L480)
## changeUpdateTime(handle,newTime)

Type: constant

Description: 
- Param: handle
- Param: newTime

Replaced value:
```sqf
(call {if (handle < 0 || newTime < 0) exitWith {false}; \
cba_common_perFrameHandlerArray select (handle) set [1,newTime]; true})
```
File: [host\engine.hpp at line 482](../../../Src/host/engine.hpp#L482)
## changeThisUpdateTime(newTime)

Type: constant

Description: 
- Param: newTime

Replaced value:
```sqf
changeUpdateTime(thisUpdate,newTime)
```
File: [host\engine.hpp at line 485](../../../Src/host/engine.hpp#L485)
## getThisCodeInTimeEvent(varname)

Type: constant

Description: 
- Param: varname

Replaced value:
```sqf
varname = _x select 1
```
File: [host\engine.hpp at line 487](../../../Src/host/engine.hpp#L487)
## nextFrame(code)

Type: constant

Description: 
- Param: code

Replaced value:
```sqf
[code] call CBA_fnc_execNextFrame
```
File: [host\engine.hpp at line 489](../../../Src/host/engine.hpp#L489)
## nextFrameParams(code,args)

Type: constant

Description: 
- Param: code
- Param: args

Replaced value:
```sqf
[code,args] call CBA_fnc_execNextFrame
```
File: [host\engine.hpp at line 490](../../../Src/host/engine.hpp#L490)
## invokeAfterDelay(code,delay)

Type: constant

Description: 
- Param: code
- Param: delay

Replaced value:
```sqf
[code,[],delay] call CBA_fnc_waitAndExecute
```
File: [host\engine.hpp at line 492](../../../Src/host/engine.hpp#L492)
## invokeAfterDelayParams(code,delay,params)

Type: constant

Description: 
- Param: code
- Param: delay
- Param: params

Replaced value:
```sqf
[code,params,delay] call CBA_fnc_waitAndExecute
```
File: [host\engine.hpp at line 493](../../../Src/host/engine.hpp#L493)
## deferred

Type: constant

Description: 


Replaced value:
```sqf
__cframe__=
```
File: [host\engine.hpp at line 504](../../../Src/host/engine.hpp#L504)
## doInvoke(delay)

Type: constant

Description: 
- Param: delay

Replaced value:
```sqf
;invokeAfterDelay(__cframe__,delay)
```
File: [host\engine.hpp at line 505](../../../Src/host/engine.hpp#L505)
## doInvokeParams(delay,_prms)

Type: constant

Description: 
- Param: delay
- Param: _prms

Replaced value:
```sqf
;invokeAfterDelayParams(__cframe__,delay,_prms)
```
File: [host\engine.hpp at line 506](../../../Src/host/engine.hpp#L506)
## asyncInvoke(c_condit,c_state,args,timeout,c_tim)

Type: constant

Description: 
- Param: c_condit
- Param: c_state
- Param: args
- Param: timeout
- Param: c_tim

Replaced value:
```sqf
[c_condit, c_state, args,timeout,c_tim] call CBA_fnc_waitUntilAndExecute
```
File: [host\engine.hpp at line 508](../../../Src/host/engine.hpp#L508)
## startAsyncInvoke

Type: constant

Description: 


Replaced value:
```sqf
[
```
File: [host\engine.hpp at line 510](../../../Src/host/engine.hpp#L510)
## endAsyncInvoke

Type: constant

Description: 


Replaced value:
```sqf
] call CBA_fnc_waitUntilAndExecute;
```
File: [host\engine.hpp at line 511](../../../Src/host/engine.hpp#L511)
## ifcheck(val,_trueval,_falseval)

Type: constant

Description: lang helpers
- Param: val
- Param: _trueval
- Param: _falseval

Replaced value:
```sqf
(if(val)then{_trueval}else{_falseval})
```
File: [host\engine.hpp at line 516](../../../Src/host/engine.hpp#L516)
## FHEADER

Type: constant

Description: 


Replaced value:
```sqf
scopename "main"
```
File: [host\engine.hpp at line 518](../../../Src/host/engine.hpp#L518)
## RETURN(val)

Type: constant

Description: 
- Param: val

Replaced value:
```sqf
(val) breakout "main"
```
File: [host\engine.hpp at line 520](../../../Src/host/engine.hpp#L520)
## IF(val)

Type: constant

Description: 
- Param: val

Replaced value:
```sqf
if (val) then
```
File: [host\engine.hpp at line 522](../../../Src/host/engine.hpp#L522)
## IF_EXIT(val)

Type: constant

Description: 
- Param: val

Replaced value:
```sqf
if (val) exitwith
```
File: [host\engine.hpp at line 524](../../../Src/host/engine.hpp#L524)
## IF_RET(val,ret)

Type: constant

Description: 
- Param: val
- Param: ret

Replaced value:
```sqf
if (val) then {RETURN(ret)}
```
File: [host\engine.hpp at line 526](../../../Src/host/engine.hpp#L526)
## FOR(init,start,end)

Type: constant

Description: 
- Param: init
- Param: start
- Param: end

Replaced value:
```sqf
for #init from start to end do
```
File: [host\engine.hpp at line 528](../../../Src/host/engine.hpp#L528)
## WHILE(cond)

Type: constant

Description: 
- Param: cond

Replaced value:
```sqf
while {cond} do
```
File: [host\engine.hpp at line 530](../../../Src/host/engine.hpp#L530)
## SWITCH(cond)

Type: constant

Description: 
- Param: cond

Replaced value:
```sqf
switch(cond) do
```
File: [host\engine.hpp at line 532](../../../Src/host/engine.hpp#L532)
## CASE(cond)

Type: constant

Description: 
- Param: cond

Replaced value:
```sqf
case (cond) :
```
File: [host\engine.hpp at line 534](../../../Src/host/engine.hpp#L534)
## fswitch(val)

Type: constant

Description: extended language helpers
- Param: val

Replaced value:
```sqf
(val) call
```
File: [host\engine.hpp at line 537](../../../Src/host/engine.hpp#L537)
## fcase(val)

Type: constant

Description: 
- Param: val

Replaced value:
```sqf
if equals(_this,val) exitWith
```
File: [host\engine.hpp at line 538](../../../Src/host/engine.hpp#L538)
## fcasein(values)

Type: constant

Description: 
- Param: values

Replaced value:
```sqf
if (_this in (values)) exitWith
```
File: [host\engine.hpp at line 539](../../../Src/host/engine.hpp#L539)
## soundDataDef(path)

Type: constant

Description: sound engine
- Param: path

Replaced value:
```sqf
[path]
```
File: [host\engine.hpp at line 544](../../../Src/host/engine.hpp#L544)
## soundData(path,pithmin,pithmax)

Type: constant

Description: sound engine
- Param: path
- Param: pithmin
- Param: pithmax

Replaced value:
```sqf
[path,pithmin,pithmax]
```
File: [host\engine.hpp at line 544](../../../Src/host/engine.hpp#L544)
## getRandomPitch

Type: constant

Description: Получает рандомный питч от 0.5 до 2


Replaced value:
```sqf
(linearConversion [0, 1, random 1, 0.5, 2])
```
File: [host\engine.hpp at line 548](../../../Src/host/engine.hpp#L548)
## getRandomPitchInRange(low,up)

Type: constant

Description: 
- Param: low
- Param: up

Replaced value:
```sqf
(linearConversion [0, 1, random 1,low, up])
```
File: [host\engine.hpp at line 550](../../../Src/host/engine.hpp#L550)
## criptPtr_index

Type: constant

> Exists if **DISABLE_POINTER_CRIPT** defined

Description: 


Replaced value:
```sqf
0
```
File: [host\engine.hpp at line 562](../../../Src/host/engine.hpp#L562)
## criptPtr(val)

Type: constant

> Exists if **DISABLE_POINTER_CRIPT** defined

Description: 
- Param: val

Replaced value:
```sqf
(toString (toarray (val) apply {_x + criptPtr_index}))
```
File: [host\engine.hpp at line 563](../../../Src/host/engine.hpp#L563)
## criptPtr_index

Type: constant

> Exists if **DISABLE_POINTER_CRIPT** not defined

Description: 


Replaced value:
```sqf
32
```
File: [host\engine.hpp at line 565](../../../Src/host/engine.hpp#L565)
## getArmaVersion()

Type: constant

Description: versioning arma
- Param: 

Replaced value:
```sqf
(format ["%1.%2",(productVersion select 2)/100 toFixed 2,(productVersion select 3)])
```
File: [host\engine.hpp at line 570](../../../Src/host/engine.hpp#L570)
## defineModule(name)

Type: constant

> Exists if **DATA_MANAGER_ENABLED** defined

Description: определяем имя модуля
- Param: name

Replaced value:
```sqf
_thisModule = 'name';
```
File: [host\engine.hpp at line 577](../../../Src/host/engine.hpp#L577)
## global_var(var)

Type: constant

> Exists if **DATA_MANAGER_ENABLED** defined

Description: 
- Param: var

Replaced value:
```sqf
[#var,__FILE__,__LINE__,_thisModule] call gv_rv; var
```
File: [host\engine.hpp at line 579](../../../Src/host/engine.hpp#L579)
## global_func(var)

Type: constant

> Exists if **DATA_MANAGER_ENABLED** defined

Description: 
- Param: var

Replaced value:
```sqf
[#var,__FILE__,__LINE__,_thisModule] call gv_rf; var
```
File: [host\engine.hpp at line 580](../../../Src/host/engine.hpp#L580)
## __iglob_provider(var,type)

Type: constant

> Exists if **DATA_MANAGER_ENABLED** defined

Description: register for type-safety variable
- Param: var
- Param: type

Replaced value:
```sqf
[#var,type] call gv_rts
```
File: [host\engine.hpp at line 595](../../../Src/host/engine.hpp#L595)
## global_num(var)

Type: constant

> Exists if **DATA_MANAGER_ENABLED** defined

Description: 
- Param: var

Replaced value:
```sqf
__iglob_provider(var,0)
```
File: [host\engine.hpp at line 596](../../../Src/host/engine.hpp#L596)
## global_str(var)

Type: constant

> Exists if **DATA_MANAGER_ENABLED** defined

Description: 
- Param: var

Replaced value:
```sqf
__iglob_provider(var,"")
```
File: [host\engine.hpp at line 597](../../../Src/host/engine.hpp#L597)
## global_arr(var)

Type: constant

> Exists if **DATA_MANAGER_ENABLED** defined

Description: 
- Param: var

Replaced value:
```sqf
__iglob_provider(var,[])
```
File: [host\engine.hpp at line 598](../../../Src/host/engine.hpp#L598)
## global_obj(var)

Type: constant

> Exists if **DATA_MANAGER_ENABLED** defined

Description: 
- Param: var

Replaced value:
```sqf
__iglob_provider(var,objnull)
```
File: [host\engine.hpp at line 599](../../../Src/host/engine.hpp#L599)
## global_ptr(var)

Type: constant

> Exists if **DATA_MANAGER_ENABLED** defined

Description: 
- Param: var

Replaced value:
```sqf
__iglob_provider(var,locationnull)
```
File: [host\engine.hpp at line 600](../../../Src/host/engine.hpp#L600)
## __aps_on_assert_exit

Type: constant

Description: 


Replaced value:
```sqf
appExit(APPEXIT_REASON_ASSERTION_FAIL)
```
File: [host\engine.hpp at line 603](../../../Src/host/engine.hpp#L603)
## __aps_on_assert_exit

Type: constant

> Exists if **ENABLE_EXIT_ON_ASSERT** not defined

Description: 


Replaced value:
```sqf

```
File: [host\engine.hpp at line 605](../../../Src/host/engine.hpp#L605)
## __ASSERT_WEBHOOK_PREFIX__

Type: constant

Description: В режиме игры на клиенте и сервере срабатывает только при компиляции модулей скриптов


Replaced value:
```sqf
"<@&1137382730074697728> "
```
File: [host\engine.hpp at line 613](../../../Src/host/engine.hpp#L613)
## __assert_value_tostring__(val)

Type: constant

Description: 
- Param: val

Replaced value:
```sqf
'val'
```
File: [host\engine.hpp at line 615](../../../Src/host/engine.hpp#L615)
## __assert_runtime_file__

Type: constant

Description: 


Replaced value:
```sqf
__FILE__
```
File: [host\engine.hpp at line 617](../../../Src/host/engine.hpp#L617)
## __EVAL_PATH_VM__(filepath)

Type: constant

Description: 
- Param: filepath

Replaced value:
```sqf
(filepath) call { \
private _arr = (tolower _this) splitString "\/"; private _ret = ""; if ("src" in _arr) then {_ret = (_arr select [(_arr find "src"),count _arr]) joinString "\" \
} else {_ret = _this};\
_ret} \

```
File: [host\engine.hpp at line 619](../../../Src/host/engine.hpp#L619)
## __assert_runtime_file__

Type: constant

> Exists if **__VM_BUILD** defined

Description: 


Replaced value:
```sqf
__EVAL(call compile '_ref = toArray __FILE__;{if (_x <= 0)then{_ref set [_foreachindex,32]}} foreach _ref; __EVAL_PATH_VM__(TOString _ref)')
```
File: [host\engine.hpp at line 625](../../../Src/host/engine.hpp#L625)
## __assert_value_tostring__(val)

Type: constant

> Exists if **__VM_BUILD** defined

Description: 
- Param: val

Replaced value:
```sqf
'val'
```
File: [host\engine.hpp at line 626](../../../Src/host/engine.hpp#L626)
## __assert_runtime_file__

Type: constant

> Exists if **__VM_VALIDATE** defined

Description: 


Replaced value:
```sqf
__EVAL(call compile '_ref = toArray __FILE__;{if (_x <= 0)then{_ref set [_foreachindex,32]}} foreach _ref; __EVAL_PATH_VM__(TOString _ref)')
```
File: [host\engine.hpp at line 629](../../../Src/host/engine.hpp#L629)
## __assert_value_tostring__(val)

Type: constant

> Exists if **__VM_VALIDATE** defined

Description: 
- Param: val

Replaced value:
```sqf
'val'
```
File: [host\engine.hpp at line 630](../../../Src/host/engine.hpp#L630)
## __assert_static_runtime_expr1(expr)

Type: constant

Description: 
- Param: expr

Replaced value:
```sqf
if !([expr] call sys_int_evalassert) exitWith {[__assert_value_tostring__(expr),__assert_runtime_file__,__LINE__] call sys_static_assert_}
```
File: [host\engine.hpp at line 633](../../../Src/host/engine.hpp#L633)
## __assert_static_runtime_expr2(expr,message)

Type: constant

Description: 
- Param: expr
- Param: message

Replaced value:
```sqf
if !([expr] call sys_int_evalassert) exitWith {[__assert_value_tostring__(expr),__assert_runtime_file__,__LINE__,message] call sys_static_assert_}
```
File: [host\engine.hpp at line 634](../../../Src/host/engine.hpp#L634)
## __assert_static_compile_expr1(expr)

Type: constant

Description: 
- Param: expr

Replaced value:
```sqf
__EVAL(__assert_static_runtime_expr1(expr))
```
File: [host\engine.hpp at line 635](../../../Src/host/engine.hpp#L635)
## __assert_static_compile_expr2(expr,message)

Type: constant

Description: 
- Param: expr
- Param: message

Replaced value:
```sqf
__EVAL(__assert_static_runtime_expr2(expr,message))
```
File: [host\engine.hpp at line 636](../../../Src/host/engine.hpp#L636)
## __assert_runtime_expr1(expr)

Type: constant

Description: 
- Param: expr

Replaced value:
```sqf
if !([expr] call sys_int_evalassert)exitWith {[toString {expr},__assert_runtime_file__,__LINE__] call sys_assert_}
```
File: [host\engine.hpp at line 637](../../../Src/host/engine.hpp#L637)
## __assert_runtime_expr2(expr,message)

Type: constant

Description: 
- Param: expr
- Param: message

Replaced value:
```sqf
if !([expr] call sys_int_evalassert)exitWith {[toString {expr},__assert_runtime_file__,__LINE__,message] call sys_assert_}
```
File: [host\engine.hpp at line 638](../../../Src/host/engine.hpp#L638)
## static_assert(expr)

Type: constant

Description: called at compile/build; Only simple expressions without macros
- Param: expr

Replaced value:
```sqf
__assert_static_compile_expr1(expr)
```
File: [host\engine.hpp at line 643](../../../Src/host/engine.hpp#L643)
## static_assert_str(expr,message)

Type: constant

Description: see static_assert; Only simple expressions without macros
- Param: expr
- Param: message

Replaced value:
```sqf
__assert_static_runtime_expr2(expr,message)
```
File: [host\engine.hpp at line 643](../../../Src/host/engine.hpp#L643)
## assert(a)

Type: constant

Description: called at runtime; Only simple expressions without macros
- Param: a

Replaced value:
```sqf

```
File: [host\engine.hpp at line 647](../../../Src/host/engine.hpp#L647)
## assert_str(expr,message)

Type: constant

Description: 
- Param: expr
- Param: message

Replaced value:
```sqf
__assert_runtime_expr2(expr,message)
```
File: [host\engine.hpp at line 647](../../../Src/host/engine.hpp#L647)
## static_assert_str(expr,message)

Type: constant

> Exists if **__VM_BUILD** defined

Description: see static_assert; Only simple expressions without macros
- Param: expr
- Param: message

Replaced value:
```sqf
__assert_static_compile_expr2(expr,message)
```
File: [host\engine.hpp at line 653](../../../Src/host/engine.hpp#L653)
## static_assert(a)

Type: constant

> Exists if **__VM_BUILD** defined

Description: called at compile/build; Only simple expressions without macros
- Param: a

Replaced value:
```sqf

```
File: [host\engine.hpp at line 653](../../../Src/host/engine.hpp#L653)
## static_assert_str(expr,message)

Type: constant

> Exists if **__VM_VALIDATE** defined

Description: see static_assert; Only simple expressions without macros
- Param: expr
- Param: message

Replaced value:
```sqf
__assert_static_compile_expr2(expr,message)
```
File: [host\engine.hpp at line 659](../../../Src/host/engine.hpp#L659)
## __THIS_FILE_REPLACE__

Type: constant

Description: 


Replaced value:
```sqf
SHORT_PATH
```
File: [host\engine.hpp at line 662](../../../Src/host/engine.hpp#L662)
## __THIS_MODULE_REPLACE__

Type: constant

> Exists if **DISABLE_REGEX_ON_FILE** defined

Description: 


Replaced value:
```sqf
"<RUNTIME_MODULE>"
```
File: [host\engine.hpp at line 666](../../../Src/host/engine.hpp#L666)
## assert_str(a,b)

Type: constant

> Exists if **DISABLE_ASSERT** defined

Description: 
- Param: a
- Param: b

Replaced value:
```sqf

```
File: [host\engine.hpp at line 671](../../../Src/host/engine.hpp#L671)
## static_assert_str(a,b)

Type: constant

> Exists if **DISABLE_ASSERT** defined

Description: see static_assert; Only simple expressions without macros
- Param: a
- Param: b

Replaced value:
```sqf

```
File: [host\engine.hpp at line 673](../../../Src/host/engine.hpp#L673)
## __THIS_FILE_REPLACE__

Type: constant

> Exists if **DISABLE_ASSERT** defined

Description: 


Replaced value:
```sqf

```
File: [host\engine.hpp at line 674](../../../Src/host/engine.hpp#L674)
## assert(a)

Type: constant

> Exists if **DISABLE_ASSERT** defined

Description: called at runtime; Only simple expressions without macros
- Param: a

Replaced value:
```sqf

```
File: [host\engine.hpp at line 670](../../../Src/host/engine.hpp#L670)
## assert_str(a,b)

Type: constant

> Exists if **DEBUG** not defined

Description: 
- Param: a
- Param: b

Replaced value:
```sqf

```
File: [host\engine.hpp at line 680](../../../Src/host/engine.hpp#L680)
## static_assert(a)

Type: constant

> Exists if **__VM_VALIDATE** defined

Description: called at compile/build; Only simple expressions without macros
- Param: a

Replaced value:
```sqf

```
File: [host\engine.hpp at line 657](../../../Src/host/engine.hpp#L657)
## static_assert_str(a,b)

Type: constant

> Exists if **DEBUG** not defined

Description: see static_assert; Only simple expressions without macros
- Param: a
- Param: b

Replaced value:
```sqf

```
File: [host\engine.hpp at line 682](../../../Src/host/engine.hpp#L682)
## __THIS_FILE_REPLACE__

Type: constant

> Exists if **DEBUG** not defined

Description: 


Replaced value:
```sqf

```
File: [host\engine.hpp at line 684](../../../Src/host/engine.hpp#L684)
## setLastError(data__)

Type: constant

> Exists if **EDITOR** defined

Description: 
- Param: data__

Replaced value:
```sqf
([data__] call relicta_debug_setlasterror); halt
```
File: [host\engine.hpp at line 696](../../../Src/host/engine.hpp#L696)
## setLastError(data__)

Type: constant

> Exists if **EDITOR** not defined

Description: 
- Param: data__

Replaced value:
```sqf

```
File: [host\engine.hpp at line 698](../../../Src/host/engine.hpp#L698)
## exitScope(cond)

Type: constant

Description: 
- Param: cond

Replaced value:
```sqf
if (true) exitWith {cond};
```
File: [host\engine.hpp at line 702](../../../Src/host/engine.hpp#L702)
## getCallStack()

Type: constant

Description: TODO: опционально возвращаем только первые несколько функций стека вызова
- Param: 

Replaced value:
```sqf
diag_stacktrace
```
File: [host\engine.hpp at line 704](../../../Src/host/engine.hpp#L704)
## BASIC_MOB_TYPE

Type: constant

Description: common macro


Replaced value:
```sqf
"B_Survivor_F"
```
File: [host\engine.hpp at line 710](../../../Src/host/engine.hpp#L710)
## VM_COMPILER_ADDFUNC_BINARY(name,cmd)

Type: constant

Description: Пример: VM_COMPILER_ADDFUNC_UNARY(freeExtension_impl,freeExtension) -> для вызова используем: call freeExtension_impl
- Param: name
- Param: cmd

Replaced value:
```sqf
name = compile '(_this select 0) cmd (_this select 1)'
```
File: [host\engine.hpp at line 716](../../../Src/host/engine.hpp#L716)
## VM_COMPILER_ADDFUNC_UNARY(name,cmd)

Type: constant

Description: 
- Param: name
- Param: cmd

Replaced value:
```sqf
name = compile 'cmd _this'
```
File: [host\engine.hpp at line 717](../../../Src/host/engine.hpp#L717)
## VM_COMPILER_ADDFUNC_NULAR(name,cmd)

Type: constant

Description: 
- Param: name
- Param: cmd

Replaced value:
```sqf
name = compile 'cmd'
```
File: [host\engine.hpp at line 718](../../../Src/host/engine.hpp#L718)
## editor_only(any)

Type: constant

> Exists if **EDITOR** defined

Description: 
- Param: any

Replaced value:
```sqf
any
```
File: [host\engine.hpp at line 722](../../../Src/host/engine.hpp#L722)
## editor_conditional(ed__,noted__)

Type: constant

> Exists if **EDITOR** defined

Description: 
- Param: ed__
- Param: noted__

Replaced value:
```sqf
ed__
```
File: [host\engine.hpp at line 723](../../../Src/host/engine.hpp#L723)
## editor_only(any)

Type: constant

> Exists if **EDITOR** not defined

Description: 
- Param: any

Replaced value:
```sqf

```
File: [host\engine.hpp at line 725](../../../Src/host/engine.hpp#L725)
## editor_conditional(ed__,noted__)

Type: constant

> Exists if **EDITOR** not defined

Description: 
- Param: ed__
- Param: noted__

Replaced value:
```sqf
noted__
```
File: [host\engine.hpp at line 726](../../../Src/host/engine.hpp#L726)
## IS_INIT_MODULE

Type: constant

Description: макрос проверки разрешения инициализации модуля (для генератора биндингов)


Replaced value:
```sqf
isNullVar(__FUNCITONS_LOAD_ONLY__)
```
File: [host\engine.hpp at line 733](../../../Src/host/engine.hpp#L733)
## node_var

Type: constant

Description: 


Replaced value:
```sqf
call nodegen_addClassField;
```
File: [host\engine.hpp at line 745](../../../Src/host/engine.hpp#L745)
## node_met

Type: constant

Description: 


Replaced value:
```sqf
call nodegen_addClassMethod;
```
File: [host\engine.hpp at line 791](../../../Src/host/engine.hpp#L791)
## node_class

Type: constant

Description: 


Replaced value:
```sqf
call nodegen_addClass;
```
File: [host\engine.hpp at line 798](../../../Src/host/engine.hpp#L798)
## node_func(name)

Type: constant

Description: 
- Param: name

Replaced value:
```sqf
+ endl+ 'node:name' call nodegen_addFunction; name
```
File: [host\engine.hpp at line 809](../../../Src/host/engine.hpp#L809)
## node_system

Type: constant

Description: Регистрация системного узла


Replaced value:
```sqf
call nodegen_addSystemNode;
```
File: [host\engine.hpp at line 812](../../../Src/host/engine.hpp#L812)
## node_enum

Type: constant

Description: ! Этот макрос нельзя вырезать из компиляции. Он генерирует статические члены


Replaced value:
```sqf
call nodegen_addEnumerator;
```
File: [host\engine.hpp at line 835](../../../Src/host/engine.hpp#L835)
## node_struct

Type: constant

Description: 


Replaced value:
```sqf
call nodegen_addStruct;
```
File: [host\engine.hpp at line 849](../../../Src/host/engine.hpp#L849)
## node_system_group(gname)

Type: constant

Description: 
- Param: gname

Replaced value:
```sqf
__nsys_grp = gname;
```
File: [host\engine.hpp at line 865](../../../Src/host/engine.hpp#L865)
# init.sqf

## server_loadingState

Type: Variable

Description: 


Initial value:
```sqf
1
```
File: [host\init.sqf at line 97](../../../Src/host/init.sqf#L97)
# keyboard.hpp

## KEY_ESCAPE

Type: constant

Description: 


Replaced value:
```sqf
0x01
```
File: [host\keyboard.hpp at line 6](../../../Src/host/keyboard.hpp#L6)
## KEY_1

Type: constant

Description: 


Replaced value:
```sqf
0x02
```
File: [host\keyboard.hpp at line 7](../../../Src/host/keyboard.hpp#L7)
## KEY_2

Type: constant

Description: 


Replaced value:
```sqf
0x03
```
File: [host\keyboard.hpp at line 8](../../../Src/host/keyboard.hpp#L8)
## KEY_3

Type: constant

Description: 


Replaced value:
```sqf
0x04
```
File: [host\keyboard.hpp at line 9](../../../Src/host/keyboard.hpp#L9)
## KEY_4

Type: constant

Description: 


Replaced value:
```sqf
0x05
```
File: [host\keyboard.hpp at line 10](../../../Src/host/keyboard.hpp#L10)
## KEY_5

Type: constant

Description: 


Replaced value:
```sqf
0x06
```
File: [host\keyboard.hpp at line 11](../../../Src/host/keyboard.hpp#L11)
## KEY_6

Type: constant

Description: 


Replaced value:
```sqf
0x07
```
File: [host\keyboard.hpp at line 12](../../../Src/host/keyboard.hpp#L12)
## KEY_7

Type: constant

Description: 


Replaced value:
```sqf
0x08
```
File: [host\keyboard.hpp at line 13](../../../Src/host/keyboard.hpp#L13)
## KEY_8

Type: constant

Description: 


Replaced value:
```sqf
0x09
```
File: [host\keyboard.hpp at line 14](../../../Src/host/keyboard.hpp#L14)
## KEY_9

Type: constant

Description: 


Replaced value:
```sqf
0x0A
```
File: [host\keyboard.hpp at line 15](../../../Src/host/keyboard.hpp#L15)
## KEY_0

Type: constant

Description: 


Replaced value:
```sqf
0x0B
```
File: [host\keyboard.hpp at line 16](../../../Src/host/keyboard.hpp#L16)
## KEY_MINUS

Type: constant

Description: 


Replaced value:
```sqf
0x0C    /* - on main keyboard */
```
File: [host\keyboard.hpp at line 17](../../../Src/host/keyboard.hpp#L17)
## KEY_EQUALS

Type: constant

Description: 


Replaced value:
```sqf
0x0D
```
File: [host\keyboard.hpp at line 18](../../../Src/host/keyboard.hpp#L18)
## KEY_BACK

Type: constant

Description: 


Replaced value:
```sqf
0x0E    /* backspace */
```
File: [host\keyboard.hpp at line 19](../../../Src/host/keyboard.hpp#L19)
## KEY_TAB

Type: constant

Description: backspace


Replaced value:
```sqf
0x0F
```
File: [host\keyboard.hpp at line 20](../../../Src/host/keyboard.hpp#L20)
## KEY_Q

Type: constant

Description: 


Replaced value:
```sqf
0x10
```
File: [host\keyboard.hpp at line 21](../../../Src/host/keyboard.hpp#L21)
## KEY_W

Type: constant

Description: System Sleep


Replaced value:
```sqf
0x11
```
File: [host\keyboard.hpp at line 22](../../../Src/host/keyboard.hpp#L22)
## KEY_E

Type: constant

Description: 


Replaced value:
```sqf
0x12
```
File: [host\keyboard.hpp at line 6](../../../Src/host/keyboard.hpp#L6)
## KEY_R

Type: constant

Description: Enter on numeric keypad


Replaced value:
```sqf
0x13
```
File: [host\keyboard.hpp at line 24](../../../Src/host/keyboard.hpp#L24)
## KEY_T

Type: constant

Description: backspace


Replaced value:
```sqf
0x14
```
File: [host\keyboard.hpp at line 20](../../../Src/host/keyboard.hpp#L20)
## KEY_Y

Type: constant

Description: 


Replaced value:
```sqf
0x15
```
File: [host\keyboard.hpp at line 26](../../../Src/host/keyboard.hpp#L26)
## KEY_U

Type: constant

Description: Home on arrow keypad


Replaced value:
```sqf
0x16
```
File: [host\keyboard.hpp at line 27](../../../Src/host/keyboard.hpp#L27)
## KEY_I

Type: constant

Description: PgDn on arrow keypad


Replaced value:
```sqf
0x17
```
File: [host\keyboard.hpp at line 28](../../../Src/host/keyboard.hpp#L28)
## KEY_O

Type: constant

Description: 


Replaced value:
```sqf
0x18
```
File: [host\keyboard.hpp at line 29](../../../Src/host/keyboard.hpp#L29)
## KEY_P

Type: constant

Description: Calculator


Replaced value:
```sqf
0x19
```
File: [host\keyboard.hpp at line 30](../../../Src/host/keyboard.hpp#L30)
## KEY_LBRACKET

Type: constant

Description: 


Replaced value:
```sqf
0x1A
```
File: [host\keyboard.hpp at line 31](../../../Src/host/keyboard.hpp#L31)
## KEY_RBRACKET

Type: constant

Description: 


Replaced value:
```sqf
0x1B
```
File: [host\keyboard.hpp at line 32](../../../Src/host/keyboard.hpp#L32)
## KEY_RETURN

Type: constant

Description: 


Replaced value:
```sqf
0x1C    /* Enter on main keyboard */
```
File: [host\keyboard.hpp at line 33](../../../Src/host/keyboard.hpp#L33)
## KEY_LCONTROL

Type: constant

Description: Enter on main keyboard


Replaced value:
```sqf
0x1D
```
File: [host\keyboard.hpp at line 34](../../../Src/host/keyboard.hpp#L34)
## KEY_A

Type: constant

Description: Right Windows key


Replaced value:
```sqf
0x1E
```
File: [host\keyboard.hpp at line 35](../../../Src/host/keyboard.hpp#L35)
## KEY_S

Type: constant

Description: left Alt


Replaced value:
```sqf
0x1F
```
File: [host\keyboard.hpp at line 36](../../../Src/host/keyboard.hpp#L36)
## KEY_D

Type: constant

Description: End on arrow keypad


Replaced value:
```sqf
0x20
```
File: [host\keyboard.hpp at line 37](../../../Src/host/keyboard.hpp#L37)
## KEY_F

Type: constant

Description: 


Replaced value:
```sqf
0x21
```
File: [host\keyboard.hpp at line 38](../../../Src/host/keyboard.hpp#L38)
## KEY_G

Type: constant

Description: 


Replaced value:
```sqf
0x22
```
File: [host\keyboard.hpp at line 39](../../../Src/host/keyboard.hpp#L39)
## KEY_H

Type: constant

Description: Pause


Replaced value:
```sqf
0x23
```
File: [host\keyboard.hpp at line 40](../../../Src/host/keyboard.hpp#L40)
## KEY_J

Type: constant

Description: 


Replaced value:
```sqf
0x24
```
File: [host\keyboard.hpp at line 41](../../../Src/host/keyboard.hpp#L41)
## KEY_K

Type: constant

Description: 


Replaced value:
```sqf
0x25
```
File: [host\keyboard.hpp at line 42](../../../Src/host/keyboard.hpp#L42)
## KEY_L

Type: constant

Description: Enter on main keyboard


Replaced value:
```sqf
0x26
```
File: [host\keyboard.hpp at line 31](../../../Src/host/keyboard.hpp#L31)
## KEY_SEMICOLON

Type: constant

Description: 


Replaced value:
```sqf
0x27
```
File: [host\keyboard.hpp at line 44](../../../Src/host/keyboard.hpp#L44)
## KEY_APOSTROPHE

Type: constant

Description: 


Replaced value:
```sqf
0x28
```
File: [host\keyboard.hpp at line 45](../../../Src/host/keyboard.hpp#L45)
## KEY_GRAVE

Type: constant

Description: 


Replaced value:
```sqf
0x29    /* accent grave ~ */
```
File: [host\keyboard.hpp at line 46](../../../Src/host/keyboard.hpp#L46)
## KEY_LSHIFT

Type: constant

Description: 


Replaced value:
```sqf
0x2A
```
File: [host\keyboard.hpp at line 47](../../../Src/host/keyboard.hpp#L47)
## KEY_BACKSLASH

Type: constant

Description: 


Replaced value:
```sqf
0x2B
```
File: [host\keyboard.hpp at line 48](../../../Src/host/keyboard.hpp#L48)
## KEY_Z

Type: constant

Description: 


Replaced value:
```sqf
0x2C
```
File: [host\keyboard.hpp at line 49](../../../Src/host/keyboard.hpp#L49)
## KEY_X

Type: constant

Description: 


Replaced value:
```sqf
0x2D
```
File: [host\keyboard.hpp at line 50](../../../Src/host/keyboard.hpp#L50)
## KEY_C

Type: constant

Description: Mute


Replaced value:
```sqf
0x2E
```
File: [host\keyboard.hpp at line 51](../../../Src/host/keyboard.hpp#L51)
## KEY_V

Type: constant

Description: Media Stop


Replaced value:
```sqf
0x2F
```
File: [host\keyboard.hpp at line 52](../../../Src/host/keyboard.hpp#L52)
## KEY_B

Type: constant

Description: 


Replaced value:
```sqf
0x30
```
File: [host\keyboard.hpp at line 19](../../../Src/host/keyboard.hpp#L19)
## KEY_N

Type: constant

Description: Scroll Lock


Replaced value:
```sqf
0x31
```
File: [host\keyboard.hpp at line 54](../../../Src/host/keyboard.hpp#L54)
## KEY_M

Type: constant

Description: Web Back


Replaced value:
```sqf
0x32
```
File: [host\keyboard.hpp at line 17](../../../Src/host/keyboard.hpp#L17)
## KEY_COMMA

Type: constant

Description: 


Replaced value:
```sqf
0x33	/*	symbol <*/
```
File: [host\keyboard.hpp at line 56](../../../Src/host/keyboard.hpp#L56)
## KEY_PERIOD

Type: constant

Description: 


Replaced value:
```sqf
0x34    /* symbol >   and  . on main keyboard */
```
File: [host\keyboard.hpp at line 57](../../../Src/host/keyboard.hpp#L57)
## KEY_SLASH

Type: constant

Description: 


Replaced value:
```sqf
0x35    /* / on main keyboard */
```
File: [host\keyboard.hpp at line 58](../../../Src/host/keyboard.hpp#L58)
## KEY_RSHIFT

Type: constant

Description: 


Replaced value:
```sqf
0x36
```
File: [host\keyboard.hpp at line 59](../../../Src/host/keyboard.hpp#L59)
## KEY_MULTIPLY

Type: constant

Description: 


Replaced value:
```sqf
0x37    /* * on numeric keypad */
```
File: [host\keyboard.hpp at line 60](../../../Src/host/keyboard.hpp#L60)
## KEY_LMENU

Type: constant

Description: 


Replaced value:
```sqf
0x38    /* left Alt */
```
File: [host\keyboard.hpp at line 61](../../../Src/host/keyboard.hpp#L61)
## KEY_SPACE

Type: constant

Description: left Alt


Replaced value:
```sqf
0x39
```
File: [host\keyboard.hpp at line 62](../../../Src/host/keyboard.hpp#L62)
## KEY_CAPITAL

Type: constant

Description: 


Replaced value:
```sqf
0x3A
```
File: [host\keyboard.hpp at line 63](../../../Src/host/keyboard.hpp#L63)
## KEY_F1

Type: constant

Description: 


Replaced value:
```sqf
0x3B
```
File: [host\keyboard.hpp at line 64](../../../Src/host/keyboard.hpp#L64)
## KEY_F2

Type: constant

Description: 


Replaced value:
```sqf
0x3C
```
File: [host\keyboard.hpp at line 65](../../../Src/host/keyboard.hpp#L65)
## KEY_F3

Type: constant

Description: 


Replaced value:
```sqf
0x3D
```
File: [host\keyboard.hpp at line 66](../../../Src/host/keyboard.hpp#L66)
## KEY_F4

Type: constant

Description: 


Replaced value:
```sqf
0x3E
```
File: [host\keyboard.hpp at line 67](../../../Src/host/keyboard.hpp#L67)
## KEY_F5

Type: constant

Description: 


Replaced value:
```sqf
0x3F
```
File: [host\keyboard.hpp at line 68](../../../Src/host/keyboard.hpp#L68)
## KEY_F6

Type: constant

Description: 


Replaced value:
```sqf
0x40
```
File: [host\keyboard.hpp at line 69](../../../Src/host/keyboard.hpp#L69)
## KEY_F7

Type: constant

Description: 


Replaced value:
```sqf
0x41
```
File: [host\keyboard.hpp at line 70](../../../Src/host/keyboard.hpp#L70)
## KEY_F8

Type: constant

Description: 


Replaced value:
```sqf
0x42
```
File: [host\keyboard.hpp at line 71](../../../Src/host/keyboard.hpp#L71)
## KEY_F9

Type: constant

Description: 


Replaced value:
```sqf
0x43
```
File: [host\keyboard.hpp at line 72](../../../Src/host/keyboard.hpp#L72)
## KEY_F10

Type: constant

Description: 


Replaced value:
```sqf
0x44
```
File: [host\keyboard.hpp at line 73](../../../Src/host/keyboard.hpp#L73)
## KEY_NUMLOCK

Type: constant

Description: 


Replaced value:
```sqf
0x45
```
File: [host\keyboard.hpp at line 74](../../../Src/host/keyboard.hpp#L74)
## KEY_SCROLL

Type: constant

Description: 


Replaced value:
```sqf
0x46    /* Scroll Lock */
```
File: [host\keyboard.hpp at line 75](../../../Src/host/keyboard.hpp#L75)
## KEY_NUMPAD7

Type: constant

Description: Scroll Lock


Replaced value:
```sqf
0x47
```
File: [host\keyboard.hpp at line 76](../../../Src/host/keyboard.hpp#L76)
## KEY_NUMPAD8

Type: constant

Description: 


Replaced value:
```sqf
0x48
```
File: [host\keyboard.hpp at line 77](../../../Src/host/keyboard.hpp#L77)
## KEY_NUMPAD9

Type: constant

Description: 


Replaced value:
```sqf
0x49
```
File: [host\keyboard.hpp at line 78](../../../Src/host/keyboard.hpp#L78)
## KEY_SUBTRACT

Type: constant

Description: 


Replaced value:
```sqf
0x4A    /* - on numeric keypad */
```
File: [host\keyboard.hpp at line 79](../../../Src/host/keyboard.hpp#L79)
## KEY_NUMPAD4

Type: constant

Description: 


Replaced value:
```sqf
0x4B
```
File: [host\keyboard.hpp at line 80](../../../Src/host/keyboard.hpp#L80)
## KEY_NUMPAD5

Type: constant

Description: 


Replaced value:
```sqf
0x4C
```
File: [host\keyboard.hpp at line 81](../../../Src/host/keyboard.hpp#L81)
## KEY_NUMPAD6

Type: constant

Description: 


Replaced value:
```sqf
0x4D
```
File: [host\keyboard.hpp at line 82](../../../Src/host/keyboard.hpp#L82)
## KEY_ADD

Type: constant

Description: 


Replaced value:
```sqf
0x4E    /* + on numeric keypad */
```
File: [host\keyboard.hpp at line 83](../../../Src/host/keyboard.hpp#L83)
## KEY_NUMPAD1

Type: constant

Description: 


Replaced value:
```sqf
0x4F
```
File: [host\keyboard.hpp at line 84](../../../Src/host/keyboard.hpp#L84)
## KEY_NUMPAD2

Type: constant

Description: 


Replaced value:
```sqf
0x50
```
File: [host\keyboard.hpp at line 85](../../../Src/host/keyboard.hpp#L85)
## KEY_NUMPAD3

Type: constant

Description: 


Replaced value:
```sqf
0x51
```
File: [host\keyboard.hpp at line 86](../../../Src/host/keyboard.hpp#L86)
## KEY_NUMPAD0

Type: constant

Description: 


Replaced value:
```sqf
0x52
```
File: [host\keyboard.hpp at line 87](../../../Src/host/keyboard.hpp#L87)
## KEY_DECIMAL

Type: constant

Description: 


Replaced value:
```sqf
0x53    /* . on numeric keypad */
```
File: [host\keyboard.hpp at line 88](../../../Src/host/keyboard.hpp#L88)
## KEY_OEM_102

Type: constant

Description: 


Replaced value:
```sqf
0x56    /* < > | on UK/Germany keyboards */
```
File: [host\keyboard.hpp at line 89](../../../Src/host/keyboard.hpp#L89)
## KEY_F11

Type: constant

Description: 


Replaced value:
```sqf
0x57
```
File: [host\keyboard.hpp at line 90](../../../Src/host/keyboard.hpp#L90)
## KEY_F12

Type: constant

Description: 


Replaced value:
```sqf
0x58
```
File: [host\keyboard.hpp at line 91](../../../Src/host/keyboard.hpp#L91)
## KEY_F13

Type: constant

Description: 


Replaced value:
```sqf
0x64    /*                     (NEC PC98) */
```
File: [host\keyboard.hpp at line 92](../../../Src/host/keyboard.hpp#L92)
## KEY_F14

Type: constant

Description: 


Replaced value:
```sqf
0x65    /*                     (NEC PC98) */
```
File: [host\keyboard.hpp at line 93](../../../Src/host/keyboard.hpp#L93)
## KEY_F15

Type: constant

Description: 


Replaced value:
```sqf
0x66    /*                     (NEC PC98) */
```
File: [host\keyboard.hpp at line 94](../../../Src/host/keyboard.hpp#L94)
## KEY_KANA

Type: constant

Description: 


Replaced value:
```sqf
0x70    /* (Japanese keyboard)            */
```
File: [host\keyboard.hpp at line 95](../../../Src/host/keyboard.hpp#L95)
## KEY_ABNT_C1

Type: constant

Description: 


Replaced value:
```sqf
0x73    /* / ? on Portugese (Brazilian) keyboards */
```
File: [host\keyboard.hpp at line 96](../../../Src/host/keyboard.hpp#L96)
## KEY_CONVERT

Type: constant

Description: 


Replaced value:
```sqf
0x79    /* (Japanese keyboard)            */
```
File: [host\keyboard.hpp at line 97](../../../Src/host/keyboard.hpp#L97)
## KEY_NOCONVERT

Type: constant

Description: 


Replaced value:
```sqf
0x7B    /* (Japanese keyboard)            */
```
File: [host\keyboard.hpp at line 98](../../../Src/host/keyboard.hpp#L98)
## KEY_YEN

Type: constant

Description: 


Replaced value:
```sqf
0x7D    /* (Japanese keyboard)            */
```
File: [host\keyboard.hpp at line 99](../../../Src/host/keyboard.hpp#L99)
## KEY_ABNT_C2

Type: constant

Description: 


Replaced value:
```sqf
0x7E    /* Numpad . on Portugese (Brazilian) keyboards */
```
File: [host\keyboard.hpp at line 100](../../../Src/host/keyboard.hpp#L100)
## KEY_NUMPADEQUALS

Type: constant

Description: 


Replaced value:
```sqf
0x8D    /* = on numeric keypad (NEC PC98) */
```
File: [host\keyboard.hpp at line 101](../../../Src/host/keyboard.hpp#L101)
## KEY_PREVTRACK

Type: constant

Description: 


Replaced value:
```sqf
0x90    /* Previous Track (KEY_CIRCUMFLEX on Japanese keyboard) */
```
File: [host\keyboard.hpp at line 102](../../../Src/host/keyboard.hpp#L102)
## KEY_AT

Type: constant

Description: 


Replaced value:
```sqf
0x91    /*                     (NEC PC98) */
```
File: [host\keyboard.hpp at line 103](../../../Src/host/keyboard.hpp#L103)
## KEY_COLON

Type: constant

Description: 


Replaced value:
```sqf
0x92    /*                     (NEC PC98) */
```
File: [host\keyboard.hpp at line 104](../../../Src/host/keyboard.hpp#L104)
## KEY_UNDERLINE

Type: constant

Description: 


Replaced value:
```sqf
0x93    /*                     (NEC PC98) */
```
File: [host\keyboard.hpp at line 105](../../../Src/host/keyboard.hpp#L105)
## KEY_KANJI

Type: constant

Description: 


Replaced value:
```sqf
0x94    /* (Japanese keyboard)            */
```
File: [host\keyboard.hpp at line 106](../../../Src/host/keyboard.hpp#L106)
## KEY_STOP

Type: constant

Description: 


Replaced value:
```sqf
0x95    /*                     (NEC PC98) */
```
File: [host\keyboard.hpp at line 107](../../../Src/host/keyboard.hpp#L107)
## KEY_AX

Type: constant

Description: 


Replaced value:
```sqf
0x96    /*                     (Japan AX) */
```
File: [host\keyboard.hpp at line 108](../../../Src/host/keyboard.hpp#L108)
## KEY_UNLABELED

Type: constant

Description: 


Replaced value:
```sqf
0x97    /*                        (J3100) */
```
File: [host\keyboard.hpp at line 109](../../../Src/host/keyboard.hpp#L109)
## KEY_NEXTTRACK

Type: constant

Description: 


Replaced value:
```sqf
0x99    /* Next Track */
```
File: [host\keyboard.hpp at line 110](../../../Src/host/keyboard.hpp#L110)
## KEY_NUMPADENTER

Type: constant

Description: Next Track


Replaced value:
```sqf
0x9C    /* Enter on numeric keypad */
```
File: [host\keyboard.hpp at line 111](../../../Src/host/keyboard.hpp#L111)
## KEY_RCONTROL

Type: constant

Description: Enter on numeric keypad


Replaced value:
```sqf
0x9D
```
File: [host\keyboard.hpp at line 112](../../../Src/host/keyboard.hpp#L112)
## KEY_MUTE

Type: constant

Description: 


Replaced value:
```sqf
0xA0    /* Mute */
```
File: [host\keyboard.hpp at line 113](../../../Src/host/keyboard.hpp#L113)
## KEY_CALCULATOR

Type: constant

Description: Mute


Replaced value:
```sqf
0xA1    /* Calculator */
```
File: [host\keyboard.hpp at line 114](../../../Src/host/keyboard.hpp#L114)
## KEY_PLAYPAUSE

Type: constant

Description: Calculator


Replaced value:
```sqf
0xA2    /* Play / Pause */
```
File: [host\keyboard.hpp at line 115](../../../Src/host/keyboard.hpp#L115)
## KEY_MEDIASTOP

Type: constant

Description: 


Replaced value:
```sqf
0xA4    /* Media Stop */
```
File: [host\keyboard.hpp at line 116](../../../Src/host/keyboard.hpp#L116)
## KEY_VOLUMEDOWN

Type: constant

Description: Media Stop


Replaced value:
```sqf
0xAE    /* Volume - */
```
File: [host\keyboard.hpp at line 117](../../../Src/host/keyboard.hpp#L117)
## KEY_VOLUMEUP

Type: constant

Description: 


Replaced value:
```sqf
0xB0    /* Volume + */
```
File: [host\keyboard.hpp at line 118](../../../Src/host/keyboard.hpp#L118)
## KEY_WEBHOME

Type: constant

Description: 


Replaced value:
```sqf
0xB2    /* Web home */
```
File: [host\keyboard.hpp at line 119](../../../Src/host/keyboard.hpp#L119)
## KEY_NUMPADCOMMA

Type: constant

Description: Web home


Replaced value:
```sqf
0xB3    /* , on numeric keypad (NEC PC98) */
```
File: [host\keyboard.hpp at line 120](../../../Src/host/keyboard.hpp#L120)
## KEY_DIVIDE

Type: constant

Description: 


Replaced value:
```sqf
0xB5    /* / on numeric keypad */
```
File: [host\keyboard.hpp at line 121](../../../Src/host/keyboard.hpp#L121)
## KEY_SYSRQ

Type: constant

Description: 


Replaced value:
```sqf
0xB7
```
File: [host\keyboard.hpp at line 122](../../../Src/host/keyboard.hpp#L122)
## KEY_RMENU

Type: constant

Description: 


Replaced value:
```sqf
0xB8    /* right Alt */
```
File: [host\keyboard.hpp at line 123](../../../Src/host/keyboard.hpp#L123)
## KEY_PAUSE

Type: constant

Description: right Alt


Replaced value:
```sqf
0xC5    /* Pause */
```
File: [host\keyboard.hpp at line 124](../../../Src/host/keyboard.hpp#L124)
## KEY_HOME

Type: constant

Description: Pause


Replaced value:
```sqf
0xC7    /* Home on arrow keypad */
```
File: [host\keyboard.hpp at line 125](../../../Src/host/keyboard.hpp#L125)
## KEY_UP

Type: constant

Description: Home on arrow keypad


Replaced value:
```sqf
0xC8    /* UpArrow on arrow keypad */
```
File: [host\keyboard.hpp at line 126](../../../Src/host/keyboard.hpp#L126)
## KEY_PRIOR

Type: constant

Description: UpArrow on arrow keypad


Replaced value:
```sqf
0xC9    /* PgUp on arrow keypad */
```
File: [host\keyboard.hpp at line 127](../../../Src/host/keyboard.hpp#L127)
## KEY_LEFT

Type: constant

Description: PgUp on arrow keypad


Replaced value:
```sqf
0xCB    /* LeftArrow on arrow keypad */
```
File: [host\keyboard.hpp at line 128](../../../Src/host/keyboard.hpp#L128)
## KEY_RIGHT

Type: constant

Description: LeftArrow on arrow keypad


Replaced value:
```sqf
0xCD    /* RightArrow on arrow keypad */
```
File: [host\keyboard.hpp at line 129](../../../Src/host/keyboard.hpp#L129)
## KEY_END

Type: constant

Description: RightArrow on arrow keypad


Replaced value:
```sqf
0xCF    /* End on arrow keypad */
```
File: [host\keyboard.hpp at line 130](../../../Src/host/keyboard.hpp#L130)
## KEY_DOWN

Type: constant

Description: End on arrow keypad


Replaced value:
```sqf
0xD0    /* DownArrow on arrow keypad */
```
File: [host\keyboard.hpp at line 131](../../../Src/host/keyboard.hpp#L131)
## KEY_NEXT

Type: constant

Description: DownArrow on arrow keypad


Replaced value:
```sqf
0xD1    /* PgDn on arrow keypad */
```
File: [host\keyboard.hpp at line 110](../../../Src/host/keyboard.hpp#L110)
## KEY_INSERT

Type: constant

Description: PgDn on arrow keypad


Replaced value:
```sqf
0xD2    /* Insert on arrow keypad */
```
File: [host\keyboard.hpp at line 133](../../../Src/host/keyboard.hpp#L133)
## KEY_DELETE

Type: constant

Description: Insert on arrow keypad


Replaced value:
```sqf
0xD3    /* Delete on arrow keypad */
```
File: [host\keyboard.hpp at line 134](../../../Src/host/keyboard.hpp#L134)
## KEY_LWIN

Type: constant

Description: Delete on arrow keypad


Replaced value:
```sqf
0xDB    /* Left Windows key */
```
File: [host\keyboard.hpp at line 135](../../../Src/host/keyboard.hpp#L135)
## KEY_RWIN

Type: constant

Description: Left Windows key


Replaced value:
```sqf
0xDC    /* Right Windows key */
```
File: [host\keyboard.hpp at line 136](../../../Src/host/keyboard.hpp#L136)
## KEY_APPS

Type: constant

Description: Right Windows key


Replaced value:
```sqf
0xDD    /* AppMenu key */
```
File: [host\keyboard.hpp at line 137](../../../Src/host/keyboard.hpp#L137)
## KEY_POWER

Type: constant

Description: AppMenu key


Replaced value:
```sqf
0xDE    /* System Power */
```
File: [host\keyboard.hpp at line 138](../../../Src/host/keyboard.hpp#L138)
## KEY_SLEEP

Type: constant

Description: System Power


Replaced value:
```sqf
0xDF    /* System Sleep */
```
File: [host\keyboard.hpp at line 139](../../../Src/host/keyboard.hpp#L139)
## KEY_WAKE

Type: constant

Description: System Sleep


Replaced value:
```sqf
0xE3    /* System Wake */
```
File: [host\keyboard.hpp at line 140](../../../Src/host/keyboard.hpp#L140)
## KEY_WEBSEARCH

Type: constant

Description: System Wake


Replaced value:
```sqf
0xE5    /* Web Search */
```
File: [host\keyboard.hpp at line 141](../../../Src/host/keyboard.hpp#L141)
## KEY_WEBFAVORITES

Type: constant

Description: Web Search


Replaced value:
```sqf
0xE6    /* Web Favorites */
```
File: [host\keyboard.hpp at line 142](../../../Src/host/keyboard.hpp#L142)
## KEY_WEBREFRESH

Type: constant

Description: Web Favorites


Replaced value:
```sqf
0xE7    /* Web Refresh */
```
File: [host\keyboard.hpp at line 143](../../../Src/host/keyboard.hpp#L143)
## KEY_WEBSTOP

Type: constant

Description: Web Refresh


Replaced value:
```sqf
0xE8    /* Web Stop */
```
File: [host\keyboard.hpp at line 144](../../../Src/host/keyboard.hpp#L144)
## KEY_WEBFORWARD

Type: constant

Description: Web Stop


Replaced value:
```sqf
0xE9    /* Web Forward */
```
File: [host\keyboard.hpp at line 145](../../../Src/host/keyboard.hpp#L145)
## KEY_WEBBACK

Type: constant

Description: Web Forward


Replaced value:
```sqf
0xEA    /* Web Back */
```
File: [host\keyboard.hpp at line 146](../../../Src/host/keyboard.hpp#L146)
## KEY_MYCOMPUTER

Type: constant

Description: Web Back


Replaced value:
```sqf
0xEB    /* My Computer */
```
File: [host\keyboard.hpp at line 147](../../../Src/host/keyboard.hpp#L147)
## KEY_MAIL

Type: constant

Description: My Computer


Replaced value:
```sqf
0xEC    /* Mail */
```
File: [host\keyboard.hpp at line 148](../../../Src/host/keyboard.hpp#L148)
## KEY_MEDIASELECT

Type: constant

Description: Mail


Replaced value:
```sqf
0xED    /* Media Select */
```
File: [host\keyboard.hpp at line 149](../../../Src/host/keyboard.hpp#L149)
## KEY_BACKSPACE

Type: constant

Description: 


Replaced value:
```sqf
KEY_BACK            /* backspace */
```
File: [host\keyboard.hpp at line 152](../../../Src/host/keyboard.hpp#L152)
## KEY_NUMPADSTAR

Type: constant

Description: backspace


Replaced value:
```sqf
KEY_MULTIPLY        /* * on numeric keypad */
```
File: [host\keyboard.hpp at line 153](../../../Src/host/keyboard.hpp#L153)
## KEY_LALT

Type: constant

Description: 


Replaced value:
```sqf
KEY_LMENU           /* left Alt */
```
File: [host\keyboard.hpp at line 154](../../../Src/host/keyboard.hpp#L154)
## KEY_CAPSLOCK

Type: constant

Description: left Alt


Replaced value:
```sqf
KEY_CAPITAL         /* CapsLock */
```
File: [host\keyboard.hpp at line 155](../../../Src/host/keyboard.hpp#L155)
## KEY_NUMPADMINUS

Type: constant

Description: CapsLock


Replaced value:
```sqf
KEY_SUBTRACT        /* - on numeric keypad */
```
File: [host\keyboard.hpp at line 156](../../../Src/host/keyboard.hpp#L156)
## KEY_NUMPADPLUS

Type: constant

Description: 


Replaced value:
```sqf
KEY_ADD             /* + on numeric keypad */
```
File: [host\keyboard.hpp at line 157](../../../Src/host/keyboard.hpp#L157)
## KEY_NUMPADPERIOD

Type: constant

Description: 


Replaced value:
```sqf
KEY_DECIMAL         /* . on numeric keypad */
```
File: [host\keyboard.hpp at line 158](../../../Src/host/keyboard.hpp#L158)
## KEY_NUMPADSLASH

Type: constant

Description: 


Replaced value:
```sqf
KEY_DIVIDE          /* / on numeric keypad */
```
File: [host\keyboard.hpp at line 159](../../../Src/host/keyboard.hpp#L159)
## KEY_RALT

Type: constant

Description: 


Replaced value:
```sqf
KEY_RMENU           /* right Alt */
```
File: [host\keyboard.hpp at line 160](../../../Src/host/keyboard.hpp#L160)
## KEY_UPARROW

Type: constant

Description: right Alt


Replaced value:
```sqf
KEY_UP              /* UpArrow on arrow keypad */
```
File: [host\keyboard.hpp at line 161](../../../Src/host/keyboard.hpp#L161)
## KEY_PGUP

Type: constant

Description: UpArrow on arrow keypad


Replaced value:
```sqf
KEY_PRIOR           /* PgUp on arrow keypad */
```
File: [host\keyboard.hpp at line 162](../../../Src/host/keyboard.hpp#L162)
## KEY_LEFTARROW

Type: constant

Description: PgUp on arrow keypad


Replaced value:
```sqf
KEY_LEFT            /* LeftArrow on arrow keypad */
```
File: [host\keyboard.hpp at line 163](../../../Src/host/keyboard.hpp#L163)
## KEY_RIGHTARROW

Type: constant

Description: LeftArrow on arrow keypad


Replaced value:
```sqf
KEY_RIGHT           /* RightArrow on arrow keypad */
```
File: [host\keyboard.hpp at line 164](../../../Src/host/keyboard.hpp#L164)
## KEY_DOWNARROW

Type: constant

Description: RightArrow on arrow keypad


Replaced value:
```sqf
KEY_DOWN            /* DownArrow on arrow keypad */
```
File: [host\keyboard.hpp at line 165](../../../Src/host/keyboard.hpp#L165)
## KEY_PGDN

Type: constant

Description: DownArrow on arrow keypad


Replaced value:
```sqf
KEY_NEXT            /* PgDn on arrow keypad */
```
File: [host\keyboard.hpp at line 166](../../../Src/host/keyboard.hpp#L166)
## KEY_CIRCUMFLEX

Type: constant

Description: 


Replaced value:
```sqf
KEY_PREVTRACK       /* Japanese keyboard */
```
File: [host\keyboard.hpp at line 169](../../../Src/host/keyboard.hpp#L169)
## MOUSE_LEFT

Type: constant

Description: Japanese keyboard


Replaced value:
```sqf
0
```
File: [host\keyboard.hpp at line 173](../../../Src/host/keyboard.hpp#L173)
## MOUSE_RIGHT

Type: constant

Description: 


Replaced value:
```sqf
1
```
File: [host\keyboard.hpp at line 174](../../../Src/host/keyboard.hpp#L174)
## MOUSE_MIDDLE

Type: constant

Description: 


Replaced value:
```sqf
2
```
File: [host\keyboard.hpp at line 175](../../../Src/host/keyboard.hpp#L175)
# memory.hpp

## size_ptr

Type: constant

Description: 


Replaced value:
```sqf
8
```
File: [host\memory.hpp at line 8](../../../Src/host/memory.hpp#L8)
## size_float

Type: constant

Description: 


Replaced value:
```sqf
4
```
File: [host\memory.hpp at line 9](../../../Src/host/memory.hpp#L9)
## size_bool

Type: constant

Description: 


Replaced value:
```sqf
1
```
File: [host\memory.hpp at line 10](../../../Src/host/memory.hpp#L10)
## size_array

Type: constant

Description: 


Replaced value:
```sqf
size_ptr
```
File: [host\memory.hpp at line 12](../../../Src/host/memory.hpp#L12)
## size_ptr_object

Type: constant

Description: 


Replaced value:
```sqf
size_ptr
```
File: [host\memory.hpp at line 13](../../../Src/host/memory.hpp#L13)
## sizeof(var)

Type: constant

Description: 4 for x32*/
- Param: var

Replaced value:
```sqf
\
((var) call { \
	if (_this isEqualType true) exitWith {1}; \
	if (_this isEqualType 0) exitWith {4}; \
	if (_this isEqualType "") exitWith {count _this}; \
	size_ptr \
}) 
```
File: [host\memory.hpp at line 16](../../../Src/host/memory.hpp#L16)
## obj_sizeof(ref)

Type: constant

Description: 
- Param: ref

Replaced value:
```sqf
\
((ref) call { \
	\
	private _size = size_ptr; \
	\
	if (_this in [locationnull,objnull]) exitWith {_size}; \
	\
	private _gtp = { \
		if (_this isEqualType true) exitWith {1}; \
		if (_this isEqualType 0) exitWith {4}; \
		if (_this isEqualType "") exitWith {count _this}; \
		if (_this isequalType []) exitWith { \
			\
			private _size = size_ptr; \
			{ \
				MOD(_size,+ sizeof(_x)); \
			} foreach _this; \
			\
			_size \
		}; \
		if (_this isEqualType {}) exitWith { \
			size_ptr \
		};\
		size_ptr \
	};\
	\
	{\
		MOD(_size,+ ((_this getvariable _x) call _gtp));\
	} foreach allVariables _this;\
	\
	_size\
})
```
File: [host\memory.hpp at line 26](../../../Src/host/memory.hpp#L26)
# module.hpp

## moduleName

Type: constant

Description: 


Replaced value:
```sqf
common
```
File: [host\module.hpp at line 8](../../../Src/host/module.hpp#L8)
## ___fullmodulename(var)

Type: constant

Description: 
- Param: var

Replaced value:
```sqf
moduleName##_##var
```
File: [host\module.hpp at line 10](../../../Src/host/module.hpp#L10)
## mFunction(name)

Type: constant

Description: 
- Param: name

Replaced value:
```sqf
___fullmodulename(name) = 
```
File: [host\module.hpp at line 12](../../../Src/host/module.hpp#L12)
## mVariable(name)

Type: constant

Description: 
- Param: name

Replaced value:
```sqf
___fullmodulename(name)
```
File: [host\module.hpp at line 14](../../../Src/host/module.hpp#L14)
## mCallFunc(name)

Type: constant

Description: 
- Param: name

Replaced value:
```sqf
call ___fullmodulename(name)
```
File: [host\module.hpp at line 16](../../../Src/host/module.hpp#L16)
## mGetVar(name)

Type: constant

Description: 
- Param: name

Replaced value:
```sqf
___fullmodulename(name)
```
File: [host\module.hpp at line 18](../../../Src/host/module.hpp#L18)
## mSetVar(name)

Type: constant

Description: 
- Param: name

Replaced value:
```sqf
___fullmodulename(name)
```
File: [host\module.hpp at line 20](../../../Src/host/module.hpp#L20)
# oop.hpp

## PROTOTYPE_VAR_NAME

Type: constant

Description: group: macro common


Replaced value:
```sqf
"proto"
```
File: [host\oop.hpp at line 9](../../../Src/host/oop.hpp#L9)
## TYPE_SUPER_BASE

Type: constant

Description: 


Replaced value:
```sqf
"<superbase>"
```
File: [host\oop.hpp at line 10](../../../Src/host/oop.hpp#L10)
## createObj

Type: constant

Description: 


Replaced value:
```sqf
(createLocation ["cba_namespacedummy",[100,100,100],0,0])
```
File: [host\oop.hpp at line 12](../../../Src/host/oop.hpp#L12)
## createNetObj

Type: constant

Description: 


Replaced value:
```sqf
(createSimpleObject ["CBA_NamespaceDummy", [100, 100, 100]])
```
File: [host\oop.hpp at line 13](../../../Src/host/oop.hpp#L13)
## deleteObj

Type: constant

Description: 


Replaced value:
```sqf
deleteLocation
```
File: [host\oop.hpp at line 14](../../../Src/host/oop.hpp#L14)
## nullPtr

Type: constant

Description: 


Replaced value:
```sqf
locationnull
```
File: [host\oop.hpp at line 16](../../../Src/host/oop.hpp#L16)
## __testSyntaxClass

Type: constant

> Exists if **EDITOR** defined

Description: 


Replaced value:
```sqf
__classcandef = isnil{_class}; if (!__classcandef) exitWith {errorformat("Syntax error - keyword 'endclass' not found in (%1)",_class); setLastError(format vec2("Syntax error - keyword 'endclass' not found in (%1)",_class));};
```
File: [host\oop.hpp at line 19](../../../Src/host/oop.hpp#L19)
## __testSyntaxClass

Type: constant

> Exists if **EDITOR** not defined

Description: 


Replaced value:
```sqf

```
File: [host\oop.hpp at line 21](../../../Src/host/oop.hpp#L21)
## createObj

Type: constant

> Exists if **__VM_VALIDATE** defined

Description: 


Replaced value:
```sqf
(call { \
		if (isnil "_class") then { \
			(customnamespace__ ("runtime_object<"+ ((round random 999999999999) Tofixed 0) + ">")) \
		} else { \
			(customnamespace__ (_class + "runtime_type<"+ ((round random 999999999999) Tofixed 0) + ">")) \
		}; \
	})
```
File: [host\oop.hpp at line 28](../../../Src/host/oop.hpp#L28)
## __vm_throw_prep_ctx(ctx)

Type: constant

> Exists if **__VM_VALIDATE** defined

Description: 
- Param: ctx

Replaced value:
```sqf
((ctx) splitSTring ENDl joinSTring "\n")
```
File: [host\oop.hpp at line 36](../../../Src/host/oop.hpp#L36)
## vm_throw(ctx)

Type: constant

> Exists if **__VM_VALIDATE** defined

Description: 
- Param: ctx

Replaced value:
```sqf

```
File: [host\oop.hpp at line 39](../../../Src/host/oop.hpp#L39)
## vm_throw_flinf(ctx)

Type: constant

> Exists if **__VM_VALIDATE** defined

Description: 
- Param: ctx

Replaced value:
```sqf
vm_lastError = __vm_throw_prep_ctx(ctx) + "|CTX:" + __FILE__ + "+" + str(__LINE__) ; throw vm_lastError;
```
File: [host\oop.hpp at line 39](../../../Src/host/oop.hpp#L39)
## setName

Type: constant

> Exists if **__VM_VALIDATE** defined

Description: 


Replaced value:
```sqf
;
```
File: [host\oop.hpp at line 41](../../../Src/host/oop.hpp#L41)
## vm_throw_flinf(ctx)

Type: constant

> Exists if **__VM_VALIDATE** not defined

Description: 
- Param: ctx

Replaced value:
```sqf

```
File: [host\oop.hpp at line 46](../../../Src/host/oop.hpp#L46)
## interfaceHeader

Type: constant

Description: 


Replaced value:
```sqf
__interface_header_flag__ = true;
```
File: [host\oop.hpp at line 49](../../../Src/host/oop.hpp#L49)
## class(name)

Type: constant

Description: определение класса
- Param: name

Replaced value:
```sqf
__class_beginDefine__(__className_toString__(name))
```
File: [host\oop.hpp at line 52](../../../Src/host/oop.hpp#L52)
## class_runtime(name)

Type: constant

Description: создание типа по строке. Нужно для генерации классов
- Param: name

Replaced value:
```sqf
__class_beginDefine__(name)
```
File: [host\oop.hpp at line 55](../../../Src/host/oop.hpp#L55)
## __className_toString__(name)

Type: constant

Description: 
- Param: name

Replaced value:
```sqf
#name
```
File: [host\oop.hpp at line 57](../../../Src/host/oop.hpp#L57)
## __class_beginDefine__(name)

Type: constant

Description: common class begin define
- Param: name

Replaced value:
```sqf
_decl_info___ = [__FILE__,__LINE__ + 1]; \
	__testSyntaxClass \
	private ["_class","_mother","_mem_name","_lastIndex","_lastIndexF","_fields","_methods"]; \
	_class = name; _mother = "object"; \
	[_class] call pc_oop_regClassTable; \
	_fields = []; _methods = []; _attributes = []; _autoref = []; \
	_editor_attrs_cls = []; \
	call pc_oop_declareClassAttr; \
	_editor_next_attr = []; _editor_attrs_f = []; _editor_attrs_m = []; \
	_classmet_declinfo = createHashMap; \
	_last_node_info_ = null; \
	__interface_header_flag__ = null; \
	private _pt_obj = [_class] call pc_oop_newTypeObj;
```
File: [host\oop.hpp at line 60](../../../Src/host/oop.hpp#L60)
## endclass

Type: constant

Description: 


Replaced value:
```sqf
[__FILE__,__LINE__] call pc_oop_declareEOC; \
	__postclassVM \

```
File: [host\oop.hpp at line 76](../../../Src/host/oop.hpp#L76)
## extends(child)

Type: constant

Description: 
- Param: child

Replaced value:
```sqf
_mother = #child;
```
File: [host\oop.hpp at line 79](../../../Src/host/oop.hpp#L79)
## extends_runtime(child)

Type: constant

Description: 
- Param: child

Replaced value:
```sqf
_mother = child;
```
File: [host\oop.hpp at line 80](../../../Src/host/oop.hpp#L80)
## attribute(name)

Type: constant

Description: attributes system
- Param: name

Replaced value:
```sqf
_attributes pushBack ['name',[]];
```
File: [host\oop.hpp at line 84](../../../Src/host/oop.hpp#L84)
## attributeParams(name,params)

Type: constant

Description: 
- Param: name
- Param: params

Replaced value:
```sqf
_attributes pushBack ['name',[params]];
```
File: [host\oop.hpp at line 86](../../../Src/host/oop.hpp#L86)
## editor_attribute(key_s)

Type: constant

> Exists if **EDITOR** defined

Description: editor_attribute("atrname")
- Param: key_s

Replaced value:
```sqf
_editor_next_attr pushBack [key_s];
```
File: [host\oop.hpp at line 92](../../../Src/host/oop.hpp#L92)
## editor_attribute(key_s)

Type: constant

> Exists if **EDITOR** not defined

Description: editor_attribute("atrname")
- Param: key_s

Replaced value:
```sqf

```
File: [host\oop.hpp at line 95](../../../Src/host/oop.hpp#L95)
## autoref

Type: constant

Description: use this macro for automatic reference cleanup: autoref var(someobject,nullPtr);


Replaced value:
```sqf
_isAutoRefUse = true;
```
File: [host\oop.hpp at line 99](../../../Src/host/oop.hpp#L99)
## const

Type: constant

Description: const modif. Create const inside type: const var(PI,3.14);


Replaced value:
```sqf
_isConstant = true;
```
File: [host\oop.hpp at line 103](../../../Src/host/oop.hpp#L103)
## __set_const_value(var,val)

Type: constant

Description: 
- Param: var
- Param: val

Replaced value:
```sqf
_pt_obj setvariable ['cst_##var',val]
```
File: [host\oop.hpp at line 104](../../../Src/host/oop.hpp#L104)
## __internal_flag_processor(flagname,act)

Type: constant

Description: 
- Param: flagname
- Param: act

Replaced value:
```sqf
if (!isnil 'flagname') then {act; flagname = nil}
```
File: [host\oop.hpp at line 106](../../../Src/host/oop.hpp#L106)
## var(name,value)

Type: constant

Description: Регистратор переменной
- Param: name
- Param: value

Replaced value:
```sqf
\
	_mem_name = #name ; \
	_lastIndexF = _fields pushback [_mem_name,'value']; \
	call pc_oop_handleAttrF;
```
File: [host\oop.hpp at line 109](../../../Src/host/oop.hpp#L109)
## pair(key,val)

Type: constant

Description: 
- Param: key
- Param: val

Replaced value:
```sqf
[key,val]
```
File: [host\oop.hpp at line 121](../../../Src/host/oop.hpp#L121)
## varpair(name,value)

Type: constant

Description: 
- Param: name
- Param: value

Replaced value:
```sqf
\
	_mem_name = #name ; \
	_lastIndexF = _fields pushback [_mem_name,"createHashMapFromArray [" + ('value' splitString (";"+toString[9,13,10]) joinString ",") + "]"]; \
	call pc_oop_handleAttrF;
```
File: [host\oop.hpp at line 122](../../../Src/host/oop.hpp#L122)
## var_runtime(name,value)

Type: constant

Description: Регистратор переменной со строковым именем
- Param: name
- Param: value

Replaced value:
```sqf
\
	_mem_name = name ; \
	_lastIndexF = _fields pushback [_mem_name,'value']; \
	call pc_oop_handleAttrF;
```
File: [host\oop.hpp at line 128](../../../Src/host/oop.hpp#L128)
## var_exprval(name,value)

Type: constant

Description: ! Внимание ! - при изменении этого макроса выполнить правки в pc_oop_regvar
- Param: name
- Param: value

Replaced value:
```sqf
\
	_mem_name = #name ; \
	__iv_r = value; if equalTypes(__iv_r,"") then {__iv_r = str __iv_r}; \
	_lastIndexF = _fields pushback [_mem_name,format["%1",__iv_r]]; \
	call pc_oop_handleAttrF;
```
File: [host\oop.hpp at line 135](../../../Src/host/oop.hpp#L135)
## net_use

Type: constant

Description: 


Replaced value:
```sqf
_netuse = true;
```
File: [host\oop.hpp at line 141](../../../Src/host/oop.hpp#L141)
## var_num(name)

Type: constant

Description: 
- Param: name

Replaced value:
```sqf
var(name,0)
```
File: [host\oop.hpp at line 143](../../../Src/host/oop.hpp#L143)
## var_str(name)

Type: constant

Description: 
- Param: name

Replaced value:
```sqf
var(name,"")
```
File: [host\oop.hpp at line 144](../../../Src/host/oop.hpp#L144)
## var_bool(name)

Type: constant

Description: 
- Param: name

Replaced value:
```sqf
var(name,false)
```
File: [host\oop.hpp at line 145](../../../Src/host/oop.hpp#L145)
## var_array(name)

Type: constant

Description: 
- Param: name

Replaced value:
```sqf
var(name,[])
```
File: [host\oop.hpp at line 146](../../../Src/host/oop.hpp#L146)
## var_obj(name)

Type: constant

Description: 
- Param: name

Replaced value:
```sqf
var(name,objnull)
```
File: [host\oop.hpp at line 147](../../../Src/host/oop.hpp#L147)
## var_vobj(name)

Type: constant

Description: 
- Param: name

Replaced value:
```sqf
var(name,locationnull)
```
File: [host\oop.hpp at line 148](../../../Src/host/oop.hpp#L148)
## var_hashmap(name)

Type: constant

Description: 
- Param: name

Replaced value:
```sqf
var(name,createHashMap)
```
File: [host\oop.hpp at line 149](../../../Src/host/oop.hpp#L149)
## var_handle(name)

Type: constant

Description: 
- Param: name

Replaced value:
```sqf
var(name,-1)
```
File: [host\oop.hpp at line 150](../../../Src/host/oop.hpp#L150)
## __check_method_duplicate

Type: constant

Description: #define var_multi(defaultvalue)


Replaced value:
```sqf

```
File: [host\oop.hpp at line 154](../../../Src/host/oop.hpp#L154)
## __check_method_duplicate

Type: constant

> Exists if **__VM_VALIDATE** defined

Description: #define var_multi(defaultvalue)


Replaced value:
```sqf
if (isnil'__interface_header_flag__') then {vm_throw_flinf(format ["Duplicate method '%1::%2'" arg _class arg _mem_name])};
```
File: [host\oop.hpp at line 157](../../../Src/host/oop.hpp#L157)
## func(name)

Type: constant

Description: 
- Param: name

Replaced value:
```sqf
_mem_name = #name; _classmet_declinfo set [_mem_name,__FILE__ + "?" + (str __LINE__)]; \
	_propOverride = _methods findIf {(_x select 0) == _mem_name}; \
	if (_propOverride != -1) then {__check_method_duplicate (_methods select _propOverride) deleteAt 1; _lastIndex = _propOverride} else { \
		_lastIndex = _methods pushback [_mem_name]; \
	}; \
	call pc_oop_handleAttrM; \
	(_methods select _lastIndex) pushback
```
File: [host\oop.hpp at line 160](../../../Src/host/oop.hpp#L160)
## func_runtime(name)

Type: constant

Description: 
- Param: name

Replaced value:
```sqf
_mem_name = name; _classmet_declinfo set [_mem_name,__FILE__ + "?" + (str __LINE__)]; \
	_lastIndex = _methods pushback [_mem_name]; \
	call pc_oop_handleAttrM; \
	(_methods select _lastIndex) pushback
```
File: [host\oop.hpp at line 168](../../../Src/host/oop.hpp#L168)
## verbList(strlist,motherObj)

Type: constant

Description: verbList()
- Param: strlist
- Param: motherObj

Replaced value:
```sqf
_nCode = 'objParams(); _outArr append ' + (strlist call verbs_parse_strToListOfNum) + '; callSuper(motherObj,getVerbs)'; func(getVerbs) (compile _nCode)
```
File: [host\oop.hpp at line 174](../../../Src/host/oop.hpp#L174)
## verbListOverride(strlist)

Type: constant

Description: 
- Param: strlist

Replaced value:
```sqf
_nCode = 'objParams(); _outArr append ' + (strlist call verbs_parse_strToListOfNum) + ';'; func(getVerbs) (compile _nCode)
```
File: [host\oop.hpp at line 176](../../../Src/host/oop.hpp#L176)
## getter_func(name,do)

Type: constant

Description: 
- Param: name
- Param: do

Replaced value:
```sqf
func(name) {objParams(); do }
```
File: [host\oop.hpp at line 179](../../../Src/host/oop.hpp#L179)
## getterconst_func(name,do)

Type: constant

Description: нет траты памяти на параметризацию. Нужно для константных значений (массивов и строк)
- Param: name
- Param: do

Replaced value:
```sqf
func(name) { do }
```
File: [host\oop.hpp at line 182](../../../Src/host/oop.hpp#L182)
## getset_func(name,getcode,setcode)

Type: constant

Description: 
- Param: name
- Param: getcode
- Param: setcode

Replaced value:
```sqf
_getcode = getcode; _setcode = setcode; func_runtime('get' + 'name') _getcode; func_runtime('set' + 'name') _setcode
```
File: [host\oop.hpp at line 184](../../../Src/host/oop.hpp#L184)
## simpleGet(getcode)

Type: constant

Description: 
- Param: getcode

Replaced value:
```sqf
{objParams(); getcode }
```
File: [host\oop.hpp at line 186](../../../Src/host/oop.hpp#L186)
## simpleSet(setcode)

Type: constant

Description: 
- Param: setcode

Replaced value:
```sqf
{objParams_1(_value); setcode }
```
File: [host\oop.hpp at line 187](../../../Src/host/oop.hpp#L187)
## value

Type: constant

Description: 


Replaced value:
```sqf
_value
```
File: [host\oop.hpp at line 188](../../../Src/host/oop.hpp#L188)
## abstract_func(name)

Type: constant

Description: TODO поменять местами абстракт и прото
- Param: name

Replaced value:
```sqf
func(name) {}; private _reqImpl = format['[OOP]:    <%1::%2> Method requires implementation (%3)',_class,#name,SHORT_PATH]; warning(_reqImpl);
```
File: [host\oop.hpp at line 192](../../../Src/host/oop.hpp#L192)
## proto_func(name)

Type: constant

Description: 
- Param: name

Replaced value:
```sqf
func(name) {}
```
File: [host\oop.hpp at line 193](../../../Src/host/oop.hpp#L193)
## new(type)

Type: constant

Description: instansing and deleting
- Param: type

Replaced value:
```sqf
(call (pt_##type getvariable "__instance"))
```
File: [host\oop.hpp at line 196](../../../Src/host/oop.hpp#L196)
## newParams(type,Params)

Type: constant

Description: 
- Param: type
- Param: Params

Replaced value:
```sqf
((Params) call (pt_##type getvariable "__instance"))
```
File: [host\oop.hpp at line 197](../../../Src/host/oop.hpp#L197)
## delete(ref)

Type: constant

Description: 
- Param: ref

Replaced value:
```sqf
(ref) call oop_deleteObject
```
File: [host\oop.hpp at line 14](../../../Src/host/oop.hpp#L14)
## isdeleted(ref)

Type: constant

Description: 
- Param: ref

Replaced value:
```sqf
(!isNIL{ref getvariable "__del_flag__"})
```
File: [host\oop.hpp at line 199](../../../Src/host/oop.hpp#L199)
## instantiate(strType)

Type: constant

Description: 
- Param: strType

Replaced value:
```sqf
(call ((missionNamespace getVariable ("pt_" + (strType))) getvariable '__instance'))
```
File: [host\oop.hpp at line 200](../../../Src/host/oop.hpp#L200)
## instantiateParams(strType,Params)

Type: constant

Description: 
- Param: strType
- Param: Params

Replaced value:
```sqf
((Params) call ((missionNamespace getVariable ("pt_" + (strType))) getvariable '__instance'))
```
File: [host\oop.hpp at line 201](../../../Src/host/oop.hpp#L201)
## ctxParams

Type: constant

Description: Внутренние параметры, переданные через new


Replaced value:
```sqf
_internalParams
```
File: [host\oop.hpp at line 204](../../../Src/host/oop.hpp#L204)
## sizeOf(obj)

Type: constant

Description: 
- Param: obj

Replaced value:
```sqf
obj call oop_getobjsize
```
File: [host\oop.hpp at line 206](../../../Src/host/oop.hpp#L206)
## getObjectsTypeOf(type)

Type: constant

Description: Получает наследников данного типа
- Param: type

Replaced value:
```sqf
([#type,false] call oop_getinhlist)
```
File: [host\oop.hpp at line 209](../../../Src/host/oop.hpp#L209)
## getAllObjectsTypeOf(type)

Type: constant

Description: Получает ВСЕХ наследников от этого типа (глубокое наследование)
- Param: type

Replaced value:
```sqf
([#type,true] call oop_getinhlist)
```
File: [host\oop.hpp at line 211](../../../Src/host/oop.hpp#L211)
## getObjectsTypeOfStr(type)

Type: constant

Description: строковый эквивалент
- Param: type

Replaced value:
```sqf
([type,false] call oop_getinhlist)
```
File: [host\oop.hpp at line 213](../../../Src/host/oop.hpp#L213)
## getAllObjectsTypeOfStr(type)

Type: constant

Description: 
- Param: type

Replaced value:
```sqf
([type,true] call oop_getinhlist)
```
File: [host\oop.hpp at line 214](../../../Src/host/oop.hpp#L214)
## callSuper(superclass,metname)

Type: constant

Description: При переопределении изменить и в крафтовых классах
- Param: superclass
- Param: metname

Replaced value:
```sqf
call ( pt_##superclass getVariable #metname )
```
File: [host\oop.hpp at line 218](../../../Src/host/oop.hpp#L218)
## super()

Type: constant

Description: 
- Param: 

Replaced value:
```sqf
(__BASECALLFLAG__)
```
File: [host\oop.hpp at line 220](../../../Src/host/oop.hpp#L220)
## this

Type: constant

Description: Parameters


Replaced value:
```sqf
_thisobj
```
File: [host\oop.hpp at line 223](../../../Src/host/oop.hpp#L223)
## updateParams()

Type: constant

Description: 
- Param: 

Replaced value:
```sqf
private this = (_this select 0)
```
File: [host\oop.hpp at line 225](../../../Src/host/oop.hpp#L225)
## STD_UPDATE_DELAY

Type: constant

Description: частота вызова каждого объектного апдейта (не менять)


Replaced value:
```sqf
1
```
File: [host\oop.hpp at line 228](../../../Src/host/oop.hpp#L228)
## startSelfUpdate(method)

Type: constant

Description: 
- Param: method

Replaced value:
```sqf
startUpdateParams(getSelfFunc(method),STD_UPDATE_DELAY,this)
```
File: [host\oop.hpp at line 230](../../../Src/host/oop.hpp#L230)
## startObjUpdate(obj,method)

Type: constant

Description: 
- Param: obj
- Param: method

Replaced value:
```sqf
startUpdateParams(getFunc(obj,method),STD_UPDATE_DELAY,obj)
```
File: [host\oop.hpp at line 231](../../../Src/host/oop.hpp#L231)
## startSelfUpdateWithDelay(method,del)

Type: constant

Description: 
- Param: method
- Param: del

Replaced value:
```sqf
startUpdateParams(getSelfFunc(method),del,this)
```
File: [host\oop.hpp at line 233](../../../Src/host/oop.hpp#L233)
## startObjUpdateWithDelay(obj,method,del)

Type: constant

Description: 
- Param: obj
- Param: method
- Param: del

Replaced value:
```sqf
startUpdateParams(getFunc(obj,method),del,obj)
```
File: [host\oop.hpp at line 234](../../../Src/host/oop.hpp#L234)
## setParam(idx,val)

Type: constant

Description: 
- Param: idx
- Param: val

Replaced value:
```sqf
_this set [idx,val]
```
File: [host\oop.hpp at line 236](../../../Src/host/oop.hpp#L236)
## objParams()

Type: constant

Description: 
- Param: 

Replaced value:
```sqf
private this = _this
```
File: [host\oop.hpp at line 238](../../../Src/host/oop.hpp#L238)
## objParams_1(a)

Type: constant

Description: 
- Param: a

Replaced value:
```sqf
params ['this', #a ]
```
File: [host\oop.hpp at line 240](../../../Src/host/oop.hpp#L240)
## objParams_1_nostr(a)

Type: constant

Description: 
- Param: a

Replaced value:
```sqf
params ['this', a ]
```
File: [host\oop.hpp at line 241](../../../Src/host/oop.hpp#L241)
## objParams_2(a,b)

Type: constant

Description: 
- Param: a
- Param: b

Replaced value:
```sqf
params ['this', #a , #b]
```
File: [host\oop.hpp at line 242](../../../Src/host/oop.hpp#L242)
## objParams_2_nostr(a,b)

Type: constant

Description: 
- Param: a
- Param: b

Replaced value:
```sqf
params ['this', a , b]
```
File: [host\oop.hpp at line 243](../../../Src/host/oop.hpp#L243)
## objParams_3(a,b,c)

Type: constant

Description: 
- Param: a
- Param: b
- Param: c

Replaced value:
```sqf
params ['this', #a , #b , #c]
```
File: [host\oop.hpp at line 245](../../../Src/host/oop.hpp#L245)
## objParams_4(a,b,c,d)

Type: constant

Description: 
- Param: a
- Param: b
- Param: c
- Param: d

Replaced value:
```sqf
params ['this', #a , #b , #c , #d]
```
File: [host\oop.hpp at line 246](../../../Src/host/oop.hpp#L246)
## objParams_5(a,b,c,d,e)

Type: constant

Description: 
- Param: a
- Param: b
- Param: c
- Param: d
- Param: e

Replaced value:
```sqf
params ['this', #a , #b , #c , #d , #e]
```
File: [host\oop.hpp at line 247](../../../Src/host/oop.hpp#L247)
## objParams_6(a,b,c,d,e,f)

Type: constant

Description: 
- Param: a
- Param: b
- Param: c
- Param: d
- Param: e
- Param: f

Replaced value:
```sqf
params ['this', #a , #b , #c , #d , #e , #f]
```
File: [host\oop.hpp at line 248](../../../Src/host/oop.hpp#L248)
## setprop(obj,func,val)

Type: constant

Description: 
- Param: obj
- Param: func
- Param: val

Replaced value:
```sqf
([obj,val] call ((obj) getvariable PROTOTYPE_VAR_NAME getvariable ('set##func')))*/
```
File: [host\oop.hpp at line 276](../../../Src/host/oop.hpp#L276)
## privateCall(func)

Type: constant

Description: calling private methods
- Param: func

Replaced value:
```sqf
(call (this getvariable PROTOTYPE_VAR_NAME getvariable #func))
```
File: [host\oop.hpp at line 280](../../../Src/host/oop.hpp#L280)
## getSelf(name)

Type: constant

Description: 
- Param: name

Replaced value:
```sqf
(this getvariable #name)
```
File: [host\oop.hpp at line 282](../../../Src/host/oop.hpp#L282)
## setSelf(name,val)

Type: constant

Description: 
- Param: name
- Param: val

Replaced value:
```sqf
this setvariable [#name,val]
```
File: [host\oop.hpp at line 283](../../../Src/host/oop.hpp#L283)
## modSelf(name,val)

Type: constant

Description: 
- Param: name
- Param: val

Replaced value:
```sqf
setSelf(name,getSelf(name) val)
```
File: [host\oop.hpp at line 284](../../../Src/host/oop.hpp#L284)
## initSelf(name,_initial)

Type: constant

Description: 
- Param: name
- Param: _initial

Replaced value:
```sqf
(if ISNIL{getSelf(name)}then{setSelf(name,_initial);_initial}else{getSelf(name)})
```
File: [host\oop.hpp at line 285](../../../Src/host/oop.hpp#L285)
## getSelfReflect(name)

Type: constant

Description: 
- Param: name

Replaced value:
```sqf
(this getvariable name)
```
File: [host\oop.hpp at line 287](../../../Src/host/oop.hpp#L287)
## setSelfReflect(name,val)

Type: constant

Description: 
- Param: name
- Param: val

Replaced value:
```sqf
this setvariable [name,val]
```
File: [host\oop.hpp at line 288](../../../Src/host/oop.hpp#L288)
## modSelfReflect(name,val)

Type: constant

Description: 
- Param: name
- Param: val

Replaced value:
```sqf
setSelfReflect(name,getSelfReflect(name) val)
```
File: [host\oop.hpp at line 289](../../../Src/host/oop.hpp#L289)
## callSelf(func)

Type: constant

Description: Встраивает параметры в системный вызов метода
- Param: func

Replaced value:
```sqf
(this call (this getvariable PROTOTYPE_VAR_NAME getvariable #func))
```
File: [host\oop.hpp at line 291](../../../Src/host/oop.hpp#L291)
## callSelfAfter(func,time)

Type: constant

Description: 
- Param: func
- Param: time

Replaced value:
```sqf
[this getVariable PROTOTYPE_VAR_NAME getVariable #func,this,time] call CBA_fnc_waitAndExecute
```
File: [host\oop.hpp at line 292](../../../Src/host/oop.hpp#L292)
## callSelfAfterParams(func,time,parms)

Type: constant

Description: 
- Param: func
- Param: time
- Param: parms

Replaced value:
```sqf
[this getVariable PROTOTYPE_VAR_NAME getVariable #func,[this,parms],time] call CBA_fnc_waitAndExecute
```
File: [host\oop.hpp at line 293](../../../Src/host/oop.hpp#L293)
## callSelfParams(func,parms)

Type: constant

Description: 
- Param: func
- Param: parms

Replaced value:
```sqf
([this,parms] call (this getvariable PROTOTYPE_VAR_NAME getvariable #func))
```
File: [host\oop.hpp at line 294](../../../Src/host/oop.hpp#L294)
## callSelfParamsInline(func,parms)

Type: constant

Description: 
- Param: func
- Param: parms

Replaced value:
```sqf
(([this]+(parms)) call (this getvariable PROTOTYPE_VAR_NAME getvariable #func))
```
File: [host\oop.hpp at line 295](../../../Src/host/oop.hpp#L295)
## callSelfReflect(func)

Type: constant

Description: Встраивает параметры в системный вызов метода
- Param: func

Replaced value:
```sqf
(this call (this getvariable PROTOTYPE_VAR_NAME getvariable func))
```
File: [host\oop.hpp at line 297](../../../Src/host/oop.hpp#L297)
## callSelfReflectParams(func,parms)

Type: constant

Description: Встраивает параметры в системный вызов метода
- Param: func
- Param: parms

Replaced value:
```sqf
([this,parms] call (this getvariable PROTOTYPE_VAR_NAME getvariable func))
```
File: [host\oop.hpp at line 298](../../../Src/host/oop.hpp#L298)
## callSelfReflectParamsInline(func,parms)

Type: constant

Description: Встраивает параметры в системный вызов метода
- Param: func
- Param: parms

Replaced value:
```sqf
(([this]+(parms)) call (this getvariable PROTOTYPE_VAR_NAME getvariable func))
```
File: [host\oop.hpp at line 300](../../../Src/host/oop.hpp#L300)
## getSelfFunc(func)

Type: constant

Description: 
- Param: func

Replaced value:
```sqf
(this getvariable PROTOTYPE_VAR_NAME getvariable (#func))
```
File: [host\oop.hpp at line 302](../../../Src/host/oop.hpp#L302)
## getSelfFuncReflect(func)

Type: constant

Description: 
- Param: func

Replaced value:
```sqf
(this getvariable PROTOTYPE_VAR_NAME getvariable (func))
```
File: [host\oop.hpp at line 303](../../../Src/host/oop.hpp#L303)
## getSelfProp(func)

Type: constant

Description: 
- Param: func

Replaced value:
```sqf
(this call (this getvariable PROTOTYPE_VAR_NAME getvariable 'get##func'))
```
File: [host\oop.hpp at line 305](../../../Src/host/oop.hpp#L305)
## setSelfProp(func,val)

Type: constant

Description: 
- Param: func
- Param: val

Replaced value:
```sqf
[this,val] call (this getvariable PROTOTYPE_VAR_NAME getvariable 'set##func')
```
File: [host\oop.hpp at line 306](../../../Src/host/oop.hpp#L306)
## callFunc(obj,func)

Type: constant

Description: external access
- Param: obj
- Param: func

Replaced value:
```sqf
((obj) call ((obj) getvariable PROTOTYPE_VAR_NAME getvariable (#func)))
```
File: [host\oop.hpp at line 309](../../../Src/host/oop.hpp#L309)
## callFuncAfter(obj,func,time)

Type: constant

Description: 
- Param: obj
- Param: func
- Param: time

Replaced value:
```sqf
[(obj) getVariable PROTOTYPE_VAR_NAME getVariable #func,obj,time] call CBA_fnc_waitAndExecute
```
File: [host\oop.hpp at line 310](../../../Src/host/oop.hpp#L310)
## callFuncAfterParams(obj,func,time,parms)

Type: constant

Description: 
- Param: obj
- Param: func
- Param: time
- Param: parms

Replaced value:
```sqf
[(obj) getVariable PROTOTYPE_VAR_NAME getVariable #func,[obj,parms],time] call CBA_fnc_waitAndExecute
```
File: [host\oop.hpp at line 311](../../../Src/host/oop.hpp#L311)
## callFuncParams(obj,func,parms)

Type: constant

Description: 
- Param: obj
- Param: func
- Param: parms

Replaced value:
```sqf
([obj, parms] call ((obj) getvariable PROTOTYPE_VAR_NAME getvariable (#func)))
```
File: [host\oop.hpp at line 312](../../../Src/host/oop.hpp#L312)
## callFuncParamsInline(obj,func,parms)

Type: constant

Description: 
- Param: obj
- Param: func
- Param: parms

Replaced value:
```sqf
(([obj]+(parms)) call ((obj) getvariable PROTOTYPE_VAR_NAME getvariable (#func)))
```
File: [host\oop.hpp at line 313](../../../Src/host/oop.hpp#L313)
## callFuncReflect(obj,func)

Type: constant

Description: Встраивает параметры в системный вызов метода
- Param: obj
- Param: func

Replaced value:
```sqf
((obj) call ((obj) getvariable PROTOTYPE_VAR_NAME getvariable (func)))
```
File: [host\oop.hpp at line 315](../../../Src/host/oop.hpp#L315)
## callFuncReflectParams(obj,func,parms)

Type: constant

Description: Встраивает параметры в системный вызов метода
- Param: obj
- Param: func
- Param: parms

Replaced value:
```sqf
([obj, parms] call ((obj) getvariable PROTOTYPE_VAR_NAME getvariable (func)))
```
File: [host\oop.hpp at line 316](../../../Src/host/oop.hpp#L316)
## callFuncReflectParamsInline(obj,func,parms)

Type: constant

Description: Встраивает параметры в системный вызов метода
- Param: obj
- Param: func
- Param: parms

Replaced value:
```sqf
(([obj]+(parms)) call ((obj) getvariable PROTOTYPE_VAR_NAME getvariable (func)))
```
File: [host\oop.hpp at line 318](../../../Src/host/oop.hpp#L318)
## getFunc(obj,func)

Type: constant

Description: 
- Param: obj
- Param: func

Replaced value:
```sqf
((obj) getvariable PROTOTYPE_VAR_NAME getvariable (#func))
```
File: [host\oop.hpp at line 320](../../../Src/host/oop.hpp#L320)
## getFuncReflect(obj,func)

Type: constant

Description: 
- Param: obj
- Param: func

Replaced value:
```sqf
((obj) getvariable PROTOTYPE_VAR_NAME getvariable (func))
```
File: [host\oop.hpp at line 321](../../../Src/host/oop.hpp#L321)
## getVar(obj,name)

Type: constant

Description: 
- Param: obj
- Param: name

Replaced value:
```sqf
((obj) getvariable (#name))
```
File: [host\oop.hpp at line 323](../../../Src/host/oop.hpp#L323)
## setVar(obj,name,value)

Type: constant

Description: 
- Param: obj
- Param: name
- Param: value

Replaced value:
```sqf
(obj) setvariable [#name,value]
```
File: [host\oop.hpp at line 324](../../../Src/host/oop.hpp#L324)
## modVar(obj,name,val)

Type: constant

Description: 
- Param: obj
- Param: name
- Param: val

Replaced value:
```sqf
setVar(obj,name,getVar(obj,name) val)
```
File: [host\oop.hpp at line 325](../../../Src/host/oop.hpp#L325)
## initVar(obj,name,_initial)

Type: constant

Description: 
- Param: obj
- Param: name
- Param: _initial

Replaced value:
```sqf
(if ISNIL{getVar(obj,name)}then{setVar(obj,name,_initial);_initial}else{getVar(obj,name)})
```
File: [host\oop.hpp at line 326](../../../Src/host/oop.hpp#L326)
## getVarReflect(obj,name)

Type: constant

Description: 
- Param: obj
- Param: name

Replaced value:
```sqf
((obj) getvariable (name))
```
File: [host\oop.hpp at line 328](../../../Src/host/oop.hpp#L328)
## setVarReflect(obj,name,value)

Type: constant

Description: 
- Param: obj
- Param: name
- Param: value

Replaced value:
```sqf
(obj) setvariable [name,value]
```
File: [host\oop.hpp at line 329](../../../Src/host/oop.hpp#L329)
## modVarReflect(obj,name,val)

Type: constant

Description: 
- Param: obj
- Param: name
- Param: val

Replaced value:
```sqf
setVarReflect(obj,name,getVarReflect(obj,name) val)
```
File: [host\oop.hpp at line 330](../../../Src/host/oop.hpp#L330)
## getProp(obj,func)

Type: constant

Description: 
- Param: obj
- Param: func

Replaced value:
```sqf
((obj) call ((obj) getvariable PROTOTYPE_VAR_NAME getvariable ('get##func')))
```
File: [host\oop.hpp at line 332](../../../Src/host/oop.hpp#L332)
## setProp(obj,func,val)

Type: constant

Description: 
- Param: obj
- Param: func
- Param: val

Replaced value:
```sqf
([obj,val] call ((obj) getvariable PROTOTYPE_VAR_NAME getvariable ('set##func')))
```
File: [host\oop.hpp at line 333](../../../Src/host/oop.hpp#L333)
## getConst(obj,constvar)

Type: constant

Description: constant helpers
- Param: obj
- Param: constvar

Replaced value:
```sqf
callFunc(obj,constvar)
```
File: [host\oop.hpp at line 336](../../../Src/host/oop.hpp#L336)
## getSelfConst(constvar)

Type: constant

Description: 
- Param: constvar

Replaced value:
```sqf
callSelf(constvar)
```
File: [host\oop.hpp at line 337](../../../Src/host/oop.hpp#L337)
## typeGet(typ)

Type: constant

Description: !OBSOLETE use object.getType class for accessing type
- Param: typ

Replaced value:
```sqf
(missionNamespace getvariable ['pt_'+ 'typ',nullPtr])
```
File: [host\oop.hpp at line 341](../../../Src/host/oop.hpp#L341)
## typeGetFromObject(obj)

Type: constant

Description: 
- Param: obj

Replaced value:
```sqf
(obj getVariable PROTOTYPE_VAR_NAME)
```
File: [host\oop.hpp at line 342](../../../Src/host/oop.hpp#L342)
## typeGetFromString(strvar)

Type: constant

Description: 
- Param: strvar

Replaced value:
```sqf
(missionNamespace getvariable ['pt_'+ (strvar),nullPtr])
```
File: [host\oop.hpp at line 343](../../../Src/host/oop.hpp#L343)
## typeGetVar(obj,var)

Type: constant

Description: 
- Param: obj
- Param: var

Replaced value:
```sqf
(obj getVariable 'var')
```
File: [host\oop.hpp at line 344](../../../Src/host/oop.hpp#L344)
## typeHasVar(obj,var)

Type: constant

Description: 
- Param: obj
- Param: var

Replaced value:
```sqf
(!isnil {typeGetVar(obj,var)})
```
File: [host\oop.hpp at line 345](../../../Src/host/oop.hpp#L345)
## typeSetVar(obj,var,val)

Type: constant

Description: 
- Param: obj
- Param: var
- Param: val

Replaced value:
```sqf
obj setvariable ['var',val]
```
File: [host\oop.hpp at line 346](../../../Src/host/oop.hpp#L346)
## typeGetDefaultFieldValueSerialized(tp,var)

Type: constant

Description: 
- Param: tp
- Param: var

Replaced value:
```sqf
(tp getVariable "__allfields_map" get 'var')
```
File: [host\oop.hpp at line 348](../../../Src/host/oop.hpp#L348)
## typeGetDefaultFieldValue(tp,var)

Type: constant

Description: 
- Param: tp
- Param: var

Replaced value:
```sqf
(compile typeGetDefaultFieldValueSerialized(tp,var))
```
File: [host\oop.hpp at line 348](../../../Src/host/oop.hpp#L348)
## isExistsObject(ref)

Type: constant

Description: checkers
- Param: ref

Replaced value:
```sqf
(!isnil {(ref getvariable 'proto')})
```
File: [host\oop.hpp at line 353](../../../Src/host/oop.hpp#L353)
## isTypeOf(obj,type)

Type: constant

Description: Проверка является ли тип наследником isTypeOf(_mob,Mob); //true
- Param: obj
- Param: type

Replaced value:
```sqf
((tolower #type) in ((obj) getvariable PROTOTYPE_VAR_NAME getvariable ("__inhlist_map")))
```
File: [host\oop.hpp at line 355](../../../Src/host/oop.hpp#L355)
## isTypeStringOf(obj,type)

Type: constant

Description: NON USABLE
- Param: obj
- Param: type

Replaced value:
```sqf
((tolower (type)) in ((obj) getvariable PROTOTYPE_VAR_NAME getvariable ("__inhlist_map")))
```
File: [host\oop.hpp at line 356](../../../Src/host/oop.hpp#L356)
## isTypeNameOf(obj,type)

Type: constant

Description: 
- Param: obj
- Param: type

Replaced value:
```sqf
((tolower #type) in (typeGetFromString(obj) getvariable ("__inhlist_map")))
```
File: [host\oop.hpp at line 357](../../../Src/host/oop.hpp#L357)
## isTypeNameStringOf(obj,type)

Type: constant

Description: TODO remove this macro
- Param: obj
- Param: type

Replaced value:
```sqf
((tolower (type)) in (typeGetFromString(obj) getvariable ("__inhlist_map")))
```
File: [host\oop.hpp at line 359](../../../Src/host/oop.hpp#L359)
## isImplementClass(strname)

Type: constant

Description: проверка существования класса
- Param: strname

Replaced value:
```sqf
(!isNullReference(typeGetFromString(strname)))
```
File: [host\oop.hpp at line 361](../../../Src/host/oop.hpp#L361)
## isImplementFunc(objref,met)

Type: constant

Description: проверка наличия членов
- Param: objref
- Param: met

Replaced value:
```sqf
(!isnil{getFunc(objref,met)})
```
File: [host\oop.hpp at line 363](../../../Src/host/oop.hpp#L363)
## isImplementVar(objref,var)

Type: constant

Description: 
- Param: objref
- Param: var

Replaced value:
```sqf
((tolower #var) in getFunc(objref,__allfields_map))
```
File: [host\oop.hpp at line 364](../../../Src/host/oop.hpp#L364)
## isImplementFuncStr(objref,met)

Type: constant

Description: 
- Param: objref
- Param: met

Replaced value:
```sqf
(!isnil{getFuncReflect(objref,met)})
```
File: [host\oop.hpp at line 365](../../../Src/host/oop.hpp#L365)
## isImplementVarStr(objref,var)

Type: constant

Description: 
- Param: objref
- Param: var

Replaced value:
```sqf
((tolower (var)) in getFunc(objref,__allfields_map))
```
File: [host\oop.hpp at line 366](../../../Src/host/oop.hpp#L366)
## getFieldBaseValue(strt,varx)

Type: constant

Description: Прямое получение дефолтных значений по подстроке через рефлексию
- Param: strt
- Param: varx

Replaced value:
```sqf
([strt,varx,true] call oop_getFieldBaseValue)
```
File: [host\oop.hpp at line 368](../../../Src/host/oop.hpp#L368)
## getFieldBaseValueWithMethod(strt,varx,prp)

Type: constant

Description: 
- Param: strt
- Param: varx
- Param: prp

Replaced value:
```sqf
([strt,varx,true,prp] call oop_getFieldBaseValue)
```
File: [host\oop.hpp at line 369](../../../Src/host/oop.hpp#L369)
## isNullObject(obj)

Type: constant

Description: !deprecated
- Param: obj

Replaced value:
```sqf
((obj) isequalto nullPtr)
```
File: [host\oop.hpp at line 373](../../../Src/host/oop.hpp#L373)
# precompiled.sqf

## __on_editor_attribute(membername,membertype)

Type: constant

Description: 
- Param: membername
- Param: membertype

Replaced value:
```sqf
if (count _editor_next_attr > 0) then { \
	membertype pushBack [membername,_editor_next_attr]; \
	_editor_next_attr = []; \
};
```
File: [host\precompiled.sqf at line 160](../../../Src/host/precompiled.sqf#L160)
## pc_oop_flag_reloadModule

Type: Variable

Description: 


Initial value:
```sqf
false
```
File: [host\precompiled.sqf at line 14](../../../Src/host/precompiled.sqf#L14)
## pc_oop_intList_loadObjectPool

Type: Variable

Description: 


Initial value:
```sqf
[]
```
File: [host\precompiled.sqf at line 15](../../../Src/host/precompiled.sqf#L15)
## pc_oop_carr_tntps

Type: Variable

Description: константные типы объектов. 0 - обычные называния типов, 1 - названия в редакторе


Initial value:
```sqf
["<Type::%1>","<EDITOR_Type::%1>"]
```
File: [host\precompiled.sqf at line 103](../../../Src/host/precompiled.sqf#L103)
## pc_oop_classBegin

Type: function

Description: 
- Param: _className
- Param: _definedIn

File: [host\precompiled.sqf at line 20](../../../Src/host/precompiled.sqf#L20)
## pc_oop_regClassTable

Type: function

Description: 
- Param: _class

File: [host\precompiled.sqf at line 38](../../../Src/host/precompiled.sqf#L38)
## pc_oop_newTypeObj

Type: function

Description: 
- Param: _class

File: [host\precompiled.sqf at line 45](../../../Src/host/precompiled.sqf#L45)
## pc_oop_declareClassAttr

Type: function

Description: функция декларатор атрибутов класса


File: [host\precompiled.sqf at line 59](../../../Src/host/precompiled.sqf#L59)
## pc_oop_declareEOC

Type: function

Description: декларатор конца класса


File: [host\precompiled.sqf at line 69](../../../Src/host/precompiled.sqf#L69)
## pc_oop_declareMemAttrs

Type: function

Description: функция привязки атрибутов к типу


File: [host\precompiled.sqf at line 106](../../../Src/host/precompiled.sqf#L106)
## pc_oop_postInitClass

Type: function

Description: завершающая иницализация класса.


File: [host\precompiled.sqf at line 115](../../../Src/host/precompiled.sqf#L115)
## pc_oop_regvar

Type: function

Description: регистратор переменной в классе. используется в генераторе узлов
- Param: _f
- Param: _v

File: [host\precompiled.sqf at line 166](../../../Src/host/precompiled.sqf#L166)
## pc_oop_handleAttrF

Type: function

Description: обработчик атрибутов поля


File: [host\precompiled.sqf at line 174](../../../Src/host/precompiled.sqf#L174)
## pc_oop_handleAttrM

Type: function

Description: обработчик атрибутов метода


File: [host\precompiled.sqf at line 187](../../../Src/host/precompiled.sqf#L187)
# profiling.hpp

## USE_SCRIPTED_PROFILING

Type: constant

Description: #define ASP_USE_PROFILING


Replaced value:
```sqf

```
File: [host\profiling.hpp at line 25](../../../Src/host/profiling.hpp#L25)
## PROFILE_TOSTRING(val)

Type: constant

Description: 
- Param: val

Replaced value:
```sqf
#val
```
File: [host\profiling.hpp at line 27](../../../Src/host/profiling.hpp#L27)
## PROFILE

Type: constant

Description: 


Replaced value:
```sqf
private PROFILE_DECLVAR = struct_newp(ProfileZone, PROFILE_TOSTRING(__FILE__) arg __LINE__);
```
File: [host\profiling.hpp at line 27](../../../Src/host/profiling.hpp#L27)
## ASP_MESSAGE(mes)

Type: constant

> Exists if **ASP_USE_PROFILING** defined

Description: log message
- Param: mes

Replaced value:
```sqf
profilerLog (mes);
```
File: [host\profiling.hpp at line 42](../../../Src/host/profiling.hpp#L42)
## ASP_REGION(name)

Type: constant

> Exists if **ASP_USE_PROFILING** defined

Description: auto region scope - will automatically deleted on scope exit
- Param: name

Replaced value:
```sqf
private _ascp__ = createProfileScope (name);
```
File: [host\profiling.hpp at line 44](../../../Src/host/profiling.hpp#L44)
## ASP_BEGIN_SCOPE(name)

Type: constant

> Exists if **ASP_USE_PROFILING** defined

Description: 
- Param: name

Replaced value:
```sqf
private _asR__ = createProfileScope (name);
```
File: [host\profiling.hpp at line 47](../../../Src/host/profiling.hpp#L47)
## ASP_END_SCOPE(name)

Type: constant

> Exists if **ASP_USE_PROFILING** defined

Description: 
- Param: name

Replaced value:
```sqf
_asR__ = 0;
```
File: [host\profiling.hpp at line 48](../../../Src/host/profiling.hpp#L48)
## ASP_MESSAGE(mes)

Type: constant

> Exists if **ASP_USE_PROFILING** not defined

Description: log message
- Param: mes

Replaced value:
```sqf

```
File: [host\profiling.hpp at line 50](../../../Src/host/profiling.hpp#L50)
## ASP_REGION(name)

Type: constant

> Exists if **ASP_USE_PROFILING** not defined

Description: auto region scope - will automatically deleted on scope exit
- Param: name

Replaced value:
```sqf

```
File: [host\profiling.hpp at line 51](../../../Src/host/profiling.hpp#L51)
## ASP_BEGIN_SCOPE(name)

Type: constant

> Exists if **ASP_USE_PROFILING** not defined

Description: 
- Param: name

Replaced value:
```sqf

```
File: [host\profiling.hpp at line 52](../../../Src/host/profiling.hpp#L52)
## ASP_END_SCOPE(name)

Type: constant

> Exists if **ASP_USE_PROFILING** not defined

Description: 
- Param: name

Replaced value:
```sqf

```
File: [host\profiling.hpp at line 53](../../../Src/host/profiling.hpp#L53)
# struct.hpp

## STRUCT_API_VERSION

Type: constant

Description: 


Replaced value:
```sqf
1.0
```
File: [host\struct.hpp at line 6](../../../Src/host/struct.hpp#L6)
## STRUCT_MEM_TYPE

Type: constant

Description: 


Replaced value:
```sqf
"#type"
```
File: [host\struct.hpp at line 72](../../../Src/host/struct.hpp#L72)
## STRUCT_MEM_BASE

Type: constant

Description: 


Replaced value:
```sqf
"#base"
```
File: [host\struct.hpp at line 73](../../../Src/host/struct.hpp#L73)
## STRUCT_MEM_TOSTRING

Type: constant

Description: 


Replaced value:
```sqf
"#str"
```
File: [host\struct.hpp at line 74](../../../Src/host/struct.hpp#L74)
## STRUCT_MEM_FLAGS

Type: constant

Description: 


Replaced value:
```sqf
"#flags"
```
File: [host\struct.hpp at line 75](../../../Src/host/struct.hpp#L75)
## STRUCT_MEM_CONSTRUCTOR

Type: constant

Description: 


Replaced value:
```sqf
"#create"
```
File: [host\struct.hpp at line 76](../../../Src/host/struct.hpp#L76)
## STRUCT_MEM_DESTRUCTOR

Type: constant

Description: 


Replaced value:
```sqf
"#delete"
```
File: [host\struct.hpp at line 77](../../../Src/host/struct.hpp#L77)
## STRUCT_MEM_COPY

Type: constant

Description: 


Replaced value:
```sqf
"#clone"
```
File: [host\struct.hpp at line 78](../../../Src/host/struct.hpp#L78)
## struct(name)

Type: constant

Description: forced delete structure
- Param: name

Replaced value:
```sqf
_sdecl__ = [ [STRUCT_MEM_TYPE, #name ], [STRUCT_MEM_FLAGS, struct_default_flag], ["__dflg__",false] ];
```
File: [host\struct.hpp at line 80](../../../Src/host/struct.hpp#L80)
## base(basename)

Type: constant

Description: 
- Param: basename

Replaced value:
```sqf
_sdecl__ pushBack [STRUCT_MEM_BASE, #basename ];
```
File: [host\struct.hpp at line 81](../../../Src/host/struct.hpp#L81)
## endstruct

Type: constant

Description: 


Replaced value:
```sqf
;spi_lst pushBack _sdecl__;
```
File: [host\struct.hpp at line 82](../../../Src/host/struct.hpp#L82)
## isinstance(_inst_o,type_n)

Type: constant

Description: 
- Param: _inst_o
- Param: type_n

Replaced value:
```sqf
(#type_n in (_inst_o get STRUCT_MEM_TYPE))
```
File: [host\struct.hpp at line 84](../../../Src/host/struct.hpp#L84)
## def(varname)

Type: constant

Description: !all values located for objects of type in one address (reference equals)
- Param: varname

Replaced value:
```sqf
;_soffst__ = _sdecl__ pushBack [#varname]; _sdecl__ select _soffst__ pushBack 
```
File: [host\struct.hpp at line 88](../../../Src/host/struct.hpp#L88)
## self

Type: constant

Description: method managemet


Replaced value:
```sqf
_self
```
File: [host\struct.hpp at line 91](../../../Src/host/struct.hpp#L91)
## callv(methodname)

Type: constant

Description: call function without parameters
- Param: methodname

Replaced value:
```sqf
call [#methodname]
```
File: [host\struct.hpp at line 93](../../../Src/host/struct.hpp#L93)
## callp(methodname,params)

Type: constant

Description: call functions with parameters
- Param: methodname
- Param: params

Replaced value:
```sqf
call [#methodname,[params]]
```
File: [host\struct.hpp at line 95](../../../Src/host/struct.hpp#L95)
## callbase(methodname)

Type: constant

Description: call base version of any method
- Param: methodname

Replaced value:
```sqf
_this call(missionnamespace getvariable ("pts_"+(self GET STRUCT_MEM_TYPE select 1)) GET #methodname)
```
File: [host\struct.hpp at line 97](../../../Src/host/struct.hpp#L97)
## getv(memname)

Type: constant

Description: variables management
- Param: memname

Replaced value:
```sqf
get #memname
```
File: [host\struct.hpp at line 100](../../../Src/host/struct.hpp#L100)
## setv(memname,val__)

Type: constant

Description: 
- Param: memname
- Param: val__

Replaced value:
```sqf
set [#memname,val__]
```
File: [host\struct.hpp at line 101](../../../Src/host/struct.hpp#L101)
## struct_typename(o)

Type: constant

Description: 
- Param: o

Replaced value:
```sqf
((o) GET STRUCT_MEM_TYPE select 0)
```
File: [host\struct.hpp at line 103](../../../Src/host/struct.hpp#L103)
## struct_new(name)

Type: constant

> Exists if **STRUCT_USE_ALLOC_INFO** defined

Description: 
- Param: name

Replaced value:
```sqf
([ pts_##name ] call struct_iallc)
```
File: [host\struct.hpp at line 108](../../../Src/host/struct.hpp#L108)
## struct_newp(name,arglist)

Type: constant

> Exists if **STRUCT_USE_ALLOC_INFO** defined

Description: 
- Param: name
- Param: arglist

Replaced value:
```sqf
(call{_sbj___ = [ pts_##name ,[arglist]] call struct_iallc; _sbj___ set ["__fileinfo__",__FILE__+ '+__LINE__']; _sbj___})
```
File: [host\struct.hpp at line 108](../../../Src/host/struct.hpp#L108)
## struct_newp(name,arglist)

Type: constant

> Exists if **STRUCT_USE_ALLOC_INFO** not defined

Description: 
- Param: name
- Param: arglist

Replaced value:
```sqf
([ pts_##name ,[arglist]] call struct_iallc)
```
File: [host\struct.hpp at line 111](../../../Src/host/struct.hpp#L111)
## struct_free(o)

Type: constant

Description: forced delete structure
- Param: o

Replaced value:
```sqf
o SET ["__dflg__",true];{if !(_y isequaltype {})then{o deleteAt _x};}foreach o
```
File: [host\struct.hpp at line 115](../../../Src/host/struct.hpp#L115)
## struct_erase(o)

Type: constant

Description: 
- Param: o

Replaced value:
```sqf
o SET ["__dflg__",true]; {o deleteAt _x}foreach o
```
File: [host\struct.hpp at line 116](../../../Src/host/struct.hpp#L116)
## struct_isdeleted(o)

Type: constant

Description: 
- Param: o

Replaced value:
```sqf
(o get "__dflg__")
```
File: [host\struct.hpp at line 117](../../../Src/host/struct.hpp#L117)
## struct_copy(rval)

Type: constant

Description: copy of object
- Param: rval

Replaced value:
```sqf
(+(rval))
```
File: [host\struct.hpp at line 119](../../../Src/host/struct.hpp#L119)
## struct_base_call(method)

Type: constant

Description: calling base method
- Param: method

Replaced value:
```sqf
call (missionnamespace getvariable ("pts_"+ (self GET STRUCT_MEM_TYPE select 1) ) )
```
File: [host\struct.hpp at line 121](../../../Src/host/struct.hpp#L121)
# text.hpp

## lt

Type: constant

Description: <


Replaced value:
```sqf
&lt;
```
File: [host\text.hpp at line 7](../../../Src/host/text.hpp#L7)
## slt

Type: constant

Description: 


Replaced value:
```sqf
"&lt;"
```
File: [host\text.hpp at line 8](../../../Src/host/text.hpp#L8)
## gt

Type: constant

Description: >


Replaced value:
```sqf
&gt;
```
File: [host\text.hpp at line 10](../../../Src/host/text.hpp#L10)
## sgt

Type: constant

Description: 


Replaced value:
```sqf
"&gt;"
```
File: [host\text.hpp at line 11](../../../Src/host/text.hpp#L11)
## lt

Type: constant

> Exists if **__VM_VALIDATE** defined

Description: <


Replaced value:
```sqf
left_br
```
File: [host\text.hpp at line 15](../../../Src/host/text.hpp#L15)
## slt

Type: constant

> Exists if **__VM_VALIDATE** defined

Description: 


Replaced value:
```sqf
"string_left_br"
```
File: [host\text.hpp at line 16](../../../Src/host/text.hpp#L16)
## gt

Type: constant

> Exists if **__VM_VALIDATE** defined

Description: >


Replaced value:
```sqf
right_br
```
File: [host\text.hpp at line 18](../../../Src/host/text.hpp#L18)
## sgt

Type: constant

> Exists if **__VM_VALIDATE** defined

Description: 


Replaced value:
```sqf
"string_right_br"
```
File: [host\text.hpp at line 19](../../../Src/host/text.hpp#L19)
## br_inline

Type: constant

Description: 


Replaced value:
```sqf
<br/>
```
File: [host\text.hpp at line 22](../../../Src/host/text.hpp#L22)
## sbr

Type: constant

Description: Не изменять!!! зависимости есть!!!


Replaced value:
```sqf
"<br/>"
```
File: [host\text.hpp at line 24](../../../Src/host/text.hpp#L24)
## comma

Type: constant

Description: Просто символ запятой (обычно используется в препроцессоре чтобы избежать ошибки)


Replaced value:
```sqf
","
```
File: [host\text.hpp at line 27](../../../Src/host/text.hpp#L27)
## pcomma

Type: constant

Description: 


Replaced value:
```sqf
+comma+
```
File: [host\text.hpp at line 29](../../../Src/host/text.hpp#L29)
## capitalize(text)

Type: constant

Description: Первую букву большую
- Param: text

Replaced value:
```sqf
(text call {private _s = toArray _this; toupper tostring(_s select [0,1]) + tostring(_s select [1,count _s - 1])})
```
File: [host\text.hpp at line 32](../../../Src/host/text.hpp#L32)
## lowerize(text)

Type: constant

Description: 
- Param: text

Replaced value:
```sqf
(text call {forceUnicode 0; toLower (_this select [0,1]) + (_this select [1,count _this - 1])})
```
File: [host\text.hpp at line 33](../../../Src/host/text.hpp#L33)
## sanitize(text)

Type: constant

Description: очищает строку от тегов, превращая в обычный текст
- Param: text

Replaced value:
```sqf
((text) call {if not_equalTypes(_this,"") then {str _this} else {_this regexReplace ["&", "&amp;"] regexReplace ["<", "&lt;"] regexReplace [">", "&gt;"] regexReplace ["""", "&quot;"] regexReplace ["'", "&apos;"]}})
```
File: [host\text.hpp at line 36](../../../Src/host/text.hpp#L36)
## sanitizeHTML(text)

Type: constant

Description: Убирает форматирование html. Используется для отслыки в чат дискорда
- Param: text

Replaced value:
```sqf
((text) call {if not_equalTypes(_this,"") then {str _this} else {str parseText _this}})
```
File: [host\text.hpp at line 39](../../../Src/host/text.hpp#L39)
## htmlToString(text)

Type: constant

Description: pseudoname for sanitizeHTML()
- Param: text

Replaced value:
```sqf
sanitizeHTML(text)
```
File: [host\text.hpp at line 42](../../../Src/host/text.hpp#L42)
## setstyle(txt,stl)

Type: constant

Description: http://htmlbook.ru/samhtml/tekst/spetssimvoly
- Param: txt
- Param: stl

Replaced value:
```sqf
('<t stl >'+(txt)+"</t>")
```
File: [host\text.hpp at line 47](../../../Src/host/text.hpp#L47)
## style_prop(name,valstr)

Type: constant

Description: 
- Param: name
- Param: valstr

Replaced value:
```sqf
name=''valstr''
```
File: [host\text.hpp at line 48](../../../Src/host/text.hpp#L48)
## style_learnedskills

Type: constant

Description: 


Replaced value:
```sqf
style_prop(align,center) style_prop(size,1.4) style_prop(color,#00B74A)
```
File: [host\text.hpp at line 50](../../../Src/host/text.hpp#L50)
## style_learnedskillscategory

Type: constant

Description: 


Replaced value:
```sqf
style_prop(align,center) style_prop(size,1.5) style_prop(color,#ffffff)
```
File: [host\text.hpp at line 51](../../../Src/host/text.hpp#L51)
## style_test

Type: constant

Description: 


Replaced value:
```sqf
color='#ff0000'
```
File: [host\text.hpp at line 52](../../../Src/host/text.hpp#L52)
## style_redbig

Type: constant

Description: 


Replaced value:
```sqf
style_prop(color,#ff0000) style_prop(size,1.5)
```
File: [host\text.hpp at line 53](../../../Src/host/text.hpp#L53)
## ST_ATTR_TOKEN_OPEN

Type: constant

Description: Решение проблемы с T_ATTR_END - поиск по закрывающему токену и пробелу перед ним


Replaced value:
```sqf
@1
```
File: [host\text.hpp at line 65](../../../Src/host/text.hpp#L65)
## ST_ATTR_TOKEN_CLOSE

Type: constant

Description: 


Replaced value:
```sqf
@2
```
File: [host\text.hpp at line 66](../../../Src/host/text.hpp#L66)
## ST_ATTR_TOKEN_END

Type: constant

Description: 


Replaced value:
```sqf
@3
```
File: [host\text.hpp at line 67](../../../Src/host/text.hpp#L67)
## ST_ATTR_TOKEN_OPEN_S

Type: constant

Description: 


Replaced value:
```sqf
@1
```
File: [host\text.hpp at line 69](../../../Src/host/text.hpp#L69)
## ST_ATTR_TOKEN_CLOSE_S

Type: constant

Description: 


Replaced value:
```sqf
@2
```
File: [host\text.hpp at line 70](../../../Src/host/text.hpp#L70)
## ST_ATTR_TOKEN_END_S

Type: constant

Description: 


Replaced value:
```sqf
@3
```
File: [host\text.hpp at line 71](../../../Src/host/text.hpp#L71)
## T_BREAK

Type: constant

Description: breaklines


Replaced value:
```sqf
@4
```
File: [host\text.hpp at line 74](../../../Src/host/text.hpp#L74)
## T_BREAK_S

Type: constant

Description: 


Replaced value:
```sqf
'T_BREAK'
```
File: [host\text.hpp at line 75](../../../Src/host/text.hpp#L75)
## T_ATTR_S(attributes__)

Type: constant

Description: 
- Param: attributes__

Replaced value:
```sqf
'ST_ATTR_TOKEN_OPEN attributes__ ST_ATTR_TOKEN_CLOSE'
```
File: [host\text.hpp at line 77](../../../Src/host/text.hpp#L77)
## T_ATTR(attrs_)

Type: constant

Description: 
- Param: attrs_

Replaced value:
```sqf
ST_ATTR_TOKEN_OPEN attrs_ ST_ATTR_TOKEN_CLOSE
```
File: [host\text.hpp at line 77](../../../Src/host/text.hpp#L77)
## T_ATTR_END_S

Type: constant

Description: 


Replaced value:
```sqf
'ST_ATTR_TOKEN_END'
```
File: [host\text.hpp at line 80](../../../Src/host/text.hpp#L80)
## T_ATTR_END

Type: constant

Description: 


Replaced value:
```sqf
ST_ATTR_TOKEN_END
```
File: [host\text.hpp at line 80](../../../Src/host/text.hpp#L80)
## T_SIZE(val)

Type: constant

Description: 
- Param: val

Replaced value:
```sqf
s=val
```
File: [host\text.hpp at line 83](../../../Src/host/text.hpp#L83)
## T_SIZE_S(val)

Type: constant

Description: 
- Param: val

Replaced value:
```sqf
'T_SIZE(val)'
```
File: [host\text.hpp at line 84](../../../Src/host/text.hpp#L84)
## T_COLOR(val)

Type: constant

Description: 
- Param: val

Replaced value:
```sqf
c=val
```
File: [host\text.hpp at line 86](../../../Src/host/text.hpp#L86)
## T_COLOR_S(val)

Type: constant

Description: 
- Param: val

Replaced value:
```sqf
'T_COLOR(val)'
```
File: [host\text.hpp at line 87](../../../Src/host/text.hpp#L87)
## T_FONT_TAHOMA

Type: constant

Description: 


Replaced value:
```sqf
f=0
```
File: [host\text.hpp at line 89](../../../Src/host/text.hpp#L89)
## __t_align_provider(val)

Type: constant

Description: align attribute
- Param: val

Replaced value:
```sqf
a=val
```
File: [host\text.hpp at line 95](../../../Src/host/text.hpp#L95)
## T_H_ALIGN_LEFT

Type: constant

Description: 


Replaced value:
```sqf
__t_align_provider(0)
```
File: [host\text.hpp at line 97](../../../Src/host/text.hpp#L97)
## T_H_ALIGN_CENTER

Type: constant

Description: 


Replaced value:
```sqf
__t_align_provider(1)
```
File: [host\text.hpp at line 98](../../../Src/host/text.hpp#L98)
## T_H_ALIGN_RIGHT

Type: constant

Description: 


Replaced value:
```sqf
__t_align_provider(2)
```
File: [host\text.hpp at line 99](../../../Src/host/text.hpp#L99)
## T_H_ALIGN_LEFT_S

Type: constant

Description: 


Replaced value:
```sqf
'T_H_ALIGN_LEFT'
```
File: [host\text.hpp at line 101](../../../Src/host/text.hpp#L101)
## T_H_ALIGN_CENTER_S

Type: constant

Description: 


Replaced value:
```sqf
'T_H_ALIGN_CENTER'
```
File: [host\text.hpp at line 102](../../../Src/host/text.hpp#L102)
## T_H_ALIGN_RIGHT_S

Type: constant

Description: 


Replaced value:
```sqf
'T_H_ALIGN_RIGHT'
```
File: [host\text.hpp at line 103](../../../Src/host/text.hpp#L103)
## __t_valign_provider(val)

Type: constant

Description: valign attribute
- Param: val

Replaced value:
```sqf
v=val
```
File: [host\text.hpp at line 106](../../../Src/host/text.hpp#L106)
## T_V_ALIGN_TOP

Type: constant

Description: 


Replaced value:
```sqf
__t_valign_provider(0)
```
File: [host\text.hpp at line 108](../../../Src/host/text.hpp#L108)
## T_V_ALIGN_MIDDLE

Type: constant

Description: 


Replaced value:
```sqf
__t_valign_provider(1)
```
File: [host\text.hpp at line 109](../../../Src/host/text.hpp#L109)
## T_V_ALIGN_BOTTOM

Type: constant

Description: 


Replaced value:
```sqf
__t_valign_provider(2)
```
File: [host\text.hpp at line 110](../../../Src/host/text.hpp#L110)
## T_V_ALIGN_TOP_S

Type: constant

Description: 


Replaced value:
```sqf
'T_V_ALIGN_TOP'
```
File: [host\text.hpp at line 112](../../../Src/host/text.hpp#L112)
## T_V_ALIGN_MIDDLE_S

Type: constant

Description: 


Replaced value:
```sqf
'T_V_ALIGN_MIDDLE'
```
File: [host\text.hpp at line 113](../../../Src/host/text.hpp#L113)
## T_V_ALIGN_BOTTOM_S

Type: constant

Description: 


Replaced value:
```sqf
'T_V_ALIGN_BOTTOM'
```
File: [host\text.hpp at line 114](../../../Src/host/text.hpp#L114)
## T_UNDERLINE(mode)

Type: constant

Description: underline
- Param: mode

Replaced value:
```sqf
u=mode
```
File: [host\text.hpp at line 118](../../../Src/host/text.hpp#L118)
## T_UNDERLINE_S(mode)

Type: constant

Description: 
- Param: mode

Replaced value:
```sqf
'T_UNDERLINE(mode)'
```
File: [host\text.hpp at line 119](../../../Src/host/text.hpp#L119)
## T_SHADOW_MODE(mode)

Type: constant

Description: shadow attributes
- Param: mode

Replaced value:
```sqf
h=mode
```
File: [host\text.hpp at line 122](../../../Src/host/text.hpp#L122)
## T_SHADOW_MODE_S(mode)

Type: constant

Description: 
- Param: mode

Replaced value:
```sqf
'T_SHADOW_MODE(mode)'
```
File: [host\text.hpp at line 123](../../../Src/host/text.hpp#L123)
## T_SHADOW_COLOR(col)

Type: constant

Description: 
- Param: col

Replaced value:
```sqf
g=col
```
File: [host\text.hpp at line 125](../../../Src/host/text.hpp#L125)
## T_SHADOW_COLOR_S(col)

Type: constant

Description: 
- Param: col

Replaced value:
```sqf
'T_SHADOW_COLOR(col)'
```
File: [host\text.hpp at line 126](../../../Src/host/text.hpp#L126)
## T_SHADOW_OFFSET(val)

Type: constant

Description: 
- Param: val

Replaced value:
```sqf
j=val
```
File: [host\text.hpp at line 128](../../../Src/host/text.hpp#L128)
## T_SHADOW_OFFSET_S(val)

Type: constant

Description: 
- Param: val

Replaced value:
```sqf
'T_SHADOW_OFFSET(val)'
```
File: [host\text.hpp at line 129](../../../Src/host/text.hpp#L129)
## T_IMAGE(dat)

Type: constant

Description: T_IMAGE(T_SIZE(0.8) T_IMAGEPATH(\a3\dataf\flags\flag_altis_co.paa))
- Param: dat

Replaced value:
```sqf
@5 dat @6
```
File: [host\text.hpp at line 135](../../../Src/host/text.hpp#L135)
## T_IMAGE_S(dat)

Type: constant

Description: 
- Param: dat

Replaced value:
```sqf
'T_IMAGE(dat)'
```
File: [host\text.hpp at line 136](../../../Src/host/text.hpp#L136)
## T_IMAGEPATH(pth)

Type: constant

Description: 
- Param: pth

Replaced value:
```sqf
i=pth
```
File: [host\text.hpp at line 138](../../../Src/host/text.hpp#L138)
## T_IMAGEPATH_S(pth)

Type: constant

Description: 
- Param: pth

Replaced value:
```sqf
'T_IMAGEPATH(pth)'
```
File: [host\text.hpp at line 139](../../../Src/host/text.hpp#L139)
## T_HREF(data,text)

Type: constant

Description: references
- Param: data
- Param: text

Replaced value:
```sqf
@7 data @8text @9
```
File: [host\text.hpp at line 142](../../../Src/host/text.hpp#L142)
## T_HREF_S(data,text)

Type: constant

Description: 
- Param: data
- Param: text

Replaced value:
```sqf
'T_HREF(data,text)'
```
File: [host\text.hpp at line 143](../../../Src/host/text.hpp#L143)
## T_HREF_COLOR(col)

Type: constant

Description: 
- Param: col

Replaced value:
```sqf
l=col
```
File: [host\text.hpp at line 145](../../../Src/host/text.hpp#L145)
## T_HREF_COLOR_S(col)

Type: constant

Description: 
- Param: col

Replaced value:
```sqf
'T_HREF_COLOR(col)'
```
File: [host\text.hpp at line 146](../../../Src/host/text.hpp#L146)
# thread.hpp

## threadNew(code)

Type: constant

Description: 
- Param: code

Replaced value:
```sqf
[[],code]
```
File: [host\thread.hpp at line 21](../../../Src/host/thread.hpp#L21)
## threadNewArgs(code,args)

Type: constant

Description: 
- Param: code
- Param: args

Replaced value:
```sqf
[args,code]
```
File: [host\thread.hpp at line 23](../../../Src/host/thread.hpp#L23)
## threadStart(thdObj)

Type: constant

Description: 
- Param: thdObj

Replaced value:
```sqf
thdObj call {private _t = (_this select 0)spawn(_this select 1);allThreads pushback _t; _t}
```
File: [host\thread.hpp at line 25](../../../Src/host/thread.hpp#L25)
## threadName(name)

Type: constant

Description: 
- Param: name

Replaced value:
```sqf
scriptname (name)
```
File: [host\thread.hpp at line 27](../../../Src/host/thread.hpp#L27)
## thisThread

Type: constant

Description: 


Replaced value:
```sqf
_thisScript
```
File: [host\thread.hpp at line 29](../../../Src/host/thread.hpp#L29)
## threadStop(thd)

Type: constant

Description: 
- Param: thd

Replaced value:
```sqf
terminate (thd)
```
File: [host\thread.hpp at line 31](../../../Src/host/thread.hpp#L31)
## threadSleep(time)

Type: constant

Description: 
- Param: time

Replaced value:
```sqf
uisleep (time)
```
File: [host\thread.hpp at line 33](../../../Src/host/thread.hpp#L33)
## isAsyncContext

Type: constant

Description: 


Replaced value:
```sqf
canSuspend
```
File: [host\thread.hpp at line 35](../../../Src/host/thread.hpp#L35)
## criticalSectionStart()

Type: constant

Description: critical section
- Param: 

Replaced value:
```sqf
isNil {
```
File: [host\thread.hpp at line 39](../../../Src/host/thread.hpp#L39)
## criticalSectionEnd()

Type: constant

Description: 
- Param: 

Replaced value:
```sqf
true}
```
File: [host\thread.hpp at line 41](../../../Src/host/thread.hpp#L41)
## mutexNew()

Type: constant

Description: mutex
- Param: 

Replaced value:
```sqf
[]
```
File: [host\thread.hpp at line 46](../../../Src/host/thread.hpp#L46)
## mutexLock(mutex)

Type: constant

Description: 
- Param: mutex

Replaced value:
```sqf
waitUntil { (mutex pushBackUnique 0) == 0;}
```
File: [host\thread.hpp at line 48](../../../Src/host/thread.hpp#L48)
## mutexUnlock(mutex)

Type: constant

Description: 
- Param: mutex

Replaced value:
```sqf
mutex deleteAt 0
```
File: [host\thread.hpp at line 50](../../../Src/host/thread.hpp#L50)
## mutexTryLock(mutex)

Type: constant

Description: diag_tickTime becomes less accurate the longer a mission is running, so higher timeout value is better for robustness
- Param: mutex

Replaced value:
```sqf
if(((mutex) pushBackUnique 0) == 0) then {true} else {false}
```
File: [host\thread.hpp at line 52](../../../Src/host/thread.hpp#L52)
## mutexIsLocked(mutex)

Type: constant

Description: 
- Param: mutex

Replaced value:
```sqf
(count (mutex) > 0)
```
File: [host\thread.hpp at line 53](../../../Src/host/thread.hpp#L53)
## mutexTryLockTimeout(mutex, timeout)

Type: constant

Description: diag_tickTime becomes less accurate the longer a mission is running, so higher timeout value is better for robustness
- Param: mutex
- Param: timeout

Replaced value:
```sqf
[] call { private _timer = diag_tickTime; private _locked = false; waitUntil { _locked = ((mutex) pushBackUnique 0) == 0; _locked || {diag_tickTime > (_timer + (timeout))} }; _locked }
```
File: [host\thread.hpp at line 56](../../../Src/host/thread.hpp#L56)

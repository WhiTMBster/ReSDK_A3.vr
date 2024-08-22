# NOEngineClient.h

## PACKET_LIFETIME

Type: constant

Description: packets


Replaced value:
```sqf
15
```
File: [client\NOEngineClient\NOEngineClient.h at line 11](../../../Src/client/NOEngineClient/NOEngineClient.h#L11)
## pushPacketId(id)

Type: constant

Description: 
- Param: id

Replaced value:
```sqf
noe_client_packets pushBack id
```
File: [client\NOEngineClient\NOEngineClient.h at line 13](../../../Src/client/NOEngineClient/NOEngineClient.h#L13)
## popPacketId(id)

Type: constant

Description: 
- Param: id

Replaced value:
```sqf
call{ private _idx = noe_client_packets find id; \
	if (_idx!=-1) then { \
		noe_client_packets deleteAt _idx; \
		noe_client_packetsChunks deleteAt (str id); \
		true} else {false}}
```
File: [client\NOEngineClient\NOEngineClient.h at line 14](../../../Src/client/NOEngineClient/NOEngineClient.h#L14)
## chunk_loadingState

Type: constant

Description: common macro


Replaced value:
```sqf
0
```
File: [client\NOEngineClient\NOEngineClient.h at line 22](../../../Src/client/NOEngineClient/NOEngineClient.h#L22)
## chunk_lastupdate

Type: constant

Description: 


Replaced value:
```sqf
1  
```
File: [client\NOEngineClient\NOEngineClient.h at line 23](../../../Src/client/NOEngineClient/NOEngineClient.h#L23)
## chunk_objectsData

Type: constant

Description: 


Replaced value:
```sqf
2
```
File: [client\NOEngineClient\NOEngineClient.h at line 24](../../../Src/client/NOEngineClient/NOEngineClient.h#L24)
## chunk_name

Type: constant

Description: 


Replaced value:
```sqf
3
```
File: [client\NOEngineClient\NOEngineClient.h at line 25](../../../Src/client/NOEngineClient/NOEngineClient.h#L25)
## chunk_progress

Type: constant

Description: 


Replaced value:
```sqf
4
```
File: [client\NOEngineClient\NOEngineClient.h at line 26](../../../Src/client/NOEngineClient/NOEngineClient.h#L26)
## chunk_lastdelete

Type: constant

Description: 


Replaced value:
```sqf
5
```
File: [client\NOEngineClient\NOEngineClient.h at line 27](../../../Src/client/NOEngineClient/NOEngineClient.h#L27)
## CHUNK_STATE_NOT_LOADED

Type: constant

Description: 


Replaced value:
```sqf
0
```
File: [client\NOEngineClient\NOEngineClient.h at line 29](../../../Src/client/NOEngineClient/NOEngineClient.h#L29)
## CHUNK_STATE_AWAIT_RESPONSE

Type: constant

Description: 


Replaced value:
```sqf
1
```
File: [client\NOEngineClient\NOEngineClient.h at line 30](../../../Src/client/NOEngineClient/NOEngineClient.h#L30)
## CHUNK_STATE_LOADED

Type: constant

Description: 


Replaced value:
```sqf
2
```
File: [client\NOEngineClient\NOEngineClient.h at line 31](../../../Src/client/NOEngineClient/NOEngineClient.h#L31)
## CHUNK_PROGRESS_NOTLOADED

Type: constant

Description: 


Replaced value:
```sqf
0
```
File: [client\NOEngineClient\NOEngineClient.h at line 33](../../../Src/client/NOEngineClient/NOEngineClient.h#L33)
## CHUNK_PROGRESS_PROCESSED

Type: constant

Description: 


Replaced value:
```sqf
1
```
File: [client\NOEngineClient\NOEngineClient.h at line 34](../../../Src/client/NOEngineClient/NOEngineClient.h#L34)
## CHUNK_PROGRESS_LOADED

Type: constant

Description: 


Replaced value:
```sqf
2
```
File: [client\NOEngineClient\NOEngineClient.h at line 35](../../../Src/client/NOEngineClient/NOEngineClient.h#L35)
## allocChunk(data)

Type: constant

Description: ! не изменять значение chunk_lastupdate иначе сломается IStructNonReplicate
- Param: data

Replaced value:
```sqf
[CHUNK_STATE_NOT_LOADED,0,createHashMap,data,CHUNK_PROGRESS_NOTLOADED,0]
```
File: [client\NOEngineClient\NOEngineClient.h at line 38](../../../Src/client/NOEngineClient/NOEngineClient.h#L38)
## registerChunk(ch,pos,buf)

Type: constant

Description: 
- Param: ch
- Param: pos
- Param: buf

Replaced value:
```sqf
ch set [pos,buf]
```
File: [client\NOEngineClient\NOEngineClient.h at line 40](../../../Src/client/NOEngineClient/NOEngineClient.h#L40)
## getChunkStorage(type)

Type: constant

Description: 
- Param: type

Replaced value:
```sqf
(noe_client_cs get type)
```
File: [client\NOEngineClient\NOEngineClient.h at line 42](../../../Src/client/NOEngineClient/NOEngineClient.h#L42)
## getChunk(chs,pos)

Type: constant

Description: фаст универсалка для получения чанка
- Param: chs
- Param: pos

Replaced value:
```sqf
(chs get (pos))
```
File: [client\NOEngineClient\NOEngineClient.h at line 42](../../../Src/client/NOEngineClient/NOEngineClient.h#L42)
## getChunkData(pos,type)

Type: constant

Description: фаст универсалка для получения чанка
- Param: pos
- Param: type

Replaced value:
```sqf
getChunk(getChunkStorage(type),str pos)
```
File: [client\NOEngineClient\NOEngineClient.h at line 46](../../../Src/client/NOEngineClient/NOEngineClient.h#L46)
## initChunkData(type,pos,alloc)

Type: constant

Description: 
- Param: type
- Param: pos
- Param: alloc

Replaced value:
```sqf
getChunkStorage(type) set [str pos,alloc]
```
File: [client\NOEngineClient\NOEngineClient.h at line 47](../../../Src/client/NOEngineClient/NOEngineClient.h#L47)
## chunk_setLoadingState(chunk,state)

Type: constant

Description: 
- Param: chunk
- Param: state

Replaced value:
```sqf
(chunk) set [chunk_loadingState,state]
```
File: [client\NOEngineClient\NOEngineClient.h at line 49](../../../Src/client/NOEngineClient/NOEngineClient.h#L49)
## chunk_getLoadingState(chunk)

Type: constant

Description: 
- Param: chunk

Replaced value:
```sqf
((chunk) select chunk_loadingState)
```
File: [client\NOEngineClient\NOEngineClient.h at line 50](../../../Src/client/NOEngineClient/NOEngineClient.h#L50)
## chunk_getLastTicktimeUpdate(chunk)

Type: constant

Description: 
- Param: chunk

Replaced value:
```sqf
((chunk) select chunk_lastupdate)
```
File: [client\NOEngineClient\NOEngineClient.h at line 52](../../../Src/client/NOEngineClient/NOEngineClient.h#L52)
## chunk_setLastTicktimeUpdate(chunk,time)

Type: constant

Description: 
- Param: chunk
- Param: time

Replaced value:
```sqf
(chunk) set [chunk_lastupdate,time]
```
File: [client\NOEngineClient\NOEngineClient.h at line 53](../../../Src/client/NOEngineClient/NOEngineClient.h#L53)
## chunk_getObjectsData(chunk)

Type: constant

Description: 
- Param: chunk

Replaced value:
```sqf
((chunk) select chunk_objectsData)
```
File: [client\NOEngineClient\NOEngineClient.h at line 56](../../../Src/client/NOEngineClient/NOEngineClient.h#L56)
## chunk_objectData_ptr

Type: constant

Description: указатель на модель


Replaced value:
```sqf
0
```
File: [client\NOEngineClient\NOEngineClient.h at line 58](../../../Src/client/NOEngineClient/NOEngineClient.h#L58)
## chunk_objectData_transform

Type: constant

Description: полные данные объекта


Replaced value:
```sqf
1
```
File: [client\NOEngineClient\NOEngineClient.h at line 60](../../../Src/client/NOEngineClient/NOEngineClient.h#L60)
## chunk_getName(chunk)

Type: constant

Description: 
- Param: chunk

Replaced value:
```sqf
((chunk) select chunk_name)
```
File: [client\NOEngineClient\NOEngineClient.h at line 62](../../../Src/client/NOEngineClient/NOEngineClient.h#L62)
## chunk_getProgress(chunk)

Type: constant

Description: 
- Param: chunk

Replaced value:
```sqf
((chunk) select chunk_progress)
```
File: [client\NOEngineClient\NOEngineClient.h at line 64](../../../Src/client/NOEngineClient/NOEngineClient.h#L64)
## chunk_setProgress(chunk,state)

Type: constant

Description: 
- Param: chunk
- Param: state

Replaced value:
```sqf
(chunk) set [chunk_progress,state]
```
File: [client\NOEngineClient\NOEngineClient.h at line 65](../../../Src/client/NOEngineClient/NOEngineClient.h#L65)
## chunk_getLastTicktimeDelete(chunk)

Type: constant

Description: 
- Param: chunk

Replaced value:
```sqf
((chunk) select chunk_lastdelete)
```
File: [client\NOEngineClient\NOEngineClient.h at line 67](../../../Src/client/NOEngineClient/NOEngineClient.h#L67)
## chunk_setLastTicktimeDelete(chunk,time)

Type: constant

Description: 
- Param: chunk
- Param: time

Replaced value:
```sqf
(chunk) set [chunk_lastdelete,time]
```
File: [client\NOEngineClient\NOEngineClient.h at line 68](../../../Src/client/NOEngineClient/NOEngineClient.h#L68)
## chunk_parseNameToPosAndType(ch)

Type: constant

Description: 
- Param: ch

Replaced value:
```sqf
(parseSimpleArray (ch))
```
File: [client\NOEngineClient\NOEngineClient.h at line 70](../../../Src/client/NOEngineClient/NOEngineClient.h#L70)
## newODataStorage(data)

Type: constant

Description: 
- Param: data

Replaced value:
```sqf
[objnull,data]
```
File: [client\NOEngineClient\NOEngineClient.h at line 72](../../../Src/client/NOEngineClient/NOEngineClient.h#L72)
## stdDelayDelete()

Type: constant

Description: стандартная поточная задержка при удалении
- Param: 

Replaced value:
```sqf
uiSleep (2 / diag_fps)
```
File: [client\NOEngineClient\NOEngineClient.h at line 75](../../../Src/client/NOEngineClient/NOEngineClient.h#L75)
# NOEngineClientInit.sqf

## noe_debug_allthreads

Type: Variable

> Exists if **NOE_CLIENT_THREAD_DEBUG** defined

Description: 


Initial value:
```sqf
[]
```
File: [client\NOEngineClient\NOEngineClientInit.sqf at line 36](../../../Src/client/NOEngineClient/NOEngineClientInit.sqf#L36)
## noe_client_cs

Type: Variable

Description: 


Initial value:
```sqf
createHashMap
```
File: [client\NOEngineClient\NOEngineClientInit.sqf at line 39](../../../Src/client/NOEngineClient/NOEngineClientInit.sqf#L39)
## noe_client_allChunkTypes

Type: Variable

Description: 


Initial value:
```sqf
[CHUNK_TYPE_ITEM,CHUNK_TYPE_STRUCTURE,CHUNK_TYPE_DECOR]
```
File: [client\NOEngineClient\NOEngineClientInit.sqf at line 40](../../../Src/client/NOEngineClient/NOEngineClientInit.sqf#L40)
## noe_client_packetId

Type: Variable

Description: первый обязательный вызов


Initial value:
```sqf
0
```
File: [client\NOEngineClient\NOEngineClientInit.sqf at line 51](../../../Src/client/NOEngineClient/NOEngineClientInit.sqf#L51)
## noe_client_packets

Type: Variable

Description: 


Initial value:
```sqf
[]
```
File: [client\NOEngineClient\NOEngineClientInit.sqf at line 52](../../../Src/client/NOEngineClient/NOEngineClientInit.sqf#L52)
## noe_client_packetsChunks

Type: Variable

Description: 


Initial value:
```sqf
createHashMap
```
File: [client\NOEngineClient\NOEngineClientInit.sqf at line 53](../../../Src/client/NOEngineClient/NOEngineClientInit.sqf#L53)
## noe_client_allPointers

Type: Variable

Description: 


Initial value:
```sqf
createHashMap
```
File: [client\NOEngineClient\NOEngineClientInit.sqf at line 55](../../../Src/client/NOEngineClient/NOEngineClientInit.sqf#L55)
## noe_client_set_lockedPropUpdates

Type: Variable

Description: 


Initial value:
```sqf
createHashMap //список блокировки обновления визуального состояния объекта
```
File: [client\NOEngineClient\NOEngineClientInit.sqf at line 57](../../../Src/client/NOEngineClient/NOEngineClientInit.sqf#L57)
## noe_client_handlers

Type: Variable

Description: список блокировки обновления визуального состояния объекта


Initial value:
```sqf
[]
```
File: [client\NOEngineClient\NOEngineClientInit.sqf at line 59](../../../Src/client/NOEngineClient/NOEngineClientInit.sqf#L59)
## noe_client_generateStorage

Type: function

Description: генерирует контейнеры хранения данных под чанки


File: [client\NOEngineClient\NOEngineClientInit.sqf at line 43](../../../Src/client/NOEngineClient/NOEngineClientInit.sqf#L43)
## noe_client_startListening

Type: function

Description: Запускает потоки карты


File: [client\NOEngineClient\NOEngineClientInit.sqf at line 62](../../../Src/client/NOEngineClient/NOEngineClientInit.sqf#L62)
## noe_client_isEnabled

Type: function

Description: 


File: [client\NOEngineClient\NOEngineClientInit.sqf at line 70](../../../Src/client/NOEngineClient/NOEngineClientInit.sqf#L70)
## noe_client_stopListening

Type: function

Description: 
- Param: _mob

File: [client\NOEngineClient\NOEngineClientInit.sqf at line 72](../../../Src/client/NOEngineClient/NOEngineClientInit.sqf#L72)
## noe_client_unloadAllChunks

Type: function

Description: Выгружает и отписывает клиента от всех чанков которые он загрузил
- Param: _mob

File: [client\NOEngineClient\NOEngineClientInit.sqf at line 94](../../../Src/client/NOEngineClient/NOEngineClientInit.sqf#L94)
## noe_client_onUpdate

Type: function

Description: 


File: [client\NOEngineClient\NOEngineClientInit.sqf at line 131](../../../Src/client/NOEngineClient/NOEngineClientInit.sqf#L131)
# NOEngineClient_chunkDebug.sqf

## upside

Type: constant

Description: #define enableDebugDrawSectors 1


Replaced value:
```sqf
_size
```
File: [client\NOEngineClient\NOEngineClient_chunkDebug.sqf at line 13](../../../Src/client/NOEngineClient/NOEngineClient_chunkDebug.sqf#L13)
## remap_ch(x,y)

Type: constant

Description: 
- Param: x
- Param: y

Replaced value:
```sqf
[(getPosATL player) vectorAdd [x*_dist,y*_dist],_x] call noe_posToChunk
```
File: [client\NOEngineClient\NOEngineClient_chunkDebug.sqf at line 142](../../../Src/client/NOEngineClient/NOEngineClient_chunkDebug.sqf#L142)
## startSectorIndex

Type: constant

> Exists if **enableDebugDrawSectors** defined

Description: 


Replaced value:
```sqf
1
```
File: [client\NOEngineClient\NOEngineClient_chunkDebug.sqf at line 161](../../../Src/client/NOEngineClient/NOEngineClient_chunkDebug.sqf#L161)
## sectorSize

Type: constant

> Exists if **enableDebugDrawSectors** defined

Description: 


Replaced value:
```sqf
1
```
File: [client\NOEngineClient\NOEngineClient_chunkDebug.sqf at line 162](../../../Src/client/NOEngineClient/NOEngineClient_chunkDebug.sqf#L162)
## noe_debug_canDrawInfo

Type: Variable

Description: 


Initial value:
```sqf
!isNull(enableDebugDrawInfo)
```
File: [client\NOEngineClient\NOEngineClient_chunkDebug.sqf at line 22](../../../Src/client/NOEngineClient/NOEngineClient_chunkDebug.sqf#L22)
## noe_debug_drawChunkSides_player

Type: function

> Exists if **enableDebugDraw** defined

Description: 
- Param: _chunk
- Param: _type
- Param: _color

File: [client\NOEngineClient\NOEngineClient_chunkDebug.sqf at line 26](../../../Src/client/NOEngineClient/NOEngineClient_chunkDebug.sqf#L26)
## noe_debug_drawChunkInfo

Type: function

Description: 
- Param: _chunk
- Param: _type
- Param: _color

File: [client\NOEngineClient\NOEngineClient_chunkDebug.sqf at line 58](../../../Src/client/NOEngineClient/NOEngineClient_chunkDebug.sqf#L58)
## noe_debug_sector_redraw

Type: function

> Exists if **enableDebugDrawSectors** defined

Description: 
- Param: _x
- Param: _y
- Param: _z

File: [client\NOEngineClient\NOEngineClient_chunkDebug.sqf at line 164](../../../Src/client/NOEngineClient/NOEngineClient_chunkDebug.sqf#L164)
## noe_debug_drawSectorSides_player

Type: function

> Exists if **enableDebugDrawSectors** defined

Description: 
- Param: _chunk
- Param: _color

File: [client\NOEngineClient\NOEngineClient_chunkDebug.sqf at line 174](../../../Src/client/NOEngineClient/NOEngineClient_chunkDebug.sqf#L174)
# NOEngineClient_Components.sqf

## noe_client_threadList

Type: Variable

Description: 


Initial value:
```sqf
[]
```
File: [client\NOEngineClient\NOEngineClient_Components.sqf at line 47](../../../Src/client/NOEngineClient/NOEngineClient_Components.sqf#L47)
## noe_client_isChunkCreated

Type: function

Description: 
- Param: _chunk
- Param: _type

File: [client\NOEngineClient\NOEngineClient_Components.sqf at line 14](../../../Src/client/NOEngineClient/NOEngineClient_Components.sqf#L14)
## noe_client_GetChunkLastUpdate

Type: function

Description: получает временную отметку чанка. Если чанк не существует - создаёт его


File: [client\NOEngineClient\NOEngineClient_Components.sqf at line 20](../../../Src/client/NOEngineClient/NOEngineClient_Components.sqf#L20)
## noe_client_getPosChunkToData

Type: function

Description: Получает объект чанка с информацией
- Param: _chunk
- Param: _type

File: [client\NOEngineClient\NOEngineClient_Components.sqf at line 25](../../../Src/client/NOEngineClient/NOEngineClient_Components.sqf#L25)
## noe_client_loadObjects

Type: function

Description: _spawnObjList - массив обновления данных. Чанк загружается весь
- Param: _chunkObject
- Param: _spawnObjList

File: [client\NOEngineClient\NOEngineClient_Components.sqf at line 51](../../../Src/client/NOEngineClient/NOEngineClient_Components.sqf#L51)
## noe_client_isObjectsLoadingDone

Type: function

Description: проверят созданы ли все объекты в чанке
- Param: _chunk

File: [client\NOEngineClient\NOEngineClient_Components.sqf at line 121](../../../Src/client/NOEngineClient/NOEngineClient_Components.sqf#L121)
## noe_client_isPlayerPositionChunksLoaded

Type: function

Description: проверяет загружены ли все объекты чанков в которых позиционируется игрок


File: [client\NOEngineClient\NOEngineClient_Components.sqf at line 127](../../../Src/client/NOEngineClient/NOEngineClient_Components.sqf#L127)
# NOEngineClient_Interpolation.sqf

## noe_client_defaultInterpTime

Type: Variable

Description: 


Initial value:
```sqf
0.15
```
File: [client\NOEngineClient\NOEngineClient_Interpolation.sqf at line 6](../../../Src/client/NOEngineClient/NOEngineClient_Interpolation.sqf#L6)
## noe_client_interp_processObjInterp

Type: function

Description: 
- Param: _srcObj
- Param: _fromPos
- Param: _fromTransf
- Param: _toPos
- Param: _toTransf
- Param: _time
- Param: _scaleMode (optional, default 0)
- Param: _stdMode (optional, default 0)
- Param: _emuMode (optional, default false)

File: [client\NOEngineClient\NOEngineClient_Interpolation.sqf at line 8](../../../Src/client/NOEngineClient/NOEngineClient_Interpolation.sqf#L8)
## noe_client_interp_start

Type: function

Description: 
- Param: _owner
- Param: _paramsT

File: [client\NOEngineClient\NOEngineClient_Interpolation.sqf at line 137](../../../Src/client/NOEngineClient/NOEngineClient_Interpolation.sqf#L137)
## noe_client_interp_determineTransform

Type: function

Description: returns [srcobj,pos,trans]
- Param: _owner
- Param: _data

File: [client\NOEngineClient\NOEngineClient_Interpolation.sqf at line 273](../../../Src/client/NOEngineClient/NOEngineClient_Interpolation.sqf#L273)
# NOEngineClient_localAtmos.sqf

## ACLI_TYPE_FIRE

Type: constant

Description: 


Replaced value:
```sqf
[SLIGHT_ATMOS_FIRE_1,SLIGHT_ATMOS_FIRE_2,SLIGHT_ATMOS_FIRE_3]
```
File: [client\NOEngineClient\NOEngineClient_localAtmos.sqf at line 14](../../../Src/client/NOEngineClient/NOEngineClient_localAtmos.sqf#L14)
## ACLI_DATA_OBJECTS

Type: constant

Description: 


Replaced value:
```sqf
0
```
File: [client\NOEngineClient\NOEngineClient_localAtmos.sqf at line 16](../../../Src/client/NOEngineClient/NOEngineClient_localAtmos.sqf#L16)
## ACLI_DATA_METAINFO

Type: constant

Description: 


Replaced value:
```sqf
1
```
File: [client\NOEngineClient\NOEngineClient_localAtmos.sqf at line 17](../../../Src/client/NOEngineClient/NOEngineClient_localAtmos.sqf#L17)
## ACLI_DATA_CHUNK_ID

Type: constant

Description: 


Replaced value:
```sqf
2
```
File: [client\NOEngineClient\NOEngineClient_localAtmos.sqf at line 18](../../../Src/client/NOEngineClient/NOEngineClient_localAtmos.sqf#L18)
## __ACLI_NEW_BUFFER_OBJECTS

Type: constant

Description: 


Replaced value:
```sqf
[objNull,objNull]
```
File: [client\NOEngineClient\NOEngineClient_localAtmos.sqf at line 20](../../../Src/client/NOEngineClient/NOEngineClient_localAtmos.sqf#L20)
## __ACLI_NEW_BUFFER_METAINFO

Type: constant

Description: 


Replaced value:
```sqf
0
```
File: [client\NOEngineClient\NOEngineClient_localAtmos.sqf at line 21](../../../Src/client/NOEngineClient/NOEngineClient_localAtmos.sqf#L21)
## __ACLI_NEW_DATA

Type: constant

Description: 


Replaced value:
```sqf
[__ACLI_NEW_BUFFER_OBJECTS,__ACLI_NEW_BUFFER_METAINFO,_chid]
```
File: [client\NOEngineClient\NOEngineClient_localAtmos.sqf at line 22](../../../Src/client/NOEngineClient/NOEngineClient_localAtmos.sqf#L22)
## ACLI_NEW_CHUNK

Type: constant

Description: 


Replaced value:
```sqf
__ACLI_NEW_DATA
```
File: [client\NOEngineClient\NOEngineClient_localAtmos.sqf at line 23](../../../Src/client/NOEngineClient/NOEngineClient_localAtmos.sqf#L23)
## acli_map_chunks

Type: Variable

Description: 


Initial value:
```sqf
createHashMap
```
File: [client\NOEngineClient\NOEngineClient_localAtmos.sqf at line 25](../../../Src/client/NOEngineClient/NOEngineClient_localAtmos.sqf#L25)
## acli_bool_requestUpdate

Type: Variable

Description: 


Initial value:
```sqf
false
```
File: [client\NOEngineClient\NOEngineClient_localAtmos.sqf at line 26](../../../Src/client/NOEngineClient/NOEngineClient_localAtmos.sqf#L26)
## acli_bool_enableSystem

Type: Variable

Description: 


Initial value:
```sqf
false //turn off is won't work
```
File: [client\NOEngineClient\NOEngineClient_localAtmos.sqf at line 27](../../../Src/client/NOEngineClient/NOEngineClient_localAtmos.sqf#L27)
## acli_internal_onUpdate_handle

Type: Variable

Description: 


Initial value:
```sqf
ifcheck(acli_bool_enableSystem,startUpdate(acli_lazyCheck,1),-1)
```
File: [client\NOEngineClient\NOEngineClient_localAtmos.sqf at line 160](../../../Src/client/NOEngineClient/NOEngineClient_localAtmos.sqf#L160)
## acli_handleAddObj

Type: function

Description: turn off is won't work
- Param: _obj
- Param: _cfgId

File: [client\NOEngineClient\NOEngineClient_localAtmos.sqf at line 29](../../../Src/client/NOEngineClient/NOEngineClient_localAtmos.sqf#L29)
## acli_getChunk

Type: function

Description: };
- Param: _chid

File: [client\NOEngineClient\NOEngineClient_localAtmos.sqf at line 80](../../../Src/client/NOEngineClient/NOEngineClient_localAtmos.sqf#L80)
## acli_getChunkUnsafe

Type: function

Description: 
- Param: _chid

File: [client\NOEngineClient\NOEngineClient_localAtmos.sqf at line 91](../../../Src/client/NOEngineClient/NOEngineClient_localAtmos.sqf#L91)
## acli_lazyCheck

Type: function

Description: 


File: [client\NOEngineClient\NOEngineClient_localAtmos.sqf at line 111](../../../Src/client/NOEngineClient/NOEngineClient_localAtmos.sqf#L111)
## acli_getAroundChIDList

Type: function

Description: 
- Param: _chid

File: [client\NOEngineClient\NOEngineClient_localAtmos.sqf at line 162](../../../Src/client/NOEngineClient/NOEngineClient_localAtmos.sqf#L162)
## acli_chunkPosToId

Type: function

Description: 
- Param: _x
- Param: _y
- Param: _z

File: [client\NOEngineClient\NOEngineClient_localAtmos.sqf at line 174](../../../Src/client/NOEngineClient/NOEngineClient_localAtmos.sqf#L174)
## acli_chunkIdToPos

Type: function

Description: returns center atl pos of chunk
- Param: _iX
- Param: _iY
- Param: _iZ

File: [client\NOEngineClient\NOEngineClient_localAtmos.sqf at line 185](../../../Src/client/NOEngineClient/NOEngineClient_localAtmos.sqf#L185)
# NOEngineClient_NetAtmos.hpp

## NAT_LOADING_SLIST_STATES

Type: constant

Description: 


Replaced value:
```sqf
["err","not_loading","await_resp","loading","ok"]
```
File: [client\NOEngineClient\NOEngineClient_NetAtmos.hpp at line 13](../../../Src/client/NOEngineClient/NOEngineClient_NetAtmos.hpp#L13)
## NAT_LOADING_STATE_ERROR

Type: constant

Description: 


Replaced value:
```sqf
-1
```
File: [client\NOEngineClient\NOEngineClient_NetAtmos.hpp at line 15](../../../Src/client/NOEngineClient/NOEngineClient_NetAtmos.hpp#L15)
## NAT_LOADING_STATE_NOT_LOADED

Type: constant

Description: 


Replaced value:
```sqf
0
```
File: [client\NOEngineClient\NOEngineClient_NetAtmos.hpp at line 16](../../../Src/client/NOEngineClient/NOEngineClient_NetAtmos.hpp#L16)
## NAT_LOADING_STATE_AWAIT_RESPONE

Type: constant

Description: 


Replaced value:
```sqf
1
```
File: [client\NOEngineClient\NOEngineClient_NetAtmos.hpp at line 17](../../../Src/client/NOEngineClient/NOEngineClient_NetAtmos.hpp#L17)
## NAT_LOADING_STATE_LOADING

Type: constant

Description: 


Replaced value:
```sqf
2
```
File: [client\NOEngineClient\NOEngineClient_NetAtmos.hpp at line 18](../../../Src/client/NOEngineClient/NOEngineClient_NetAtmos.hpp#L18)
## NAT_LOADING_STATE_LOADED

Type: constant

Description: 


Replaced value:
```sqf
3
```
File: [client\NOEngineClient\NOEngineClient_NetAtmos.hpp at line 19](../../../Src/client/NOEngineClient/NOEngineClient_NetAtmos.hpp#L19)
## NAT_CHUNKDAT_CFG

Type: constant

Description: 


Replaced value:
```sqf
0
```
File: [client\NOEngineClient\NOEngineClient_NetAtmos.hpp at line 23](../../../Src/client/NOEngineClient/NOEngineClient_NetAtmos.hpp#L23)
## NAT_CHUNKDAT_OBJECT

Type: constant

Description: 


Replaced value:
```sqf
1
```
File: [client\NOEngineClient\NOEngineClient_NetAtmos.hpp at line 24](../../../Src/client/NOEngineClient/NOEngineClient_NetAtmos.hpp#L24)
## NAT_CHUNKDAT_NEW(cfg)

Type: constant

Description: 
- Param: cfg

Replaced value:
```sqf
[cfg,nil]
```
File: [client\NOEngineClient\NOEngineClient_NetAtmos.hpp at line 25](../../../Src/client/NOEngineClient/NOEngineClient_NetAtmos.hpp#L25)
# NOEngineClient_NetAtmos.sqf

## NOE_NETATMOS_UPDATE_DELAY

Type: constant

Description: 


Replaced value:
```sqf
1
```
File: [client\NOEngineClient\NOEngineClient_NetAtmos.sqf at line 8](../../../Src/client/NOEngineClient/NOEngineClient_NetAtmos.sqf#L8)
## noe_client_nat_handleUpdate

Type: Variable

Description: 


Initial value:
```sqf
-1
```
File: [client\NOEngineClient\NOEngineClient_NetAtmos.sqf at line 11](../../../Src/client/NOEngineClient/NOEngineClient_NetAtmos.sqf#L11)
## noe_client_nat_areas

Type: Variable

Description: 


Initial value:
```sqf
createHashMap
```
File: [client\NOEngineClient\NOEngineClient_NetAtmos.sqf at line 16](../../../Src/client/NOEngineClient/NOEngineClient_NetAtmos.sqf#L16)
## noe_client_nat_prevArea

Type: Variable

Description: update last area


Initial value:
```sqf
null
```
File: [client\NOEngineClient\NOEngineClient_NetAtmos.sqf at line 17](../../../Src/client/NOEngineClient/NOEngineClient_NetAtmos.sqf#L17)
## noe_client_nat_isEnabled

Type: function

Description: 


File: [client\NOEngineClient\NOEngineClient_NetAtmos.sqf at line 10](../../../Src/client/NOEngineClient/NOEngineClient_NetAtmos.sqf#L10)
## noe_client_nat_setEnabled

Type: function

Description: 
- Param: _mode

File: [client\NOEngineClient\NOEngineClient_NetAtmos.sqf at line 19](../../../Src/client/NOEngineClient/NOEngineClient_NetAtmos.sqf#L19)
## noe_client_nat_onUpdate

Type: function

Description: основной цикл обработки областей


File: [client\NOEngineClient\NOEngineClient_NetAtmos.sqf at line 33](../../../Src/client/NOEngineClient/NOEngineClient_NetAtmos.sqf#L33)
## noe_client_nat_getArea

Type: function

Description: получение области. если область не создана - генерирует новую
- Param: _areaId

File: [client\NOEngineClient\NOEngineClient_NetAtmos.sqf at line 74](../../../Src/client/NOEngineClient/NOEngineClient_NetAtmos.sqf#L74)
## noe_client_nat_requestLoad

Type: function

Description: запрос зоны на загрузку
- Param: _areaObj

File: [client\NOEngineClient\NOEngineClient_NetAtmos.sqf at line 84](../../../Src/client/NOEngineClient/NOEngineClient_NetAtmos.sqf#L84)
## noe_client_nat_requestDelExpired

Type: function

Description: 
- Param: _areaObj
- Param: _newTick

File: [client\NOEngineClient\NOEngineClient_NetAtmos.sqf at line 95](../../../Src/client/NOEngineClient/NOEngineClient_NetAtmos.sqf#L95)
## noe_client_nat_onLoadArea

Type: function

Description: ответ от сервера
- Param: _packet

File: [client\NOEngineClient\NOEngineClient_NetAtmos.sqf at line 108](../../../Src/client/NOEngineClient/NOEngineClient_NetAtmos.sqf#L108)
## noe_client_nat_decodePacket

Type: function

Description: декодирование пакета в массивы запросов
- Param: _buff
- Param: _addList
- Param: _remList

File: [client\NOEngineClient\NOEngineClient_NetAtmos.sqf at line 161](../../../Src/client/NOEngineClient/NOEngineClient_NetAtmos.sqf#L161)
## noe_client_nat_loadArea

Type: function

Description: обновление и загрузка зоны
- Param: _aObj
- Param: _arrChDat (optional, default [])
- Param: _isUpdateFlag (optional, default false)

File: [client\NOEngineClient\NOEngineClient_NetAtmos.sqf at line 184](../../../Src/client/NOEngineClient/NOEngineClient_NetAtmos.sqf#L184)
## noe_client_nat_deleteChunks

Type: function

Description: 
- Param: _aObj
- Param: _arrChIds

File: [client\NOEngineClient\NOEngineClient_NetAtmos.sqf at line 195](../../../Src/client/NOEngineClient/NOEngineClient_NetAtmos.sqf#L195)
## noe_client_nat_unloadArea

Type: function

Description: выгрузка зоны. обращаю внимание, что проверка состояния загруженности должна производиться снаружи функции
- Param: _areaObj

File: [client\NOEngineClient\NOEngineClient_NetAtmos.sqf at line 203](../../../Src/client/NOEngineClient/NOEngineClient_NetAtmos.sqf#L203)
## noe_client_nat_unsubscribeArea

Type: function

Description: снятие клиента с прослушки зоны
- Param: _areaObj

File: [client\NOEngineClient\NOEngineClient_NetAtmos.sqf at line 212](../../../Src/client/NOEngineClient/NOEngineClient_NetAtmos.sqf#L212)
# NOEngineClient_NOGEOM_ext.sqf

## NGOExt_create

Type: function

Description: 
- Param: _obj
- Param: _vec
- Param: _imode (optional, default false)

File: [client\NOEngineClient\NOEngineClient_NOGEOM_ext.sqf at line 22](../../../Src/client/NOEngineClient/NOEngineClient_NOGEOM_ext.sqf#L22)
## NGOExt_createSoftlink

Type: function

Description: 
- Param: _srcWorldObj
- Param: _target

File: [client\NOEngineClient\NOEngineClient_NOGEOM_ext.sqf at line 46](../../../Src/client/NOEngineClient/NOEngineClient_NOGEOM_ext.sqf#L46)
## NGOExt_createDummyObject

Type: function

Description: create virtual object
- Param: _src
- Param: _objType
- Param: _imode (optional, default true)
- Param: _simple (optional, default true)

File: [client\NOEngineClient\NOEngineClient_NOGEOM_ext.sqf at line 57](../../../Src/client/NOEngineClient/NOEngineClient_NOGEOM_ext.sqf#L57)
## noe_client_ngo_check

Type: function

Description: 
- Param: _obj
- Param: _model

File: [client\NOEngineClient\NOEngineClient_NOGEOM_ext.sqf at line 75](../../../Src/client/NOEngineClient/NOEngineClient_NOGEOM_ext.sqf#L75)
## noe_client_isNGO

Type: function

Description: check if is ngo object


File: [client\NOEngineClient\NOEngineClient_NOGEOM_ext.sqf at line 119](../../../Src/client/NOEngineClient/NOEngineClient_NOGEOM_ext.sqf#L119)
## noe_client_getNGOSource

Type: function

Description: getting ngo


File: [client\NOEngineClient\NOEngineClient_NOGEOM_ext.sqf at line 122](../../../Src/client/NOEngineClient/NOEngineClient_NOGEOM_ext.sqf#L122)
# NOEngineClient_ObjectManager.sqf

## NOE_CLIENT_DELETEOBJS_COUNT

Type: constant

Description: сколько объектов удаляется за цикл


Replaced value:
```sqf
50
```
File: [client\NOEngineClient\NOEngineClient_ObjectManager.sqf at line 278](../../../Src/client/NOEngineClient/NOEngineClient_ObjectManager.sqf#L278)
## NOE_CLIENT_DELETEOBJS_DELAY

Type: constant

Description: задержки между удалениями объектов


Replaced value:
```sqf
0.2
```
File: [client\NOEngineClient\NOEngineClient_ObjectManager.sqf at line 280](../../../Src/client/NOEngineClient/NOEngineClient_ObjectManager.sqf#L280)
## noe_client_spawnObject

Type: function

Description: 
- Param: _ref
- Param: _isSimple
- Param: _model
- Param: _pos
- Param: _dir
- Param: _vec
- Param: _light (optional, default 0)
- Param: _anim (optional, default null)
- Param: _radio (optional, default null)

File: [client\NOEngineClient\NOEngineClient_ObjectManager.sqf at line 8](../../../Src/client/NOEngineClient/NOEngineClient_ObjectManager.sqf#L8)
## noe_client_updateObject

Type: function

Description: Обновляет объект
- Param: _ref
- Param: _isSimple
- Param: _model
- Param: _pos
- Param: _dir
- Param: _vec
- Param: _light (optional, default 0)
- Param: _anim (optional, default null)
- Param: _radio (optional, default null)

File: [client\NOEngineClient\NOEngineClient_ObjectManager.sqf at line 79](../../../Src/client/NOEngineClient/NOEngineClient_ObjectManager.sqf#L79)
## noe_client_despawnObjectsInChunk

Type: function

Description: 
- Param: _chunk
- Param: _type
- Param: _chunkObject

File: [client\NOEngineClient\NOEngineClient_ObjectManager.sqf at line 169](../../../Src/client/NOEngineClient/NOEngineClient_ObjectManager.sqf#L169)
## noe_client_doRemoveObjects

Type: function

Description: 
- Param: _chunkObject
- Param: _listPtr

File: [client\NOEngineClient\NOEngineClient_ObjectManager.sqf at line 212](../../../Src/client/NOEngineClient/NOEngineClient_ObjectManager.sqf#L212)
## noe_client_remObjsAlg

Type: function

Description: 


File: [client\NOEngineClient\NOEngineClient_ObjectManager.sqf at line 281](../../../Src/client/NOEngineClient/NOEngineClient_ObjectManager.sqf#L281)
## noe_client_doUpdateObjects

Type: function

Description: Обновляет информацию об объектах
- Param: _chunkObject
- Param: _updObjList

File: [client\NOEngineClient\NOEngineClient_ObjectManager.sqf at line 293](../../../Src/client/NOEngineClient/NOEngineClient_ObjectManager.sqf#L293)
## noe_client_debug_findChunkObjectByPointer

Type: function

> Exists if **DEBUG** defined

Description: 
- Param: _pointer
- Param: _retAsData (optional, default false)

File: [client\NOEngineClient\NOEngineClient_ObjectManager.sqf at line 317](../../../Src/client/NOEngineClient/NOEngineClient_ObjectManager.sqf#L317)
## noe_client_getObjPtr

Type: function

Description: DEBUG
- Param: _obj
- Param: _checkNGO (optional, default true)

File: [client\NOEngineClient\NOEngineClient_ObjectManager.sqf at line 346](../../../Src/client/NOEngineClient/NOEngineClient_ObjectManager.sqf#L346)
# NOEngineClient_onUpdate.sqf

## variable_name_prevchunk

Type: constant

Description: _t = tickTime;


Replaced value:
```sqf
"pch"
```
File: [client\NOEngineClient\NOEngineClient_onUpdate.sqf at line 17](../../../Src/client/NOEngineClient/NOEngineClient_onUpdate.sqf#L17)
# NOEngineClient_Rendering.sqf

## vectorFromDir(pos,dir,dist)

Type: constant

Description: 
- Param: pos
- Param: dir
- Param: dist

Replaced value:
```sqf
((pos) vectorAdd [sin (_eyedir + (dir)) * dist,cos (_eyedir + (dir)) * dist,0])
```
File: [client\NOEngineClient\NOEngineClient_Rendering.sqf at line 16](../../../Src/client/NOEngineClient/NOEngineClient_Rendering.sqf#L16)
## RayCastCount(obj)

Type: constant

Description: 
- Param: obj

Replaced value:
```sqf
(count(lineIntersectsSurfaces [eyePos player, getPosASL obj, player, obj, true, 20,"GEOM","VIEW",false]))
```
File: [client\NOEngineClient\NOEngineClient_Rendering.sqf at line 37](../../../Src/client/NOEngineClient/NOEngineClient_Rendering.sqf#L37)
## setHideMode(mode)

Type: constant

Description: 
- Param: mode

Replaced value:
```sqf
\
		prevStateIsHidden set [_x,mode]; \
		{ \
			(_y select chunk_objectData_ptr) hideObject mode; \
		} foreach chunk_getObjectsData(_chunk);
```
File: [client\NOEngineClient\NOEngineClient_Rendering.sqf at line 39](../../../Src/client/NOEngineClient/NOEngineClient_Rendering.sqf#L39)
## setHidePrevMode(mode)

Type: constant

Description: 
- Param: mode

Replaced value:
```sqf
\
		_chunkPrev = [_curPrev,_x] call noe_client_getPosChunkToData; \
		{ \
			(_y select chunk_objectData_ptr) hideObject mode; \
		} foreach chunk_getObjectsData(_chunkPrev); \
		
```
File: [client\NOEngineClient\NOEngineClient_Rendering.sqf at line 46](../../../Src/client/NOEngineClient/NOEngineClient_Rendering.sqf#L46)
## state(num)

Type: constant

Description: 
- Param: num

Replaced value:
```sqf
trace('State num')
```
File: [client\NOEngineClient\NOEngineClient_Rendering.sqf at line 52](../../../Src/client/NOEngineClient/NOEngineClient_Rendering.sqf#L52)
## objLeft

Type: Variable

Description: RENDERING (not optimized). Need rewrite


Initial value:
```sqf
"Sign_Arrow_F" createVehicle [0,0,0]
```
File: [client\NOEngineClient\NOEngineClient_Rendering.sqf at line 9](../../../Src/client/NOEngineClient/NOEngineClient_Rendering.sqf#L9)
## objRight

Type: Variable

Description: 


Initial value:
```sqf
"Sign_Arrow_F" createVehicle [0,0,0]
```
File: [client\NOEngineClient\NOEngineClient_Rendering.sqf at line 10](../../../Src/client/NOEngineClient/NOEngineClient_Rendering.sqf#L10)
## objTemp

Type: Variable

Description: 


Initial value:
```sqf
"Sign_Arrow_F" createVehicle [0,0,0]
```
File: [client\NOEngineClient\NOEngineClient_Rendering.sqf at line 11](../../../Src/client/NOEngineClient/NOEngineClient_Rendering.sqf#L11)
## objMode

Type: Variable

Description: 


Initial value:
```sqf
0
```
File: [client\NOEngineClient\NOEngineClient_Rendering.sqf at line 12](../../../Src/client/NOEngineClient/NOEngineClient_Rendering.sqf#L12)
## prevPosObj

Type: Variable

Description: 


Initial value:
```sqf
[[0,0],[0,0],[0,0]]
```
File: [client\NOEngineClient\NOEngineClient_Rendering.sqf at line 13](../../../Src/client/NOEngineClient/NOEngineClient_Rendering.sqf#L13)
## prevStateIsHidden

Type: Variable

Description: 


Initial value:
```sqf
[false,false,false]
```
File: [client\NOEngineClient\NOEngineClient_Rendering.sqf at line 14](../../../Src/client/NOEngineClient/NOEngineClient_Rendering.sqf#L14)
# NOEngineClient_TransportLevel.sqf

## debug_calltraceOnErrorConvert

Type: constant

Description: 


Replaced value:
```sqf

```
File: [client\NOEngineClient\NOEngineClient_TransportLevel.sqf at line 289](../../../Src/client/NOEngineClient/NOEngineClient_TransportLevel.sqf#L289)
## callwarn(macroname)

Type: constant

> Exists if **debug_calltraceOnErrorConvert** defined

Description: 
- Param: macroname

Replaced value:
```sqf
warningformat("__DEBUG__::%1() - count tokens %2" + endl + "Data: %3",macroname arg count _tokens arg _tokens);
```
File: [client\NOEngineClient\NOEngineClient_TransportLevel.sqf at line 292](../../../Src/client/NOEngineClient/NOEngineClient_TransportLevel.sqf#L292)
## callwarn(ma)

Type: constant

> Exists if **debug_calltraceOnErrorConvert** not defined

Description: 
- Param: ma

Replaced value:
```sqf

```
File: [client\NOEngineClient\NOEngineClient_TransportLevel.sqf at line 294](../../../Src/client/NOEngineClient/NOEngineClient_TransportLevel.sqf#L294)
## tokenIndex

Type: constant

Description: 


Replaced value:
```sqf
_pos
```
File: [client\NOEngineClient\NOEngineClient_TransportLevel.sqf at line 297](../../../Src/client/NOEngineClient/NOEngineClient_TransportLevel.sqf#L297)
## moveNext()

Type: constant

Description: 
- Param: 

Replaced value:
```sqf
MOD(tokenIndex,+1); if (tokenIndex > (_lastIndex)) then { error("NOEngineClient::byteArrToObjStruct() - Out of range"); callwarn("next") RETURN(false);}
```
File: [client\NOEngineClient\NOEngineClient_TransportLevel.sqf at line 298](../../../Src/client/NOEngineClient/NOEngineClient_TransportLevel.sqf#L298)
## moveTo(val)

Type: constant

Description: 
- Param: val

Replaced value:
```sqf
MOD(tokenIndex,+val); if (tokenIndex > (_lastIndex)) then { error("NOEngineClient::byteArrToObjStruct() - Out of range"); callwarn("move") RETURN(false); }
```
File: [client\NOEngineClient\NOEngineClient_TransportLevel.sqf at line 300](../../../Src/client/NOEngineClient/NOEngineClient_TransportLevel.sqf#L300)
## getToken(ch)

Type: constant

Description: 
- Param: ch

Replaced value:
```sqf
(_tokens select ch)
```
File: [client\NOEngineClient\NOEngineClient_TransportLevel.sqf at line 301](../../../Src/client/NOEngineClient/NOEngineClient_TransportLevel.sqf#L301)
## canMove(idx)

Type: constant

Description: 
- Param: idx

Replaced value:
```sqf
(idx <= (count _tokens - 1) && idx >= 0)
```
File: [client\NOEngineClient\NOEngineClient_TransportLevel.sqf at line 302](../../../Src/client/NOEngineClient/NOEngineClient_TransportLevel.sqf#L302)
## getTokenSafe(idx)

Type: constant

Description: 
- Param: idx

Replaced value:
```sqf
if canMove(idx) then {getToken(idx)} else {"0x0"}
```
File: [client\NOEngineClient\NOEngineClient_TransportLevel.sqf at line 303](../../../Src/client/NOEngineClient/NOEngineClient_TransportLevel.sqf#L303)
## getCurToken()

Type: constant

Description: 
- Param: 

Replaced value:
```sqf
getToken(tokenIndex)
```
File: [client\NOEngineClient\NOEngineClient_TransportLevel.sqf at line 304](../../../Src/client/NOEngineClient/NOEngineClient_TransportLevel.sqf#L304)
## isTrue(val)

Type: constant

Description: свободная переменная для записи
- Param: val

Replaced value:
```sqf
not_equals(val,_strZero)
```
File: [client\NOEngineClient\NOEngineClient_TransportLevel.sqf at line 312](../../../Src/client/NOEngineClient/NOEngineClient_TransportLevel.sqf#L312)
## noe_client_debug_requestLoadChunk

Type: function

> Exists if **DEBUG** defined

Description: 


File: [client\NOEngineClient\NOEngineClient_TransportLevel.sqf at line 12](../../../Src/client/NOEngineClient/NOEngineClient_TransportLevel.sqf#L12)
## noe_client_requestLoadChunk

Type: function

Description: to server
- Param: _chunk
- Param: _type
- Param: _chunkObject

File: [client\NOEngineClient\NOEngineClient_TransportLevel.sqf at line 22](../../../Src/client/NOEngineClient/NOEngineClient_TransportLevel.sqf#L22)
## noe_client_requestDeleteUpdater

Type: function

Description: 
- Param: _chunkObject
- Param: _time

File: [client\NOEngineClient\NOEngineClient_TransportLevel.sqf at line 32](../../../Src/client/NOEngineClient/NOEngineClient_TransportLevel.sqf#L32)
## noe_client_getOrignalObjectData

Type: function

Description: get original object data; see noe_client_updateObject for info
- Param: _ptr
- Param: _retAsHash (optional, default true)

File: [client\NOEngineClient\NOEngineClient_TransportLevel.sqf at line 143](../../../Src/client/NOEngineClient/NOEngineClient_TransportLevel.sqf#L143)
## noe_client_resetObjectTransform

Type: function

Description: 
- Param: _ptr

File: [client\NOEngineClient\NOEngineClient_TransportLevel.sqf at line 154](../../../Src/client/NOEngineClient/NOEngineClient_TransportLevel.sqf#L154)
## noe_client_setObjectTransform

Type: function

Description: 
- Param: _obj
- Param: _type
- Param: _val

File: [client\NOEngineClient\NOEngineClient_TransportLevel.sqf at line 201](../../../Src/client/NOEngineClient/NOEngineClient_TransportLevel.sqf#L201)
## noe_client_generatePacketId

Type: function

Description: генерирует пакет который указывает на актуальность действия при коллбеке
- Param: _chunkObject
- Param: _lifetime (optional, default PACKET_LIFETIME)

File: [client\NOEngineClient\NOEngineClient_TransportLevel.sqf at line 225](../../../Src/client/NOEngineClient/NOEngineClient_TransportLevel.sqf#L225)
## noe_client_byteArrToObjStruct

Type: function

Description: Конвертирует данные из массива байтов в структуры объектов
- Param: _tokens
- Param: _struct
- Param: _remStruct

File: [client\NOEngineClient\NOEngineClient_TransportLevel.sqf at line 265](../../../Src/client/NOEngineClient/NOEngineClient_TransportLevel.sqf#L265)
## noe_client_unsubscribeChunkListening

Type: function

Description: производит выписывание клиента из прослушивателей чанка
- Param: _chunk
- Param: _type

File: [client\NOEngineClient\NOEngineClient_TransportLevel.sqf at line 511](../../../Src/client/NOEngineClient/NOEngineClient_TransportLevel.sqf#L511)
## noe_client_unsubscribeChunkListeningFull

Type: function

Description: 
- Param: _chunk
- Param: _type

File: [client\NOEngineClient\NOEngineClient_TransportLevel.sqf at line 515](../../../Src/client/NOEngineClient/NOEngineClient_TransportLevel.sqf#L515)

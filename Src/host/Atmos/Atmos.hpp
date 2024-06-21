// ======================================================
// Copyright (c) 2017-2024 the ReSDK_A3 project
// sdk.relicta.ru
// ======================================================

//быстрое процессирование симуляции
//#define ATMOS_DEBUG_USE_FAST_SIM
//тест только одной стороны распространения
//#define ATMOS_DEBUG_TEST_SIDE_SPREAD [0,1,0]

#ifndef EDITOR
	#undef ATMOS_DEBUG_USE_FAST_SIM
	#undef ATMOS_DEBUG_TEST_SIDE_SPREAD
#endif

//size one chunk in meters and half (only constexpr in prod. required)
#define ATMOS_SIZE 1
#define ATMOS_SIZE_HALF 0.5
#define ATMOS_SIZE_HALF_OFFSET 0.1

//left, right, top, bottom, front, back
#define ATMOS_PROPAGATION_SIDE_MAX_COUNT 6

#define ATMOS_ADDITIONAL_RANGE_XY rand(-0.25, 0.25)
#define ATMOS_ADDITIONAL_RANGE_Z rand(-0.1, 0.1)

//режим поиска для atmos_getIntersectInfo
// Получение количества пересечений
#define ATMOS_SEARCH_MODE_GET_COUNT 0
// поиск до первого пересечения
#define ATMOS_SEARCH_MODE_FIRST_INTERSECT 1
// поиск до первого отсутствия пересечения
#define ATMOS_SEARCH_MODE_NO_INTERSECT 2
// получение виртуальных объектов на пересечении
#define ATMOS_SEARCH_MODE_GET_VOBJECTS 3


//functions spread ptr
#define ATMOS_SPREAD_MODE_NORMAL 0
#define ATMOS_SPREAD_MODE_XY_ANGLES 1
#define ATMOS_SPREAD_MODE_NO_Z 2
// ======================================================
// Copyright (c) 2017-2024 the ReSDK_A3 project
// sdk.relicta.ru
// ======================================================

#include "..\TestFramework.h"


TEST(Algorithms_base)
{
	ASSERT_EQ(all_of([true arg true arg true]) , true);
	ASSERT_EQ(any_of([true arg true arg true]) , true);
	ASSERT_EQ(none_of([true arg true arg true]) , false);
	
	ASSERT_EQ(all_of([true arg true arg false]) , false);
	ASSERT_EQ(any_of([true arg true arg false]) , true);
	ASSERT_EQ(none_of([true arg true arg false]) , false);
	
	ASSERT_EQ(all_of([false arg false arg false]) , false);
	ASSERT_EQ(any_of([false arg false arg false]) , false);
	ASSERT_EQ(none_of([false arg false arg false]) , true);

	ASSERT_EQ(all_of([]) , true);
	ASSERT_EQ(any_of([]) , false);
	ASSERT_EQ(none_of([]) , true);

}

TEST(Algorithms_searching)
{
	private _list = [2,"true",false,"HELLO",0.000001,"xxxxxxxxxxxxxx",300];

	private _element = [
		_list,
		{equalTypes(_x,stringEmpty) && {count _x == 5}},
		"notfound"
	] call searchInList;

	ASSERT_EQ(_element,"HELLO");
	private _referenceDefault = false;
	private _defaultReturn = [_list,{equalTypes(_x,true) && {_x}},_referenceDefault] call searchInList;
	//ASSERT(_defaultReturn isnotequalref (_list select 2)); //this throws error because 2.18 use simplevm optimizations
	ASSERT_EQ(_defaultReturn,_referenceDefault);

	private _d = [10,0];
	private _bestResult = [
		[
			[43,0],
			[22,0],
			[11,0],
			[2,0],
			[45,0],
			[50,0]
		],
		{
			-(_x distance _d)
		}
	] call selectBest;

	ASSERT(_bestResult);
	ASSERT_EQ(_bestResult,vec2(11,0));
}

// TEST(Algorithms_sorting)
// {
 	//! in current version ReSDK does not support custom sorting algorithms
 	//! only used native "sort"
// }

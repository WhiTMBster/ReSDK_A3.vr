#include "..\engine.hpp"
#include "..\oop.hpp"
#include "Atmos.h"


atmos_createChunk = {
    params ["_pos"];
};

//create atmos effect (fire,smoke etc)
atmos_createProcess = {
    params ["_pos","_processClass"];
};
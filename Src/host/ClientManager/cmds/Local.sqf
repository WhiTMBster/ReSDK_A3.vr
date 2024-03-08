// ======================================================
// Copyright (c) 2017-2024 the ReSDK_A3 project
// sdk.relicta.ru
// ======================================================

addCommandWithDescription("flycam",ACCESS_ADMIN,"Включает режим летающей камеры (для скриншотов)") {IS_LOCAL_COMMAND()};

addCommandWithDescription("escnative",ACCESS_ADMIN,"Установить режим встроенного эскейпа") {IS_LOCAL_COMMAND()};

//addCommandWithDescription("exit",PUBLIC_COMMAND,"Осуществляет выход из игры") {IS_LOCAL_COMMAND()};

addCommandWithDescription("debugvars",ACCESS_ADMIN,"Отображает общую статистику. Параметры: 0 - выкл; 1 - вкл") {IS_LOCAL_COMMAND()};

addCommandWithDescription("camswitch",ACCESS_ADMIN,"Переключает режим камеры (аркадная/реализм)") {IS_LOCAL_COMMAND()};

addCommandWithDescription("reloadvoice",PUBLIC_COMMAND,"Перезапускает модуль голосового чата") {IS_LOCAL_COMMAND()};

addCommandWithDescription("grafon",ACCESS_ADMIN,"Переключает режим отображения эффектов в LightEngine") {IS_LOCAL_COMMAND()};
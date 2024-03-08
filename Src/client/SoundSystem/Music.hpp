// ======================================================
// Copyright (c) 2017-2024 the ReSDK_A3 project
// sdk.relicta.ru
// ======================================================



#define MUSIC_SMOOTH_NO 0
#define MUSIC_SMOOTH_START 1
#define MUSIC_SMOOTH_END 2
#define MUSIC_SMOOTH_FULL 3

#define MUSIC_REPEAT_NO 0
#define MUSIC_REPEAT_YES 1
#define MUSIC_REPEAT_AND_BACKWARD 2

#define MUSIC_SMOOTH_TIME_DEFAULT 5


//системный. не используется
#define MUSIC_CHANNEL_BASE 0
//канал лобби
#define MUSIC_CHANNEL_LOBBY 1
//эмбиент - основной 
#define MUSIC_CHANNEL_AMBIENT 2
//эмбиент - локальный. вход в интересное место или подобное
#define MUSIC_CHANNEL_AMBIENT_LOCAL 3
//боевой эмбиент - пока не задействован
#define MUSIC_CHANNEL_COMBATAMBIENT 4
//музыка конца раунда, или любого важного события
#define MUSIC_CHANNEL_EVENT_GLOBAL 5

#define chm(a,b) [ a , b ]
#define MUSIC_MAP_INTERNAL_ALLCHANNELS [ \
chm("MUSIC_CHANNEL_BASE",0), \
chm("MUSIC_CHANNEL_LOBBY",1), \
chm("MUSIC_CHANNEL_AMBIENT",2), \
chm("MUSIC_CHANNEL_AMBIENT_LOCAL",3), \
chm("MUSIC_CHANNEL_COMBATAMBIENT",4), \
chm("MUSIC_CHANNEL_EVENT_GLOBAL",5) \
]

#define MUSIC_LIST_NODE_ENUM_DEF [ \
'Базовый:MUSIC_CHANNEL_BASE:Базовый начальный канал. Имеет самый низший приоритет воспроизведения.', \
'Лобби:MUSIC_CHANNEL_LOBBY:Канал лобби. В нем играет музыка для лобби', \
'Эмбиент:MUSIC_CHANNEL_AMBIENT:Основной канал для эмбиентов', \
'Локальный эмбиент:MUSIC_CHANNEL_AMBIENT_LOCAL:Локационный и ситуативный эмбиент', \
'Сражение:MUSIC_CHANNEL_COMBATAMBIENT:Боевой эмбиент. Пока не задан', \
'Глобальное событие:MUSIC_CHANNEL_EVENT_GLOBAL:Музыка конца раунда, или любого важного события. Имеет на текущий момент наивысший приоритет воспроизведения.' \
]


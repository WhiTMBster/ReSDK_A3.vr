// ======================================================
// Copyright (c) 2017-2025 the ReSDK_A3 project
// sdk.relicta.ru
// ======================================================

// Префикс при печате сообщений типа "error"
#define ENM_TIPS_ERROR ["Неа.","Никак!","Не получится.","Нет.","Отставить!","Не могу...", \
"Провал.","Плохая идея -","Так глупо.","Ошибочка...","Никак нет!", \
"Плохо.","Неудача.","Невезуха.","Сорвалось.","Промах.","Прокол.", \
"Вот облом...","Фиаско.","Ужас.","Не получилось.","Печально...", \
"Отмена.","БЛЯТЬ!","Вот дерьмо.","Чёрт.","Проклятье!","Ужасно!", \
"Жесть!","Облом.","Звёзды не сложились...","Не вышло.","Мда...", \
"Ой!","Упс...","Жаль...","Грустно...","Глупо всё это.","Досада.", \
"Не судьба.","Этому не суждено сбыться."]

// Макрос для получения ссылки на текстовое поле
#define getTextField (call chatGettextwidget)
// Макрос для получения ссылки на бекграунд
#define getBackground (call chatgetbackgroundwidget)
// Макрос для получения ссылки на окно истории
#define getHistoryField (chat_widgets select 3)

// Время, через которое выполняется проверка скрытия окна чата
#define CHAT_HIDE_CHECK_UPDATE 0.1
#define CHAT_ONE_STEP_FADE_SIMULATION 0.09
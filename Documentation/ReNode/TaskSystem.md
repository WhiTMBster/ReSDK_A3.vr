# Система задач в ReNode

Система задач в ReNode позволяет создавать разнообразные задачи для игроков и объектов в игре. Задачи могут быть различных типов и иметь разные условия для выполнения и провала.

## Основные понятия

- **Задача**: Основная единица работы в системе задач. Каждая задача имеет свои условия для выполнения и провала.
- **Владелец задачи**: Объект или игрок, для которого назначена задача.
- **Результат задачи**: Задача может быть выполнена успешно, провалена или оставаться невыполненной до конца раунда.

## Основные свойства задач

Базовая задача предоставляет следующие свойства, присущие каждому типу задачи:

- **Название** - отображаемое в воспоминаниях название задачи.
- **Описание** - системное описание, не видимое игрокам.
- **Ролевое описание** - отображаемое в воспоминаниях игрока.
- **Тэг** - уникальный идентификатор задачи, который может быть использован для получения информации о задачах и их выполнении.
- **Единоразовая проверка** - флаг, указывающий что проверка проверяется только для первого владельца за цикл симуляции.
- **Завершена** - флаг, указывающий что задача завершена.
- **Результат выполнения** - число, отражающее исход выполнения задачи. Положительные числа обычно означают успешное выполнение задачи, а отрицательные - провал. Не завершенные задачи имеют результат 0.
- **Провал при смерти владельцев** - флаг, указывающий на то, что задача проваливается, если владелец умирает.
- **Частота проверки** - интервал времени, через который происходит проверка условий выполнения задачи.

## Основные функции задач

Базовая задача предоставляет следующие функции, доступные через узлы:

- **Установить тэг** - устанавливает уникальный идентификатор задачи.
- **Получить владельцев** - получает список мобов (владельцев) задачи.
- **Установить результат задачи** - устанавливает результат задачи.
- **Скопировать задачу** - создает копию задачи. Тэг задачи не копируется.

## Типы задач

Задачи в ReNode делятся на несколько основных типов:

- **ItemKindTask**: Задачи, связанные с работой с игровыми предметами.
- **MobKindTask**: Задачи, связанные с сущностями (мобами).
- **GameObjectKindTask**: Задачи, связанные с игровыми объектами.
- **CounterKindTask**: Задачи для работы с подсчетом значений.
- **LocationKindTask**: Задачи, связанные с локациями.
- **RoleKindTask**: Задачи на работу с ролями.

> Примечание! Отличие **ItemKindTask** от **GameObjectKindTask** заключается в том, что объектные задачи оперируют основными объектными данными, такими как позиция, модель, названия и тд. Задача игровых предметов в дополнении может оперировать специфичными данными. Например, нахождение в контейнере или инвентаре моба.

Все задачи предоставляют базовые условия для выполнения и провала, которые могут быть специфичными для разных типов задач. Вы можете дополнять эти условия с помощью специальных обработчиков, выполняемых во время проверки задачи, при её выполнении или провале.

## Создание и регистрация задач

Задачи создаются с помощью узла "Создать задачу". Выходной порт является объектом задачи, который вы должны настроить перед добавлением задачи владельцу.
В разделе библиотеки объектов "Игровая логика.Задачи.Общие" вы найдете узлы для общих настроек задач.
Специальные настройки для разных типов задач так же лежат в "Игровая логика.Задачи". В случае, если вам необходимо получить информацию о задачах, например, узнать есть ли выполненные задачи с тэгом, перейдите в "Игровая логика.Задачи.Утилиты".

## Пример создания задачи
...
...
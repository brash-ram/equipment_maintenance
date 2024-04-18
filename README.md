# Тестовое задание на позицию Мобильного разработчика

## Результат выполнения

#### Использованные библиотеки

Flutter  >=3.3.0 <4.0.0

Auto route - для навигации по приложению

bloc - для создание архитектуры MVC

dart mappable - для сериализации и десериализации сетевых данных

http, rxdart, lru_cache - для создание сетевой инфраструктуры

talker - для логирования

paged datatable - для создания таблицы с фильтрами и сортировкой

slang = для локализации

Приложение адаптирована под Android и Desctop в браузере. 
Тестирование проводилось на Pixel 7 Pro API 33 и в браузере Google Chrome.

### Цель

Создание рабочего прототипа отображения списка и параметров оборудования в мобильном приложении для платформы Android.
### Основные задачи

1.	Реализовать страницу, которая показывает перечень эксплуатируемого оборудования.

2.	Реализовать страницу, которая показывает карточку (паспорт) эксплуатируемого оборудования.

### Предметная область

Техническое обслуживание и ремонт оборудования.

## Техническое задание

#### Задание 1: Страница со списком оборудования

Реализовать страницу, на которой будет показан перечень эксплуатируемого оборудования. 
Перечень оборудования можно получить, выполнив POST-запрос к REST-сервису:

Требования к странице
1.	Страница должна отображать таблицу со следующим составом колонок:
    -	Код оборудования (code).
    -	Наименование (name).
    -	Статус (status).
    -	Критичность (criticality).

2.	Данные должны быть отсортированы по колонке «Код оборудования» (code).

3.	Таблица должна поддерживать возможность фильтрации данных.

4.	В таблице должно быть настроено условное форматирование для колонки «Статус».

    -	если status_code = installed, то ячейка колонки зеленая.
    -	если status_code = withdrawn, то ячейка колонки серая.
    -	Иначе ячейка колонки белая.
5.	В таблице должно быть настроено условное форматирование для колонки «Критичность».
    -	если criticality_code = 1 или 2, то ячейка колонки красная.
    -	если criticality_code = 3, то ячейка колонки желтая.
    -	если criticality_code = 4, то ячейка колонки зеленая.
    -	если criticality_code = 5, то ячейка колонки серая.
    -	Иначе ячейка колонки белая.

#### Задание 2: Карточка оборудования

Реализовать страницу, которая будет открываться при одинарном нажатии на запись таблицы с оборудованием.  Страница должна показывать атрибуты выбранного оборудования, которые можно получить, выполнив POST-запрос к REST-сервису, где в теле запроса должен быть JSON с параметрами:
key = obj, value = id оборудования.

Требования к странице

1.	На странице должны быть выведены следующие атрибуты, сгруппированные в группы (разделы):

    -	Раздел «Общие данные»:
    -	Код (code)
    -	Наименование (name)
    -	Отдел (department.name)
    -	Статус (status.value)
    -	Тип актива в структуре (HierarchyLevelType.name)
    -	Код затрат (costCode.name)
    -	Раздел «Паспорт»:
    -	Инвентарный номер (inventoryNumber)
    -	Модель (model)
    -	Дата ввода в эксплуатацию (commissDate)
    -	Первичная стоимость (initialValue)
    -	Серийный номер (serialNumber)
    -	Дата установки (installationDate)
    -	Раздел «Параметры эксплуатации»
    -	Экология (ecology)
    -	Безопасность (safety)
    -	Причина остановки (dormantCause.name)
    -	Начало неактивности (dormantStartDate)
    -	Окончание неактивности (dormantEndDate)

2.	Если статус оборудования withdrawn, то атрибуты должны быть недоступны для редактирования (только для чтения).

#### Задание 3: Страница с комплексным отображением оборудования

Реализовать страницу, которая будет разделена на две области в соотношении 40/60. В левой части должен отображаться перечень оборудования, в правой просмотр карточки оборудования. При одинарном нажатии на оборудование в левой области в правой области должна отображаться карточка оборудования.


## Screenshots

![Экран с таблицей на русском](./iamges/img_table_ru.png "Экран с таблицей на русском")

<img src="./iamges/img_table_ru.png" alt="Экран с таблицей на русском"/>

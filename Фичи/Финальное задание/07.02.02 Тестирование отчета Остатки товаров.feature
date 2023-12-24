﻿#language: ru

@tree

Функционал: Тестирование отчета Остатки товаров

Как Тестировщик я хочу
протестировать формирование отчета Остатки товаров
чтобы проверить, что отчет формируется корректно  

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Подготовка данных для формирования отчета Остатки товаров
	Когда Подготовка данных 

*Проведение созданных документов
	Дано Я открываю навигационную ссылку "e1cib/list/ЖурналДокументов.ДокументыПродаж"
	Тогда открылось окно 'Документы продаж'
	И в таблице 'Список' я выделяю все строки
	И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"
	Тогда не появилось окно предупреждения системы 
	Дано Я открываю навигационную ссылку "e1cib/data/Документ.ПриходТовара?ref=8ca0000d8843cd1b11dc8cfecc6a7df8"
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	Тогда не появилось окно предупреждения системы
	Дано Я открываю навигационную ссылку "e1cib/data/Документ.ПриходТовара?ref=8e09000d8843cd1b11de0e199953e14d"
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	Тогда не появилось окно предупреждения системы 
	Дано Я открываю навигационную ссылку "e1cib/data/Документ.ПриходТовара?ref=8ca1000d8843cd1b11dc8eacd471d6c8"
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	Тогда не появилось окно предупреждения системы
	Дано Я открываю навигационную ссылку "e1cib/data/Документ.ПриходТовара?ref=8ca0000d8843cd1b11dc8cfecc6a7dfa"
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	Тогда не появилось окно предупреждения системы  
		

Сценарий: Проверка отчета Остатки товаров
*Выбор варианта отчета
	И В командном интерфейсе я выбираю 'Товарные запасы' 'Остатки товаров'
	И я нажимаю на кнопку с именем 'ФормаЗагрузитьВариант'
	Тогда открылось окно 'Выбор варианта отчета'
	И в таблице "СписокНастроек" я перехожу к строке:
	| 'Представление' |
	| 'Основной'      |
	И я нажимаю на кнопку с именем 'Загрузить'
	И в табличном документе 'Результат' я перехожу к ячейке "R27C4"
*Формирование отчета без отборов
	И я нажимаю на кнопку с именем 'ФормаСтандартныеНастройки'
	И я нажимаю на кнопку с именем 'ФормаСформировать'
	И пауза 3
*Тестирование отборов отчета
	И из выпадающего списка с именем "КомпоновщикНастроекПользовательскиеНастройкиЭлемент1Значение" я выбираю по строке 'Veko67NE'
	И я нажимаю кнопку выбора у поля с именем "КомпоновщикНастроекПользовательскиеНастройкиЭлемент2Значение"
	И из выпадающего списка с именем "КомпоновщикНастроекПользовательскиеНастройкиЭлемент2Значение" я выбираю по строке 'Большой'
	И я снимаю флаг с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент6Использование'
	И я нажимаю на кнопку с именем 'ФормаСформировать'
	И пауза 3
	И я устанавливаю флаг с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент6Использование'
	И я нажимаю на кнопку с именем 'ФормаСформировать'
	И пауза 3
*Сохранение настроек отчета
	И я нажимаю на кнопку с именем 'ФормаСохранитьНастройкиОтчета'
	Тогда открылось окно 'Сохранение настроек отчета'
	И я нажимаю на кнопку с именем 'Save'
*Установка стандартных настроек отчета
	Тогда открылось окно 'Остатки товаров'
	И я нажимаю на кнопку с именем 'ФормаСтандартныеНастройки'
	И я нажимаю на кнопку с именем 'ФормаСформировать'
	И пауза 3
*Загрузка сохраненных настроек отчета
	И я нажимаю на кнопку с именем 'ФормаЗагрузитьНастройкиОтчета'
	Тогда открылось окно 'Выбор настроек отчета'
	И я нажимаю на кнопку с именем 'Load'
	Тогда открылось окно 'Остатки товаров'
	И пауза 3
	И я нажимаю на кнопку с именем 'ФормаСформировать'
	И пауза 3
	



﻿#language: ru

@tree
@Отчеты

Функционал: Тестирование отчета D2001 Продажи

Как Тестировщик я хочу
протестировать отчет 
чтобы у пользователя не возникнет проблем при формировании отчета  

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Подготовительный сценарий
	Когда экспорт основных данных
	Когда экспорт данных по возвратам товаров от покупателей
	И я выполняю код встроенного языка на сервере
		|'Документы.GoodsReceipt.НайтиПоНомеру(2).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|
        |'Документы.ReconciliationStatement.НайтиПоНомеру(1).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|	
		|'Документы.RetailReturnReceipt.НайтиПоНомеру(1).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|	
		|'Документы.RetailSalesReceipt.НайтиПоНомеру(2).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|
		|'Документы.SalesInvoice.НайтиПоНомеру(1).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|	
		|'Документы.SalesOrder.НайтиПоНомеру(1).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|
		|'Документы.SalesReturn.НайтиПоНомеру(1).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|
		|'Документы.SalesReturnOrder.НайтиПоНомеру(1).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|
		
Сценарий: Проверка возвратов в отчете D2001 Продажи
*Изменение варианта отчета
	И В командном интерфейсе я выбираю 'Отчеты' 'D2001 Продажи'
	Тогда открылось окно 'D2001 Продажи'
	И я нажимаю на кнопку с именем 'FormChangeVariant'
	Тогда открылось окно 'Вариант "Default" отчета "D2001 Продажи"'
	И в таблице "SettingsComposerSettings" я перехожу к строке:
		| 'Использование' | 'Структура отчета' |
		| 'Да'            | 'Период, месяц'    |
	И в таблице "SettingsComposerSettings" я перехожу к строке:
		| 'Использование' | 'Структура отчета' |
		| 'Да'            | 'Номенклатура'     |
	И в таблице 'SettingsComposerSettings' я удаляю строку
	Тогда открылось окно '1С:Предприятие'
	И я нажимаю на кнопку с именем 'Button0'
	Тогда открылось окно 'Вариант "Default" отчета "D2001 Продажи"'
	И в таблице "SettingsComposerSettings" я нажимаю на кнопку с именем 'SettingsComposerSettingsContextMenuAddGroup'
	Тогда открылось окно 'Группировка'
	И я нажимаю кнопку выбора у поля с именем "Field"
	Тогда открылось окно 'Выбор поля'
	И в таблице "Source" я перехожу к строке:
		| 'Доступные поля' |
		| 'Регистратор'    |
	И в таблице "Source" я выбираю текущую строку
	Тогда открылось окно 'Группировка'
	И я нажимаю на кнопку с именем 'OK'
	Тогда открылось окно 'Вариант "Default" отчета "D2001 Продажи"'
	И в таблице "SettingsComposerSettings" я нажимаю на кнопку с именем 'SettingsComposerSettingsContextMenuAddGroup'
	Тогда открылось окно 'Группировка'
	И я нажимаю кнопку выбора у поля с именем "Field"
	Тогда открылось окно 'Выбор поля'
	И в таблице "Source" я перехожу к строке:
		| 'Доступные поля' |
		| 'Номенклатура'   |
	И в таблице "Source" я выбираю текущую строку
	Тогда открылось окно 'Группировка'
	И я нажимаю на кнопку с именем 'OK'
	Тогда открылось окно 'Вариант "Default" отчета "D2001 Продажи"'
	И в таблице "SettingsComposerSettings" я нажимаю на кнопку с именем 'SettingsComposerSettingsContextMenuAddGroup'
	Тогда открылось окно 'Группировка'
	И я нажимаю кнопку выбора у поля с именем "Field"
	Тогда открылось окно 'Выбор поля'
	И в таблице "Source" я перехожу к строке:
		| 'Доступные поля' |
		| 'Характеристика' |
	И я нажимаю на кнопку с именем 'Select'
	Тогда открылось окно 'Группировка'
	И я нажимаю на кнопку с именем 'OK'
	Тогда открылось окно 'Вариант "Default" отчета "D2001 Продажи"'
	И в таблице "SettingsComposerSettingsDataParameters" я перехожу к строке:
		| 'Дата начала'        | 'Дата окончания'      | 'Значение'   | 'Использование' | 'Параметр' |
		| '01.12.2023 0:00:00' | '31.12.2023 23:59:59' | 'Этот месяц' | 'Да'            | 'Период'   |
	И в таблице "SettingsComposerSettingsDataParameters" я снимаю флаг с именем 'SettingsComposerSettingsDataParametersUse'
	И в таблице "SettingsComposerSettingsDataParameters" я перехожу к строке:
		| 'Значение'          | 'Использование' | 'Параметр'       |
		| 'Произвольная дата' | 'Нет'           | 'Начало периода' |
	И в таблице "SettingsComposerSettingsDataParameters" я устанавливаю флаг с именем 'SettingsComposerSettingsDataParametersUse'
	И в таблице "SettingsComposerSettingsDataParameters" в поле с именем 'SettingsComposerSettingsDataParametersDate' я ввожу текст '01.03.2021  0:00:00'
	И в таблице "SettingsComposerSettingsDataParameters" я завершаю редактирование строки
	И в таблице "SettingsComposerSettingsDataParameters" я перехожу к строке:
		| 'Значение'          | 'Использование' | 'Параметр'      |
		| 'Произвольная дата' | 'Нет'           | 'Конец периода' |
	И в таблице "SettingsComposerSettingsDataParameters" я устанавливаю флаг с именем 'SettingsComposerSettingsDataParametersUse'
	И в таблице "SettingsComposerSettingsDataParameters" в поле с именем 'SettingsComposerSettingsDataParametersDate' я ввожу текст '31.03.2021  23:59:59'
	И в таблице "SettingsComposerSettingsDataParameters" я завершаю редактирование строки
				
	И я нажимаю на кнопку с именем 'FormEndEdit'
	Тогда открылось окно 'D2001 Продажи'
*Формирование отчета D2001 Продажи
	И я нажимаю на кнопку с именем 'FormGenerate'
*Проверка
	Дано Табличный документ "Result" равен макету "ШаблонОтчетаD2001Продажи" по шаблону
	
		
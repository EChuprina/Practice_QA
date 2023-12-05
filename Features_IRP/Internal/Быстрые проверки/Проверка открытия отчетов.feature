﻿
#language: ru
@БыстрыеПроверки
@tree

Функциональность: Открытие отчетов

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Открытие формы отчета "Движения документа"

	Дано Я открываю основную форму отчета "DocumentRegistrationsReport"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета DocumentRegistrationsReport"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета DocumentRegistrationsReport"
	И Я закрываю текущее окно

Сценарий: Открытие формы отчета "Цены"

	Дано Я открываю основную форму отчета "PriceInfo"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета PriceInfo"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета PriceInfo"
	И Я закрываю текущее окно

﻿
&НаКлиенте
Процедура ОбработкаКоманды(ПараметрКоманды, ПараметрыВыполненияКоманды)
	ПараметрыФормы = Новый Структура;
	
	ПараметрыФормы.Вставить("ПользовательскаяИстория", ПараметрКоманды);

	ОткрытьФорму(
		"Справочник.ПользовательскиеИстории.Форма.ФормаСинхронизации", ПараметрыФормы, 
		ПараметрыВыполненияКоманды.Источник, ПараметрыВыполненияКоманды.Уникальность, 
		ПараметрыВыполненияКоманды.Окно, ПараметрыВыполненияКоманды.НавигационнаяСсылка
	);
	
КонецПроцедуры

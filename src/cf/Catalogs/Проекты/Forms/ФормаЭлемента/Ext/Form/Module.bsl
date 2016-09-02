﻿
&НаКлиенте
Процедура КаталогПроектаНачалоВыбора(Элемент, ДанныеВыбора, СтандартнаяОбработка)
	СтандартнаяОбработка = Ложь;
	
	ДиалогВыбораКаталога = Новый ДиалогВыбораФайла(РежимДиалогаВыбораФайла.ВыборКаталога);
	
	ДиалогВыбораКаталога.МножественныйВыбор = Ложь;
	
	ДиалогВыбораКаталога.Показать(Новый ОписаниеОповещения("ВыборКаталогаПроектаЗавершение", ЭтотОбъект))
КонецПроцедуры

&НаКлиенте
Процедура ВыборКаталогаПроектаЗавершение(ВыбранныеФайлы, ДополнительныеПараметры) Экспорт
	Если Ложь
		Или ВыбранныеФайлы = Неопределено
		Или ВыбранныеФайлы.Количество() = 0
		Тогда
		
		Возврат;
	КонецЕсли;
	
	ИмяКаталогаПроекта = ОбщегоНазначенияКлиентСервер.ИмяКаталогаПроекта();
	
	ВыбранныйФайл = Новый Файл(ВыбранныеФайлы[0]);
	Если ВыбранныйФайл.Имя = ИмяКаталогаПроекта Тогда
		Объект.КаталогПроекта = ВыбранныйФайл.ПолноеИмя;
	Иначе
		Сообщение = Новый СообщениеПользователю;
		
		Сообщение.Текст = "В качестве каталога проекта возможно выбрать только каталог с именем """ + ИмяКаталогаПроекта + """";
		Сообщение.КлючДанных = Объект.Ссылка;
		Сообщение.ПутьКДанным = "Объект";
		Сообщение.Поле = "КаталогПроекта";
		
		Сообщение.Сообщить();	
	КонецЕсли;
КонецПроцедуры

&НаКлиенте
Процедура ПередЗаписью(Отказ, ПараметрыЗаписи)
	ОбщегоНазначенияКлиент.УбратьСКонцовПробелы(Объект.Наименование);
КонецПроцедуры

&НаКлиенте
Процедура КаталогПроектаОткрытие(Элемент, СтандартнаяОбработка)
	СтандартнаяОбработка = Ложь;
	
	НачатьЗапускПриложения(Новый ОписаниеОповещения("ОткрытиеКаталогаПроектаЗавершение", ЭтотОбъект), Объект.КаталогПроекта);
КонецПроцедуры

&НаКлиенте
Процедура ОткрытиеКаталогаПроектаЗавершение(КодВозврата, ДополнительныеПараметры) Экспорт
	Сообщение = Новый СообщениеПользователю;
	Сообщение.Текст = "Каталог проекта открыт в проводнике.";
	Сообщение.Сообщить();	
КонецПроцедуры
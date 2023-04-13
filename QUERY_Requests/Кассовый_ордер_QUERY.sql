-- Запит для розрахунку "Кассовый ордер"
-- створено 28.04.2020 Якименко А.Л.


SELECT id.id,
		staff.Фамилия,
		staff.Имя,
		staff.Отчество,
		dest.Пункт,
		(dest.Проезд + dest.Квартирные + dest.Суточные) * DATEDIFF(day, id.начало, id.конец) AS сумма,
		DATEDIFF(day, id.начало, id.конец) AS  дней
		
		FROM Удостоверения AS id
		INNER JOIN Пункты AS dest
		ON id.Пункт_id=dest.Пункт

		INNER JOIN Сотрудники AS staff 
		ON id.Сотрудник_id=staff.id

		


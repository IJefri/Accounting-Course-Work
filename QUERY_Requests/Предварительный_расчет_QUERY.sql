-- Запит для розрахунку "Предварительный расчет"
-- створено 28.04.2020 Якименко А.Л.
SELECT staff.id,
	staff.Фамилия,id.начало,
	id.конец,
	dest.проезд * DATEDIFF ( day , id.начало , id.конец ) AS проезд,
	dest.квартирные * DATEDIFF ( day , id.начало , id.конец ) AS квартирные,
 	dest.суточные * DATEDIFF ( day , id.начало , id.конец ) AS суточные
	FROM Удостоверения AS id
	INNER JOIN Сотрудники AS staff 
	ON id.Сотрудник_id=staff.id
	INNER JOIN Пункты AS dest 
	ON id.Пункт_id=dest.Пункт


-- Запит для розрахунку "Отклонение от кассового ордера"
-- створено 28.04.2020 Якименко А.Л.
SELECT id.id,
	rep.Фамилия,
	rep.Имя,
	rep.Отчество,
	(dest.Проезд + dest.Квартирные + dest.Суточные)*DATEDIFF(day, id.начало, id.конец)  AS расчетная_сумма,

	rep.проезд + rep.квартирные + rep.суточные AS потрачено,

	rep.проезд, rep.квартирные, rep.суточные, DATEDIFF(day, id.начало, id.конец) AS дней,

	((dest.проезд + dest.квартирные + dest.суточные) - (rep.проезд + rep.квартирные + rep.суточные)) * DATEDIFF(day, id.начало, id.конец) AS отклонение

	FROM Удостоверения AS id
	INNER JOIN Авансовый_отчет AS rep 
	ON id.Сотрудник_id=rep.id
	INNER JOIN Пункты AS dest 
	ON id.Пункт_id=dest.Пункт
DROP TABLE IF EXISTS Должности


CREATE TABLE Должности
-- Таблиця для збереження посад
-- створено 26.04.2020 Якименко А.Л.
(
	--id int primary key identity(1,1), -- Поле ідентифікатора таблиці(primary key)
	PRIMARY KEY (должность),
	должность	NVARCHAR(20)	NOT NULL -- Поле ідентифікатора з посадами працівників
)



--drop table Должности, Отделы, Пункты, Сотрудники
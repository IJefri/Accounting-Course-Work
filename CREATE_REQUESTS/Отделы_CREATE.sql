DROP TABLE IF EXISTS Отделы


CREATE TABLE Отделы
-- Таблиця для збереження відділів
-- створено 26.04.2020 Якименко А.Л.
(
	--id int NOT NULL primary key identity(1,1), -- Поле ідентифікатора таблиці(primary key)
	PRIMARY KEY (отдел),
	отдел	NVARCHAR(10)	NOT NULL -- Поле ідентифікатора з відділами працівників
)


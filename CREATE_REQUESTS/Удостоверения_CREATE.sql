DROP TABLE IF EXISTS Удостоверения


CREATE TABLE Удостоверения
(
	PRIMARY KEY (id),
	id				INT				NOT NULL, -- Поле ідентифікатора таблиці (primary key)
	дата_выдачи		DATETIME		NOT NULL, -- Поле з датою видачі посвідчення
	--должность 
	--отдел
	начало			DATETIME		NOT NULL, -- Поле з датами початку відрядженнь
	конец			DATETIME		NOT NULL, -- Поле з датами кінця відрядженнь
	Пункт_id		NVARCHAR(20)	NOT NULL references Пункты(Пункт) , -- Поле з Пунктами(містами) відрядження (foreign key)
	Сотрудник_id	INT				NOT NULL references  Сотрудники(id), -- Поле з Працівниками, які відправляються в відрядження (foreign key)
)
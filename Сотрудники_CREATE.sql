DROP TABLE IF EXISTS Сотрудники

CREATE TABLE Сотрудники
-- Таблиця для даних про робітників
-- створено 26.04.2020 Якименко А.Л.
(
	PRIMARY KEY(id),
	id					INT											 NOT NULL, -- Поле ідентифікатора таблиці (primary key)
	Имя					NVARCHAR(15)								 NOT NULL, -- Поле з іменами працівників
	Фамилия				NVARCHAR(25)								 NOT NULL, -- Поле з прізвищами працівників
	Отчество			NVARCHAR(25)								 NOT NULL, -- Поле з іменами по-батькові працівників
	должность_id		NVARCHAR(20)								 NOT NULL REFERENCES Должности(Должность), -- Поле з посадами працівників (foreign key)
	отдел_id			NVARCHAR(10)								 NOT NULL REFERENCES Отделы(Отдел), -- Поле з відділами працівників (foreign key)
	дата_рождения		DATETIME									 NOT NULL, -- Поле з датою народження працівників
	принят_на_работу	DATETIME									 NOT NULL, -- Поле з датою прийому на посаду
	телефон				CHAR(10)									 NOT NULL -- Поле з номерами працівників
)


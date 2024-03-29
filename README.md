"# Accounting-Course-Work
Practicing T-SQL 

ЗМІСТ

- ВСТУП 
- ЗАВДАННЯ РОБОТИ 
- СУБД MICROSOFT SQL SERVER 
- TRANSACT-SQL 
- УТИЛІТА SQLCMD 
- УТИЛІТА MICROSOFT SQL SERVER MANAGEMENT STUDIO 
- СТРУКТУРА БАЗИ ДАНИХ 
- ТАБЛИЦЯ «ДОЛЖНОСТИ» 
- ТАБЛИЦЯ «ОТДЕЛЫ» 
- ТАБЛИЦЯ «СОТРУДНИКИ» 
- ТАБЛИЦЯ «ПУНКТЫ» 
- ТАБЛИЦЯ «УДОСТОВЕРЕНИЯ» 
- ТАБЛИЦЯ «АВАНСОВЫЙ_ОТЧЕТ» 
- ЗАПИТ «САМЫЙ_ПОСЕЩАЕМЫЙ_ГОРОД» 
- ЗАПИТ «ПРЕДВАРИТЕЛЬНЫЙ_РАСЧЕТ» 
- ЗАПИТ «КАССОВЫЙ_ОРДЕР» 
- ЗАПИТ «ОТКЛОНЕНИЕ_ОТ_КАССОВОГО_ОРДЕРА» 
- СКРИПТИ ПО СТВОРЕННЮ CRUD-ПРОЦЕДУР 
- ПРОЦЕДУРА СТВОРЕННЯ ЗАПИСУ 
- ПРОЦЕДУРА ЗЧИТУВАННЯ ЗАПИСУ 
- ПРОЦЕДУРА ОНОВЛЕННЯ ЗАПИСУ 
- ПРОЦЕДУРА ВИДАЛЕННЯ ЗАПИСУ 
- SQLCMD СКРИПТ 
- ВИСНОВКИ 

ВСТУП

Виконання роботи відбувалося у СУБД Microsoft SQL Server 2019, з
використанням мови запитів Transact-SQL і таких утиліт, як SQLCMD та
Microsoft SQL Server Management Studio. Мета роботи досягається
комплексом завдань:
- проектування для зберігання даних,
- створення таблиць,
- введення даних у таблиці,
- розробка процедур і запитівв, призначених для перегляду, редагування
та виведення інформації,
- автоматизації роботи зі створеною базою даних.

ЗАВДАННЯ РОБОТИ
Опис предметної області

“Відділ бухгалтерського обліку. Облік відряджень”

На підставі наказу кожному співробітнику, спрямованому в відрядження,
виписується посвідчення про відрядження. Посвідчення ідентифікується
номером і датою видачі. У ньому також вказується П.І.Б. відрядженого, назва
відділу, в якому він працює, займана посада, пункти призначення (їх може
бути не більше трьох) і термін відрядження (дата початку та дата закінчення).
На підставі посвідчення про відрядження відділом бухгалтерського обліку
проводиться попередній розрахунок витрат для видачі авансу. Попередній
розрахунок ведеться за трьома статтями:
1. проїзд;
2. квартирні;
3. добові.
Для розрахунку проїзду є довідник, в якому вказана вартість проїзду до
пункту призначення. При розрахунку суми авансу проїзд оплачується туди і
назад за вартістю купейного квитка
Сума квартирних розраховується виходячи з категорії міста:
- в столиці- 50 грн.в добу;
- в звичайному місті-40 грн.в добу;
- районний центр-30 грн.в добу.
У всіх містах, крім Далекої Півночі і Чорнобиля - 25 грн. Співробітник
отримує розрахункову суму авансу в касі бухгалтерії за касовим ордером. У
ньому міститься номер ордера, П.І.Б., сума, дата отримання грошей.
Після повернення з відрядження працівник складає авансовий звіт, в якому
вказує фактично витрачені суми на проїзд, бронювання місць, проживання в
готелі, телефонні переговори, суму добових у розрахунку на фактичне
кількість днів.

Завдання:
1. Скласти реєстр авансових звітів за даний місяць
2. Видати список міст, в які найбільш часто їздять співробітники даної
організації

3. Провести попередній розрахунок авансу за кожним співробітником
4. Забезпечити автоматизоване заповнення обєкта ""Видатковий касовий
ордер"";
5. Видати відомість відхилень суми авансу від фактично витраченої суми по
кожному співробітнику.

СУБД MICROSOFT SQL SERVER

Система, яка розробляється корпорацією  Microsoft . Як сервер
даних виконує головну функцію по збереженню та наданню даних у
відповідь на запити інших  застосунків , які можуть виконуватися як на тому ж
самому сервері, так і у мережі.
Мова, що використовується для запитів —  Transact-SQL , створена спільно
Microsoft та  Sybase . Transact-SQL є реалізацією стандарту ANSI / ISO щодо
структурованої мови запитів SQL із розширеннями. Використовується як для
невеликих і середніх за розміром баз даних, так і для великих баз даних
масштабу підприємства. Багато років вдало конкурує з іншими системами
керування базами даних.
Реляційна СУБД складається з механізму баз даних, власне баз даних і
додатків, необхідних для управління даними і компонентами реляційної
СУБД. Реляційна СУБД організовує дані у вигляді повязаних таблиць які
складаються з рядків і стовпців, що є основою даних. Реляційна СУБД
відповідає за підтримку структури бази даних і вирішує наступні завдання:
 підтримує звязки між даними в базі;
 гарантує коректне зберігання даних і виконання правил, що
регламентують звязки між ними;
 відновлює дані після аварії у системі, переводячи їх в узгоджений стан,
зафіксований до збою.
Також SQL Server є масштабованою базою даних, що означає, що вона
може зберігати значні обсяги даних і підтримувати роботу багатьох
користувачів, які здійснюють одночасний доступ до бази даних.

TRANSACT-SQL

Transact-SQL (T-SQL) — процедурне розширення мови SQL, створене
компанією  Microsoft  (для  Microsoft SQL Server ) і  Sybase  (для Sybase ASE).
SQL був розширений наступними додатковими можливостями, такими як:
 Керуючі оператори,
 Локальні і глобальні змінні,
 Різні додаткові функції для обробки рядків, дат, математики, тощо,
 Підтримка аутентифікації Microsoft Windows.
Мова Transact-SQL є ключем до використання MS SQL Server.
Всі  застосунки , які взаємодіють з екземпляром MS SQL Server, незалежно від
їхньої реалізації і  інтерфейсу користувача , відправляють з сервера інструкції
Transact-SQL.

УТИЛІТА SQLCMD

SQLCMD - це програма командного рядка, яка постачається разом із
Microsoft SQL Server, і дозволяє використовувати функції управління SQL
Server. SQLCMD був представлений разом із SQL Server 2005 і оновлюється з
версіями SQL Server 2008, 2008 R2, 2012, 2014, 2016 та поточною 2019. Його
попередниками для більш ранніх версій SQL Server були OSQL та ISQL, які
були функціонально еквівалентними стосовно виконання T-SQL, але
SQLCMD має додаткову універсальність через параметри командного рядка.
SQLCMD дозволяє вводити SQL-запити та виконувати їх прямо з
командного рядка. Він також може діяти як скриптова мова для створення та
запуску набору операторів SQL – сценарію. Такі скрипти зберігаються у
форматі .sql і використовуються або для управління базами даних, або для
створення схеми бази даних під час розгортання бази даних.
У даній курсовій роботі використовується можливість створення і
виконання сценаріїв у поєднанні зі звичайними файлами сценарію Windows
із розширенням .bat, що дозволяє швидко розгорнути і наповнити базу даних
на будь-якому комп’ютері, де встановлено Microsoft SQL Server, потребуючи
лише заміни назви SQL-сервера.

УТИЛІТА MICROSOFT SQL SERVER MANAGEMENT STUDIO


Microsoft SQL Server Management Studio (SSMS) – утиліта для
конфігурації, управління і адміністрування всіх компонентів Microsoft SQL
Server. Утиліта включає скриптовий редактор і графічну програму, яка
працює з обєктами і налаштуваннями сервера.
Головним інструментом SQL Server Management Studio є Object
Explorer («Переглядач об’єктів»), який дозволяє користувачеві переглядати,
отримувати обєкти сервера, а також повністю ними управляти.

СТРУКТУРА БАЗИ ДАНИХ

Рис. 2. Діаграма бази даних, створена у SQL Studio
База даних складається з 6 таблиць, у яких використовуються зв’язки
типу «Один до Багатьох». Існує 4 запити, які задовольняють умови завдання.
Присутні 4 процедури для основних маніпуляцій з даними, до яких написані
перевірочні сценарії.
Список таблиць:
 Должности (Посади)
 Отделы (Відділи)
 Сотрудники (Співробітники)
 Удостоверения (Посвідчення)
 Пункты (Пункти)
 Авансовый отчет (Авансовий звіт)

Список запитів:
 Самый_посещаемый_город_QUERY (Задача №2 – найбільш
відвідувані міста)
 Предварительный_расчет_QUERY (Задача №3 – попередній
розрахунок авансу)
 Кассовый_ордер_QUERY (Задача №4 – видатковий касовий ордер)

 Отклонение_от_кассового_ордера_QUERY (Задача №5 – відхилення
від витраченої суми за кожного співробітника)

Список процедур:
 procedure_create_report (Створення нового звіту)
 procedure_read_ report (Зчитування звіту)
 procedure_update_ report (Оновлення звіту)
 procedure_delete_ report (Видалення звіту)

ТАБЛИЦЯ «ДОЛЖНОСТИ»



Таблиця містить відомості про посади підприємства, і лише одне поле
должность (посада) типу «текст».
Скрипт створення таблиці:
DROP TABLE IF EXISTS Должности
CREATE TABLE Должности
-- Таблиця для збереження посад

(
PRIMARY KEY (должность),
должность NVARCHAR(20) NOT NULL -- Поле ідентифікатора з посадами
працівників
)

Скрипт наповнення таблиці:
-- Запит для заповнення таблиці ""Должности"";

INSERT INTO Должности (должность)
VALUES (""Бухгалтер"")
INSERT INTO Должности (должность)
VALUES (""Директор"")
INSERT INTO Должности (должность)
VALUES (""Инженер"")
INSERT INTO Должности (должность)
VALUES (""Маркетолог"")
INSERT INTO Должности (должность)
VALUES (""Менеджер"")

ТАБЛИЦЯ «ОТДЕЛЫ»



Таблиця відповідає за збереження інформації про відділи, і має одне
поле типу «текст», с назвою відділу.

Скрипт створення таблиці:
  DROP TABLE IF EXISTS Отделы
  CREATE TABLE Отделы
  -- Таблиця для збереження відділів
  (
  PRIMARY KEY (отдел),
  отдел NVARCHAR(10) NOT NULL -- Поле ідентифікатора з відділами
  працівників
  )

Скрипт наповнення таблиці:
  -- Запит для заповнення таблиці ""Отделы"";
  INSERT INTO Отделы (отдел)
  VALUES (""ОБ"")
  INSERT INTO Отделы (отдел)
  VALUES(""ОД"")
  INSERT INTO Отделы (отдел)
  VALUES(""ОМР"")
  INSERT INTO Отделы (отдел)
  VALUES(""ОП"")

ТАБЛИЦЯ «СОТРУДНИКИ»



Таблиця відповідає за збереження інформації про співробітників, і має
дев’ять полів.
Поля таблиці:
 id (Номер співробітника) – тип даних «число» з параметром
«лічильник».
 Имя, Фамилия, Отчество (Ім’я, Прізвище, Ім’я по батькові) – тип даних
«текст», ім’я, прізвище та ім’я по батькові співробітника.
 должность_id (Ідентифікатор посади) – тип даних «число», номер
посади.
 отдел_id (Ідентифікатор відділу) – тип даних «число», номер відділу.
 дата_рождения (Дата народження) – тип даних «дата», дата
народження співробітника.
 принят_на_работу (Прийнятий на роботу) – тип даних «дата», дата
найму співробітника
 телефон – тип даних «текст», телефон співробітника

Скрипт створення таблиці:
  DROP TABLE IF EXISTS Сотрудники
  CREATE TABLE Сотрудники
  -- Таблиця для даних про робітників
  (
  PRIMARY KEY(id),
  id INT NOT NULL, -- Поле ідентифікатора таблиці (primary key)
  Имя NVARCHAR(15) NOT NULL, -- Поле з іменами працівників
  
  Фамилия NVARCHAR(25) NOT NULL, -- Поле з прізвищами
  працівників
  Отчество NVARCHAR(25) NOT NULL, -- Поле з іменами по-батькові
  працівників
  должность_id NVARCHAR(20) NOT NULL
  REFERENCES Должности(Должность), -- Поле з посадами працівників (foreign key)
  отдел_id NVARCHAR(10) NOT NULL
  REFERENCES Отделы(Отдел), -- Поле з відділами працівників (foreign key)
  дата_рождения DATETIME NOT NULL, -- Поле з датою народження
  працівників
  принят_на_работу DATETIME NOT NULL, -- Поле з датою прийому на
  посаду
  телефон CHAR(10) NOT NULL -- Поле з номерами
  працівників
  )
  
Скрипт наповнення таблиці:

  -- Запит для заповнення таблиці ""Сотрудники"";
  INSERT INTO Сотрудники (id, Имя, Фамилия, Отчество, должность_id, отдел_id,
  дата_рождения, принят_на_работу, телефон)
  VALUES (1, ""Владимир"", ""Ковалов"", ""Васильев"", ""Директор"", ""ОД"",""18-06-1992 11:15:00"", ""21-05-
  2017 11:15:00"", ""0955235651"")
  
  INSERT INTO Сотрудники (id, Имя, Фамилия, Отчество, должность_id, отдел_id,
  дата_рождения, принят_на_работу, телефон)
  VALUES (2, ""Иван"", ""Евдокимов"", ""Иванов"", ""Бухгалтер"", ""ОБ"",""27-04-1999 11:15:00"", ""29-09-2018
  11:15:00"", ""0963624571"")
  
  INSERT INTO Сотрудники (id, Имя, Фамилия, Отчество, должность_id, отдел_id,
  дата_рождения, принят_на_работу, телефон)
  VALUES (3, ""Николай"", ""Мартынов"", ""Владимирович"", ""Инженер"", ""ОП"", ""18-09-1994 11:15:00"",
  ""06-01-2017 11:15:00"", ""0973676351"")

  INSERT INTO Сотрудники (id, Имя, Фамилия, Отчество, должность_id, отдел_id,
  дата_рождения, принят_на_работу, телефон)
  VALUES (4, ""Давид"", ""Сорокин"", ""Леонидович"", ""Маркетолог"", ""ОМР"", ""09-02-1991 11:15:00"", ""15-
  01-2017 11:15:00"", ""0920564271"")

  INSERT INTO Сотрудники (id, Имя, Фамилия, Отчество, должность_id, отдел_id,
  дата_рождения, принят_на_работу, телефон)
  VALUES (5, ""Николай"", ""Крылов"", ""Петров"", ""Менеджер"", ""ОП"", ""25-04-1994 22:15:00"", ""10-05-
  2017 11:15:00"", ""0956167321"")

ТАБЛИЦЯ «ПУНКТЫ»



У таблиці записані пункти, у яких зазначається назва пункту, кількість
грошей для певного міста на проїзд, оренду, денні витрати.
Поля таблиці:
 Пункт – тип даних «текст», пункт призначення з «ключовим»
значенням
 проезд (Проїзд) – тип даних «грошовий», надана кількість в грошовому
еквіваленті на проїзд
 квартирные (Оренда) – тип даних «грошовий», надана кількість в
грошовому еквіваленті на оренду житлового приміщення
 суточные (Денні) – тип даних «грошовий», надана кількість в
грошовому еквіваленті на денні витрати.

Скрипт створення таблиці:
  DROP TABLE IF EXISTS Пункты
  CREATE TABLE Пункты
  -- Таблиця для збереження можливих пунктів призначення
  
  (
  PRIMARY KEY (Пункт),
  Пункт NVARCHAR(20) NOT NULL, -- Поле з Пунктами(містами) можливих
  призначень
  проезд MONEY NOT NULL, -- Поле з витратами на проїзд
  квартирные MONEY NOT NULL, -- Поле з витратами на оренду
  квартири/готелю
  суточные MONEY NOT NULL -- Поле з витратами за день на власні
  потреби
  )

Скрипт наповнення таблиці:
  -- Запит для заповнення таблиці ""Пункты""
  
  INSERT INTO Пункты (Пункт, проезд, квартирные, суточные)
  VALUES (""Киев"", 15, 50, 20)
  INSERT INTO Пункты (Пункт, проезд, квартирные, суточные)
  VALUES (""Харьков"", 10, 40, 15)
  INSERT INTO Пункты (Пункт, проезд, квартирные, суточные)
  VALUES (""Одесса"", 10, 40, 15)
  INSERT INTO Пункты (Пункт, проезд, квартирные, суточные)
  VALUES (""Днепр"", 10, 40, 15)

ТАБЛИЦЯ «УДОСТОВЕРЕНИЯ»



У таблиці записані посвідчення для відряджень, у яких зазначається назва
дата видачі, початок відрядження та кінець відрядження, який необхідно
поставити.
Поля таблиці:
 id (Номер посвідчення) – тип даних «число» з параметром «лічильник».
 дата_выдачи (Дата видачі) – тип даних «дата», дата отримання
посвідчення
 начало (Дата початку) – тип даних «дата», дата початку відрядження
 конец (Дата кінця) – тип даних «дата», дата кінця відрядження
 пункт_id (Ідентифікатор пункту) – тип даних «число», номер пункту.
 сотрудник_id (Ідентифікатор співробітника) – тип даних «число»,
номер співробітника.

Скрипт створення таблиці:
  DROP TABLE IF EXISTS Удостоверения
  CREATE TABLE Удостоверения
  (
  PRIMARY KEY (id),
  id INT NOT NULL, -- Поле ідентифікатора таблиці
  (primary key)
  дата_выдачи DATETIME NOT NULL, -- Поле з датою видачі посвідчення
  начало DATETIME NOT NULL, -- Поле з датами початку відрядженнь
  конец DATETIME NOT NULL, -- Поле з датами кінця відрядженнь
  Пункт_id NVARCHAR(20) NOT NULL REFERENCES Пункты(Пункт) , -- Поле з
  Пунктами(містами) відрядження (foreign key)
  Сотрудник_id INT NOT NULL REFERENCES Сотрудники(id), -- Поле з
  Працівниками, які відправляються в відрядження (foreign key)
  
  )
Скрипт наповнення таблиці:
  -- Запит для заповнення таблиці ""Удостоверения""

  INSERT INTO Удостоверения (id, дата_выдачи, начало, конец, Пункт_id, Сотрудник_id)
  VALUES (1, ""02-05-2019 13:21:00"", ""10-06-2019 15:12:00"", ""12-06-2019 18:45:00"", ""Киев"",1)
  INSERT INTO Удостоверения (id, дата_выдачи, начало, конец, Пункт_id, Сотрудник_id)
  VALUES (2, ""23-06-2019 11:21:00"", ""12-07-2019 18:12:00"", ""15-07-2019 14:23:00"", ""Харьков"",2)
  INSERT INTO Удостоверения (id, дата_выдачи, начало, конец, Пункт_id, Сотрудник_id)
  VALUES (3, ""31-07-2019 13:21:00"", ""30-08-2019 20:12:00"", ""05-09-2019 18:05:00"", ""Одесса"",3)
  INSERT INTO Удостоверения (id, дата_выдачи, начало, конец, Пункт_id, Сотрудник_id)
  VALUES (4, ""15-08-2019 11:21:00"", ""20-09-2019 15:12:00"", ""25-09-2019 13:12:00"", ""Днепр"",4)
  INSERT INTO Удостоверения (id, дата_выдачи, начало, конец, Пункт_id, Сотрудник_id)
  VALUES (5, ""20-09-2019 17:21:00"", ""25-09-2019 15:12:00"", ""28-09-2019 12:42:00"", ""Киев"",5)

ТАБЛИЦЯ «АВАНСОВЫЙ_ОТЧЕТ»



У цій таблиці записуються дані співробітника, витрати на проїзд,
оренду та денні витрати.
Поля таблиці:
 id (Номер співробітника) – тип даних «число» з параметром
«лічильник».
 Имя, Фамилия, Отчество (Ім’я, Прізвище, Ім’я по батькові) – тип даних
«текст», ім’я, прізвище та ім’я по батькові співробітника.
 проезд (Проїзд) – тип даних «грошовий», витрачена кількість грошей
на проїзд
 квартирные (Оренда) – тип даних «грошовий», надана кількість грошей
на оренду житлового приміщення
 суточные (Денні) – тип даних «грошовий», надана кількість грошей на
денні витрати.

Скрипт створення таблиці:
  DROP TABLE IF EXISTS Авансовый_отчет
  CREATE TABLE Авансовый_отчет
  -- Таблиця для авансового звітів, які заповнюються після відрядження
  
  (
  PRIMARY KEY(id),
  id INT NOT NULL, -- Поле ідентифікатора таблиці (primary
  key)
  Имя NVARCHAR(15) NOT NULL, -- Поле з іменами працівників
  Фамилия NVARCHAR(25) NOT NULL, -- Поле з прізвищами працівників
  
  Отчество NVARCHAR(25) NOT NULL, -- Поле з іменами по-батькові працівників
  проезд MONEY NOT NULL, -- Поле з витратами на проїзд
  квартирные MONEY NOT NULL, -- Поле з витратами на оренду
  квартири/готелю
  суточные MONEY NOT NULL, -- Поле з витратами за день на власні
  потреби
  Пункт_id NVARCHAR(20) NOT NULL,
  REFERENCES Пункты(Пункт), -- Поле з Пунктами(містами) відрядження (foreign key)
  Сотрудник_id INT NOT NUL
  REFERENCES Сотрудники(id) -- Поле з Працівниками, які відправляються в
  відрядження (foreign key)
  )

Скрипт наповнення таблиці:
  -- Запит для заповнення таблиці ""Авансовый_отчет ""
  
  INSERT INTO Авансовый_отчет (id, Имя, Фамилия, Отчество, проезд, квартирные, суточные,
  Пункт_id, Сотрудник_id)
  VALUES (1, ""Владимир"", ""Ковалов"", ""Васильев"", 20, 100, 25, ""Киев"", 1)
  INSERT INTO Авансовый_отчет (id, Имя, Фамилия, Отчество, проезд, квартирные, суточные,
  Пункт_id, Сотрудник_id)
  VALUES (2, ""Иван"", ""Евдокимов"", ""Иванов"", 10, 70, 20, ""Харьков"", 2)
  INSERT INTO Авансовый_отчет (id, Имя, Фамилия, Отчество, проезд, квартирные, суточные,
  Пункт_id, Сотрудник_id)
  VALUES (3, ""Николай"", ""Мартынов"", ""Владимирович"", 20, 100, 20, ""Одесса"", 3)
  INSERT INTO Авансовый_отчет (id, Имя, Фамилия, Отчество, проезд, квартирные, суточные,
  Пункт_id, Сотрудник_id)
  VALUES (4, ""Давид"", ""Сорокин"", ""Леонидович"", 20, 120, 30, ""Днепр"", 4)
  INSERT INTO Авансовый_отчет (id, Имя, Фамилия, Отчество, проезд, квартирные, суточные,
  Пункт_id, Сотрудник_id)
  VALUES (5, ""Николай"", ""Крылов"", ""Петров"", 30, 80, 29, ""Киев"",5)

ЗАПИТ «САМЫЙ_ПОСЕЩАЕМЫЙ_ГОРОД»

  -- Запит для розрахунку ""Наиболее посещаемые города""
  
  SELECT Пункты.Пункт,
  
  Пункты.Пункт AS Город,
  COUNT(Пункты.Пункт) AS посещений
  FROM Пункты
  INNER JOIN Удостоверения
  ON Пункты.Пункт=Удостоверения.Пункт_id
  GROUP BY Пункты.Пункт

Даний запит виконує другу задачу у завданні курсової роботи:
2. Видати список міст, в які найбільш часто їздять співробітники
даної організації

Тобто, результатом роботи запиту є таблиця із списком міст і їх кількість
відвідувань, які були найчастіше відвідані.



ЗАПИТ «ПРЕДВАРИТЕЛЬНЫЙ_РАСЧЕТ»

  -- Запит для розрахунку ""Предварительный расчет""
  
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

Даний запит виконує третю задачу у завданні курсової роботи:
3. Провести попередній розрахунок авансу за кожним
співробітником

Тобто, результатом роботи запиту є таблиця з передрозрахунком
відрядження з витратами на проїзд, оренду, дні



ЗАПИТ «КАССОВЫЙ_ОРДЕР»

  -- Запит для розрахунку ""Кассовый ордер""
  
  SELECT id.id,
  
  staff.Фамилия,
  staff.Имя,
  staff.Отчество,
  dest.Пункт,
  (dest.Проезд + dest.Квартирные + dest.Суточные) * DATEDIFF(day, id.начало,
  
  id.конец)
  
  AS сумма,
  DATEDIFF(day, id.начало, id.конец)
  AS дней
  
  FROM Удостоверения AS id
  INNER JOIN Пункты AS dest
  ON id.Пункт_id=dest.Пункт
  INNER JOIN Сотрудники AS staff
  ON id.Сотрудник_id=staff.id

Даний запит виконує четверту задачу у завданні курсової роботи:
4. Забезпечити автоматизоване заповнення об""єкта ""Видатковий
касовий ордер""

Тобто, результатом роботи запиту є таблиця з виданою сумою на
відрядження з вказанням даних співробітника, пункту відрядження, грошей
на витрати та кількість днів у відрядженні.



ЗАПИТ «ОТКЛОНЕНИЕ_ОТ_КАССОВОГО_ОРДЕРА»

  -- Запит для розрахунку ""Отклонение от кассового ордера""
  
  SELECT id.id,
  rep.Фамилия,
  rep.Имя,
  rep.Отчество,
  (dest.Проезд + dest.Квартирные + dest.Суточные)*DATEDIFF(day, id.начало, id.конец)
  AS расчетная_сумма,
  rep.проезд + rep.квартирные + rep.суточные
  AS потрачено,
  rep.проезд, rep.квартирные, rep.суточные, DATEDIFF(day, id.начало, id.конец)
  AS дней,
  ((dest.проезд + dest.квартирные + dest.суточные) - (rep.проезд + rep.квартирные
  +rep.суточные)) * DATEDIFF(day, id.начало, id.конец)
  AS отклонение
  FROM Удостоверения AS id
  INNER JOIN Авансовый_отчет AS rep
  ON id.Сотрудник_id=rep.id
  INNER JOIN Пункты AS dest
  ON id.Пункт_id=dest.Пункт

Даний запит виконує п’яту задачу у завданні курсової роботи:
5. Видати відомість відхилень суми авансу від фактично витраченої
суми по кожному співробітнику.
Тобто, результатом роботи запиту є таблиця з відхиленням від касового
ордеру, а саме від виданої суми та витраченої.



СКРИПТИ ПО СТВОРЕННЮ CRUD-ПРОЦЕДУР

Для того, щоб база даних вважалася придатною до використання, необхідно
додати до неї CRUD-процедури з підтримкою транзакцій.
CRUD (англ. Create Read Update Delete) – це чотири базові функції
управління даними:

 Create – Створення,
 Read – Зчитування,
 Update – Оновлення,
 Delete – Видалення;

Транзакція – логічна одиниця роботи з даними, яка являється групою
послідовних операцій з базою даних. Транзакція може бути виконана або
цілком і успішно, дотримуючись цілісності даних і незалежно від інших
транзакцій, що йдуть паралельно, або не виконана зовсім, і тоді вона не може
справити ніякого ефекту.
У T-SQL існує відповідність цим функціям (див. Таблицю 1)
Таблиця 1. Відповідність функціям у T-SQL
Функція У T-SQL
Створити INSERT
Зчитати READ
Оновити UPDATE
Видалити DELETE

Було створено чотири скрипта, які записують у базу даних відповідні
процедури для роботи з таблицею «Авансовый_отчет».

ПРОЦЕДУРА СТВОРЕННЯ ЗАПИСУ

Перша процедура на створення запису дозволяє записати дані про
новий звіт у відповідну таблицю, і потребує вісім параметрів – Ім’я,
Прізвище, Ім’я по батькові, проїзд, оренда, денні, номер пункту, номер
співробітника. Номер звіту(id) уводиться СУБД автоматично.
Відбуваються перевірки на правильність даних, і на можливість запису таких
даних у таблицю. У разі неможливості запису таких даних, виводиться
повідомлення про помилку, і транзакція відміняється.
  CREATE PROCEDURE create_report
  @name NVARCHAR(25),
  @lastName NVARCHAR(25),
  @middleName NVARCHAR(25),
  @passage MONEY,
  @appartment MONEY,
  @daily MONEY,
  @destinationID INT,
  @staffID INT
  -- Створення звіту по параметрам
  AS
  BEGIN TRANSACTION;
  IF @lastName IS NULL OR
  @name IS NULL OR
  @middleName IS NULL OR
  @passage IS NULL OR
  @appartment IS NULL OR
  @daily IS NULL OR
  @destinationID IS NULL OR
  @staffID IS NULL OR
  BEGIN
  
  ROLLBACK TRANSACTION;
  PRINT ""Помилка: Пусті параметри""
  
  RETURN;
  
  END
  BEGIN TRY
  INSERT INTO Авансовый_отчет(Имя, Фамилия, Отчество, проезд,
  
  квартирные, суточные, Пункт_ID, Сотрудник_ID)
  
  VALUES(@lastName, @name, @middleName, @passage, @appartment, @daily,
  
  @destinationID, @staffID)
  END TRY
  BEGIN CATCH
  ROLLBACK TRANSACTION;
  PRINT ""Помилка: Перевiрьте данi""
  RETURN;
  END CATCH
  COMMIT;

ПРОЦЕДУРА ЗЧИТУВАННЯ ЗАПИСУ

Процедура зчитування дозволяє повністю зчитати інформацію про звіт
його номер(id), який необхідно передати як параметр.
  CREATE PROCEDURE read_report
  @reportID INT
  -- Зчитування даних про звіт по номеру
  AS
  BEGIN TRANSACTION;
  SELECT *
  FROM Авансовый_отчет
  WHERE id = @reportID;
  COMMIT;

ПРОЦЕДУРА ОНОВЛЕННЯ ЗАПИСУ

Процедура на оновлення запису потребує у якості параметрів номер
звіту(id), який необхідно оновити і самі дані для оновлення, з можливість
пропустити частини звіту, яким оновлення не потрібно.
Виконуються перевірки на якість введених даних, і у разі неможливості
оновити запис виводиться повідомлення про помилку, і транзакція
відміняється.
  CREATE PROCEDURE update_report
  @reportID INT,
  @name NVARCHAR(25),
  @lastName NVARCHAR(25),
  @middleName NVARCHAR(25),
  @passage MONEY,
  @appartment MONEY,
  @daily MONEY,
  @destinationID INT,
  @staffID INT
  -- Оновлення звіту по параметрам
  AS
  BEGIN TRANSACTION;
  IF @reportID IS NULL OR
  NOT EXISTS (SELECT * FROM Авансовый_отчет WHERE id = @reportID)
  BEGIN
  ROLLBACK TRANSACTION;
  PRINT ""Помилка: Номер звіту пустий/не iснує""
  RETURN;
  
  END
  BEGIN TRY
  IF @name IS NOT NULL
  BEGIN
  UPDATE Авансовый_отчет
  
  SET Имя = @name
  WHERE id = @reportID;
  END
  IF @lastName IS NOT NULL
  BEGIN
  UPDATE Авансовый_отчет
  SET Фамилия = @lastName
  WHERE id = @reportID;
  END
  IF @middleName IS NOT NULL
  BEGIN
  UPDATE Авансовый_отчет
  SET Отчество = @middleName
  WHERE id = @reportID;
  END
  IF @passage IS NOT NULL
  BEGIN
  UPDATE Авансовый_отчет
  SET проезд = @passage
  WHERE id = @reportID;
  END
  IF @appartment IS NOT NULL
  BEGIN
  UPDATE Авансовый_отчет
  SET квартирные = @appartment
  WHERE id = @reportID;
  END
  IF @daily IS NOT NULL
  BEGIN
  UPDATE Авансовый_отчет
  
  SET суточные = @daily
  WHERE id = @reportID;
  END
  IF @destinationID IS NOT NULL
  BEGIN
  UPDATE Авансовый_отчет
  SET Пункт_id = @destinationID
  WHERE id = @reportID;
  END
  IF @staffID IS NOT NULL
  BEGIN
  UPDATE Авансовый_отчет
  SET Сотрудник_id = @staffID
  WHERE id = @reportID;
  END
  END TRY
  BEGIN CATCH
  ROLLBACK TRANSACTION;
  PRINT ""Помилка: Перевiрьте данi""
  RETURN;
  END CATCH
  COMMIT;

ПРОЦЕДУРА ВИДАЛЕННЯ ЗАПИСУ

Процедура видалення повністю видаляє запис з таблиці, і потребує для
цього лише номер звіту(id), який необхідно видалити.
  CREATE PROCEDURE delete_report
  @reportID INT
  -- Видалення звіту по порядковому номеру
  AS
  BEGIN TRANSACTION;
  DELETE
  FROM Авансовый_отчет
  WHERE id = @reportID -- (number)
  COMMIT;

SQLCMD СКРИПТ

Для автоматичного виконання послідовності скриптів «CRUD»
  SQLCMD -E -S DESKTOP-GJBV21K -i .\use_database.sql
  SQLCMD -E -S DESKTOP-GJBV21K -i .\create_report.sql
  SQLCMD -E -S DESKTOP-GJBV21K -i .\read_report.sql
  SQLCMD -E -S DESKTOP-GJBV21K -i .\update_report.sql
  SQLCMD -E -S DESKTOP-GJBV21K -i .\delete_report.sql

  PAUSE

ВИСНОВКИ

У ході виконання цієї курсової роботи була розроблена повністю
робоча база даних «Відділ бухгалтерського обліку. Облік відряджень», яка
виконує усі поставленні задачі. Використовувалась СУБД Microsoft SQL
Server, мова структурованих запитів Transact-SQL, та допоміжні утиліти
SQLCMD та Microsoft SQL Server Management Studio.
Створені основні процедури для маніпулювання даними з підтримкою
транзакцій, що дозволяють вводити, зчитувати, редагувати або видаляти дані
про нові авансові звіти з урахуванням можливості уведення неправильних
даних і захистом від пошкодження вже існуючих записів.
"

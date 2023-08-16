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
			PRINT 'Помилка: Номер звіту пустий/не iснує'
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
		PRINT 'Помикла: Перевiрьте данi'
		RETURN;
	END CATCH
	COMMIT;

CREATE PROCEDURE delete_report
	@reportID INT
	-- Видалення звіту по порядковому номеру
	AS
	BEGIN TRANSACTION;
		DELETE
		  FROM Авансовый_отчет
		 WHERE id = @reportID -- (number)
	COMMIT;
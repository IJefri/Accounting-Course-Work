CREATE PROCEDURE read_report
	@reportID INT
	-- Зчитування даних про звіт по номеру
	AS
	BEGIN TRANSACTION;
	SELECT *
	  FROM Авансовый_отчет
	 WHERE id = @reportID;
	COMMIT;

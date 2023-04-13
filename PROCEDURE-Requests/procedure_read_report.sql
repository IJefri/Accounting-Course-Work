CREATE PROCEDURE read_report
	@reportID INT
	-- «читуванн€ даних про зв≥т по номеру
	AS
	BEGIN TRANSACTION;
	SELECT *
	  FROM јвансовый_отчет
	 WHERE id = @reportID;
	COMMIT;
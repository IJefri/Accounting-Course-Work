CREATE PROCEDURE read_report
	@reportID INT
	-- ���������� ����� ��� ��� �� ������
	AS
	BEGIN TRANSACTION;
	SELECT *
	  FROM ���������_�����
	 WHERE id = @reportID;
	COMMIT;
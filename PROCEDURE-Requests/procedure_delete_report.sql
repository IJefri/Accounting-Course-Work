CREATE PROCEDURE delete_report
	@reportID INT
	-- ��������� ���� �� ����������� ������
	AS
	BEGIN TRANSACTION;
		DELETE
		  FROM ���������_�����
		 WHERE id = @reportID -- (number)
	COMMIT;
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
	-- ��������� ���� �� ����������
	AS
	BEGIN TRANSACTION;
	IF @reportID IS NULL OR
	   NOT EXISTS (SELECT * FROM ���������_����� WHERE id = @reportID)
		BEGIN
			ROLLBACK TRANSACTION;
			PRINT '�������: ����� ���� ������/�� i���'
			RETURN;
	    END
	BEGIN TRY
		IF @name IS NOT NULL
		BEGIN
			UPDATE ���������_�����
			   SET ��� = @name 
			 WHERE id = @reportID;
		END
		IF @lastName IS NOT NULL
		BEGIN
			UPDATE ���������_�����
			   SET ������� = @lastName
			 WHERE id = @reportID;
		END
		IF @middleName IS NOT NULL
		BEGIN
			UPDATE ���������_�����
			   SET �������� = @middleName
			 WHERE id = @reportID;
		END
		IF @passage IS NOT NULL
		BEGIN
			UPDATE ���������_�����
			   SET ������ = @passage
			 WHERE id = @reportID;
		END
		IF @appartment IS NOT NULL
		BEGIN
			UPDATE ���������_�����
			   SET ���������� = @appartment
			 WHERE id = @reportID;
		END
		IF @daily IS NOT NULL
		BEGIN
			UPDATE ���������_�����
			   SET �������� = @daily
			 WHERE id = @reportID;
		END
		IF @destinationID IS NOT NULL
		BEGIN
			UPDATE ���������_�����
			   SET �����_id = @destinationID
			 WHERE id = @reportID;
		END
		IF @staffID IS NOT NULL
		BEGIN
			UPDATE ���������_�����
			   SET ���������_id = @staffID
			 WHERE id = @reportID;
		END
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION;
		PRINT '�������: �����i���� ���i'
		RETURN;
	END CATCH
	COMMIT;
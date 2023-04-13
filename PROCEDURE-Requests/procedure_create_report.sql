CREATE PROCEDURE create_report
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
	IF @lastName IS NULL OR
	   @name IS NULL OR
	   @middleName IS NULL OR
	   @passage IS NULL OR
	   @appartment IS NULL OR
	   @daily IS NULL OR
	   @destinationID IS NULL OR
	   @staffID IS NULL 
	    BEGIN
			ROLLBACK TRANSACTION;
			PRINT '�������: ���� ���������'
			RETURN;
	    END
	BEGIN TRY
		INSERT INTO ���������_�����(���, �������, ��������, ������, ����������, ��������, �����_ID, ���������_ID)
		VALUES(@lastName, @name, @middleName, @passage, @appartment, @daily, @destinationID, @staffID)
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION;
		PRINT '�������: �����i���� ���i'
		RETURN;
	END CATCH
	COMMIT;
--DROP TABLE IF EXISTS ������

CREATE TABLE ������
-- ������� ��� ���������� �������� ������ �����������
-- �������� 27.04.2020 �������� �.�.
(
	--id int primary key identity(1,1), -- ���� �������������� �������(primary key)
	PRIMARY KEY (�����),
	�����		NVARCHAR(20) NOT NULL, -- ���� � ��������(������) �������� ����������
	������		MONEY		 NOT NULL, -- ���� � ��������� �� �����
	����������	MONEY		 NOT NULL, -- ���� � ��������� �� ������ ��������/������
	��������	MONEY		 NOT NULL -- ���� � ��������� �� ���� �� ������ ������� 
)




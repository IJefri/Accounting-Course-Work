DROP TABLE IF EXISTS ���������_�����


CREATE TABLE ���������_�����
-- ������� ��� ���������� ����, �� ������������ ���� ����������
-- �������� 27.04.2020 �������� �.�.
(
	PRIMARY KEY(id),
	id				INT										 NOT NULL, -- ���� �������������� ������� (primary key)
	���				NVARCHAR(15)							 NOT NULL, -- ���� � ������� ����������
	�������			NVARCHAR(25)							 NOT NULL, -- ���� � ��������� ����������
	��������		NVARCHAR(25)							 NOT NULL, -- ���� � ������� ��-������� ����������
	������			MONEY									 NOT NULL, -- ���� � ��������� �� �����
	����������		MONEY									 NOT NULL, -- ���� � ��������� �� ������ ��������/������
	��������		MONEY									 NOT NULL, -- ���� � ��������� �� ���� �� ������ �������
	�����_id		NVARCHAR(20) 							 NOT NULL REFERENCES ������(�����), -- ���� � ��������(������) ���������� (foreign key)
	���������_id	INT										 NOT NULL REFERENCES ����������(id)  -- ���� � ������������, �� ������������� � ���������� (foreign key)
)
DROP TABLE IF EXISTS ����������

CREATE TABLE ����������
-- ������� ��� ����� ��� ��������
-- �������� 26.04.2020 �������� �.�.
(
	PRIMARY KEY(id),
	id					INT											 NOT NULL, -- ���� �������������� ������� (primary key)
	���					NVARCHAR(15)								 NOT NULL, -- ���� � ������� ����������
	�������				NVARCHAR(25)								 NOT NULL, -- ���� � ��������� ����������
	��������			NVARCHAR(25)								 NOT NULL, -- ���� � ������� ��-������� ����������
	���������_id		NVARCHAR(20)								 NOT NULL REFERENCES ���������(���������), -- ���� � �������� ���������� (foreign key)
	�����_id			NVARCHAR(10)								 NOT NULL REFERENCES ������(�����), -- ���� � ������� ���������� (foreign key)
	����_��������		DATETIME									 NOT NULL, -- ���� � ����� ���������� ����������
	������_��_������	DATETIME									 NOT NULL, -- ���� � ����� ������� �� ������
	�������				CHAR(10)									 NOT NULL -- ���� � �������� ����������
)


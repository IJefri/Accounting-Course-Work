DROP TABLE IF EXISTS �������������


CREATE TABLE �������������
(
	PRIMARY KEY (id),
	id				INT				NOT NULL, -- ���� �������������� ������� (primary key)
	����_������		DATETIME		NOT NULL, -- ���� � ����� ������ ����������
	--��������� 
	--�����
	������			DATETIME		NOT NULL, -- ���� � ������ ������� ����������
	�����			DATETIME		NOT NULL, -- ���� � ������ ���� ����������
	�����_id		NVARCHAR(20)	NOT NULL references ������(�����) , -- ���� � ��������(������) ���������� (foreign key)
	���������_id	INT				NOT NULL references  ����������(id), -- ���� � ������������, �� ������������� � ���������� (foreign key)
)
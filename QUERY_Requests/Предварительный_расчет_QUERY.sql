-- ����� ��� ���������� "��������������� ������"
-- �������� 28.04.2020 �������� �.�.
SELECT staff.id,
	staff.�������,id.������,
	id.�����,
	dest.������ * DATEDIFF ( day , id.������ , id.����� ) AS ������,
	dest.���������� * DATEDIFF ( day , id.������ , id.����� ) AS ����������,
 	dest.�������� * DATEDIFF ( day , id.������ , id.����� ) AS ��������
	FROM ������������� AS id
	INNER JOIN ���������� AS staff 
	ON id.���������_id=staff.id
	INNER JOIN ������ AS dest 
	ON id.�����_id=dest.�����


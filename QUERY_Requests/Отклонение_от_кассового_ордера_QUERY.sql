-- ����� ��� ���������� "���������� �� ��������� ������"
-- �������� 28.04.2020 �������� �.�.
SELECT id.id,
	rep.�������,
	rep.���,
	rep.��������,
	(dest.������ + dest.���������� + dest.��������)*DATEDIFF(day, id.������, id.�����)  AS ���������_�����,

	rep.������ + rep.���������� + rep.�������� AS ���������,

	rep.������, rep.����������, rep.��������, DATEDIFF(day, id.������, id.�����) AS ����,

	((dest.������ + dest.���������� + dest.��������) - (rep.������ + rep.���������� + rep.��������)) * DATEDIFF(day, id.������, id.�����) AS ����������

	FROM ������������� AS id
	INNER JOIN ���������_����� AS rep 
	ON id.���������_id=rep.id
	INNER JOIN ������ AS dest 
	ON id.�����_id=dest.�����
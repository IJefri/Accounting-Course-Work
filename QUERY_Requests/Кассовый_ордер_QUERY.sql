-- ����� ��� ���������� "�������� �����"
-- �������� 28.04.2020 �������� �.�.


SELECT id.id,
		staff.�������,
		staff.���,
		staff.��������,
		dest.�����,
		(dest.������ + dest.���������� + dest.��������) * DATEDIFF(day, id.������, id.�����) AS �����,
		DATEDIFF(day, id.������, id.�����) AS  ����
		
		FROM ������������� AS id
		INNER JOIN ������ AS dest
		ON id.�����_id=dest.�����

		INNER JOIN ���������� AS staff 
		ON id.���������_id=staff.id

		


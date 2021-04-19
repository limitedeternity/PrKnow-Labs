predicates
  nondeterm pet(symbol, symbol, symbol)
  nondeterm pedigree(symbol)
  nondeterm owns(symbol, symbol)
  nondeterm no_owner(symbol)

clauses
  pet("�����", "�����", "����������").
  pet("�����", "�����", "������"). 
  pet("�����", "���", "�����"). 
  pet("������", "����", "���������"). 
  pet("������", "�����", "�����"). 
  pet("������", "����", "�����").

  % ��� ��������, �������� ������� ��� � ����, ����� �����������.
  pedigree(P):- owns("���", P); owns("����", P).
  
  % ��� ������� ����� ������� � ����������� ���������.
  owns("���", P):- pet(_, P, "������"); pet(_, P, "����������").
  
  % ���� ������� ����� �������� �������� �����, ������� �� �������� �������������� ����.
  owns("����", P):- pet("������", P, C), C <> "�����", not(owns("���", P)).
  
  % ���� ������� ���, ���� ���� �� ������� ����� � ���� ���� �� ����� �����������.
  owns("����", "���"):- not(owns("����", "�����")), not(pedigree("����")).
  
  no_owner(P):- pet(_, P, _), not(owns(_, P)).
 
goal
  no_owner(P).
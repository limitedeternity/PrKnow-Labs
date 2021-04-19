/* 
  ����� k ����� ������������, ��� ��������� - ������.
  ����� ����������� ��������� ������� � ���, ��� k ������������ p.
  ���� �� - ������, ����� ��� ����������� ������� (k ������������ p), � �������������, ������� � p.
  ���� �� - ����, ����� ��� ����������� ������ ���� ������; k �� ������������ p, �� �.� k �����,
  p ������ ���� ��������.
*/
   predicates
     p(symbol)
     nondeterm human(symbol,symbol)
     nondeterm statement(symbol,symbol)
     nondeterm check(symbol, symbol)
     
   clauses
     p("������").
     human("���������","������").
     human("���������","����").
     statement(K, "������"):- K = "������"; K = "����".

     check(H1, H2) :- human("���������", H1), p(H2), statement(H1, H2).
     
   goal
     check(H1, H2).

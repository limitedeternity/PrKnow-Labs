/* 
  ����� k ����� ������������, ��� ��������� - ������.
  ����� ����������� ��������� ������� � ���, ��� k ������������ p.
  ���� �� - ������, ����� ��� ����������� ������� (k ������������ p), � �������������, ������� � p.
  ���� �� - ����, ����� ��� ����������� ������ ���� ������; k �� ������������ p, �� �.� k �����,
  p ������ ���� ��������.
*/
predicates
  p
  nondeterm human(symbol,symbol)
  nondeterm part1(symbol)
  nondeterm part2(symbol)
  nondeterm rule(symbol)
  nondeterm check(symbol, symbol)
  nondeterm find(symbol, symbol)
 
clauses
  p.
  human("���������", "������").
  human("���������", "����").
  
  % k <=> p
  % p -> k /\ k -> p
  % (!p \/ k) /\ (!k \/ p)
  part1(K):- not(p); K = "������".
  part2(K):- K = "����"; p.
  rule(K):- part1(K), part2(K).
 
  check("������", "������"):- p, rule("������").
  check("������", "����"):- not(p), rule("������"). /* �� ��������� */
  check("����", "������"):- p, not(rule("����")).
  check("����", "����"):- not(p), not(rule("����")). /* �� ��������� */
 
  find(K, P):- human("���������", K), check(K, P).
 
goal
  find(K, P).

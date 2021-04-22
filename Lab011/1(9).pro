predicates
  nondeterm human(symbol, symbol)
  rule1(symbol, symbol)
  rule2(symbol, symbol, symbol)
  nondeterm check(symbol, symbol, symbol)
  
clauses
  human("���������","������").
  human("���������","����").
  
  rule1("������", "����").
  rule1("����", "������").
  rule2("������", P1, P3):- P1 <> P3.
  rule2("����", P1, P3):- P1 = P3.
  
  check(P1, P2, P3):- human("���������", P1), human("���������", P2), human("���������", P3),
              rule1(P1, P2), rule2(P2, P1, P3).

goal
  check(P1, P2, P3).
  
  
  
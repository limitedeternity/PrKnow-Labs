predicates
  nondeterm human(symbol, symbol)
  rule1(symbol, symbol)
  rule2(symbol, symbol, symbol)
  nondeterm check(symbol, symbol, symbol)
  
clauses
  human("Обитатель","Рыцарь").
  human("Обитатель","Лжец").
  
  rule1("Рыцарь", "Лжец").
  rule1("Лжец", "Рыцарь").
  rule2("Рыцарь", P1, P3):- P1 <> P3.
  rule2("Лжец", P1, P3):- P1 = P3.
  
  check(P1, P2, P3):- human("Обитатель", P1), human("Обитатель", P2), human("Обитатель", P3),
              rule1(P1, P2), rule2(P2, P1, P3).

goal
  check(P1, P2, P3).
  
  
  
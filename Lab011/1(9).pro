predicates
  nondeterm human(symbol, symbol)
  rule1(symbol, symbol)
  rule2(symbol, symbol, symbol)
  nondeterm check(symbol)
  
clauses
  human("Обитатель","Рыцарь").
  human("Обитатель","Лжец").
  
  rule1(/* IN: Тип P1 */ "Рыцарь", /* OUT: Тип P2 */ "Лжец").
  rule1(/* IN: Тип P1 */ "Лжец", /* OUT: Тип P2 */ "Рыцарь").
  
  rule2(/* IN: Тип P2 */ "Рыцарь", /* IN: Тип P1 */ "Лжец", /* OUT: Тип P3 */ "Рыцарь").
  rule2(/* IN: Тип P2 */ "Рыцарь", /* IN: Тип P1 */ "Рыцарь", /* OUT: Тип P3 */ "Лжец"). /* невозможно */
  rule2(/* IN: Тип P2 */ "Лжец", /* IN: Тип P1 */ "Лжец", /* OUT: Тип P3 */ "Лжец"). /* невозможно */
  rule2(/* IN: Тип P2 */ "Лжец", /* IN: Тип P1 */ "Рыцарь", /* OUT: Тип P3 */ "Рыцарь").
  
  check(P3):- human("Обитатель", P1), human("Обитатель", P2), human("Обитатель", P3),
              rule1(P1, P2), rule2(P2, P1, P3).

goal
  check(P3).
  
  
  
/* 
  Пусть k будет предложением, что обитатель - рыцарь.
  Тогда утверждение обитателя состоит в том, что k эквивалентно p.
  Если он - рыцарь, тогда его утверждение истинно (k эквивалентно p), и следовательно, истинно и p.
  Если он - лжец, тогда его утверждение должно быть ложным; k не эквивалентно p, но т.к k ложно,
  p должно быть истинным.
*/
   predicates
     p(symbol)
     nondeterm human(symbol,symbol)
     nondeterm statement(symbol,symbol)
     nondeterm check(symbol, symbol)
     
   clauses
     p("Истина").
     human("Обитатель","Рыцарь").
     human("Обитатель","Лжец").
     statement(K, "Истина"):- K = "Рыцарь"; K = "Лжец".

     check(H1, H2) :- human("Обитатель", H1), p(H2), statement(H1, H2).
     
   goal
     check(H1, H2).

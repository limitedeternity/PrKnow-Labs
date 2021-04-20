/* 
  Пусть k будет предложением, что обитатель - рыцарь.
  Тогда утверждение обитателя состоит в том, что k эквивалентно p.
  Если он - рыцарь, тогда его утверждение истинно (k эквивалентно p), и следовательно, истинно и p.
  Если он - лжец, тогда его утверждение должно быть ложным; k не эквивалентно p, но т.к k ложно,
  p должно быть истинным.
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
  human("Обитатель", "Рыцарь").
  human("Обитатель", "Лжец").
  
  % k <=> p
  % p -> k /\ k -> p
  % (!p \/ k) /\ (!k \/ p)
  part1(K):- not(p); K = "Рыцарь".
  part2(K):- K = "Лжец"; p.
  rule(K):- part1(K), part2(K).
 
  check("Рыцарь", "Истина"):- p, rule("Рыцарь").
  check("Рыцарь", "Ложь"):- not(p), rule("Рыцарь"). /* не сработает */
  check("Лжец", "Истина"):- p, not(rule("Лжец")).
  check("Лжец", "Ложь"):- not(p), not(rule("Лжец")). /* не сработает */
 
  find(K, P):- human("Обитатель", K), check(K, P).
 
goal
  find(K, P).

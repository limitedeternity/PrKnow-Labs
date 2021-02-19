predicates
  test(real, real, real)
  f(real, real, real, real, real)
  
clauses
  % -------------------------------------------
  test(A, B, C):- B * B - 4.0 * A * C < 0, write("Вычисление невозможно!"), nl, !.
  test(A, B, C):- f(A, B, C, X1, X2), write("X1: ", X1), nl, write("X2: ", X2), nl.

  f(A, B, C, X1, X2):- D = B * B - 4.0 * A * C, X1 = (-B + sqrt(D)) / (2 * A), X2 = (-B - sqrt(D)) / (2 * A).
  
goal
  write("Введите A: "), readreal(A),
  write("Введите B: "), readreal(B),
  write("Введите C: "), readreal(C),
  test(A,B,C), nl.
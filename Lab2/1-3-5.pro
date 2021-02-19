predicates
  test(real, real, real)
  f(real, real, real, real)
     
clauses 
  % -------------------------------------------
  test(_,_,Z):- Z=0.0, write("Вычисление невозможно!"), nl, !.
  test(X,Y,_):- Y=X/4.0, write("Вычисление невозможно!"), nl, !.
  test(X,Y,Z):- f(X,Y,Z,W), write("Значение выражения: ",W), nl.
       
  % ---------------------------------------
  f(X,Y,Z,W):- W = (-2.0 * Y - sin(X / Z) + 53.0) / (X / 4 - Y).
     
goal
  write("Введите X: "), readreal(A),
  write("Введите Y: "), readreal(B),
  write("Введите Z: "), readreal(C),
  test(A,B,C), nl.
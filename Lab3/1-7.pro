predicates
   nondeterm func(integer,real)
   nondeterm step(integer)
   
clauses
   func(X,Y):- X >= 3, Y = X * X + 2 * X.
   func(X,Y):- X < 3, Y = (X * X + 3 * X + 1) / (2 * X).
   
   step(X):- X >= 0, X <= 10, func(X, Y1), write("F(", X, ") = ", Y1), nl, nl, X1 = X + 1, step(X1).
   step(X):- X > 10.

goal
   step(1).
   

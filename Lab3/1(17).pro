predicates
  max(integer, integer, integer)
  maxDigit(integer, integer)
  
clauses
  max(A, B, A):- A >= B, !.
  max(_, B, B).

  maxDigit(X,X):- X < 10, !.
  maxDigit(X,N):- X1 = X div 10, X2 = X mod 10, maxDigit(X1, N1), max(X2, N1, N).

goal
  maxDigit(123456789, N).
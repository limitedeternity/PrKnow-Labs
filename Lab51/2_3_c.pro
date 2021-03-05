domains
  list = symbol*

predicates
  nondeterm st(symbol, list, integer)
  
clauses
  st(_, [], 0).
  st(X, [X|T], R):- st(X, T, Rn), R = 1 + Rn, !.
  st(X, [_|T], R):- st(X, T, R).

goal
  st("a", ["b", "a", "n", "a", "n", "a"], R).
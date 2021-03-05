domains
  list = symbol*

predicates
  nondeterm delete(symbol, list, list)

clauses
  delete(_, [], []).
  delete(X, [X|T], T).
  delete(X, [H|T], R):- delete(X, T, Rn), R = [H|Rn], !.
  
goal
  % delete("x", ["b","a","n","a","n","a"], R).
  delete("a", ["b","a","n","a","n","a"], R).
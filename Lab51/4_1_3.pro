domains
  list = symbol*
  
predicates
  search(list, symbol, list)
  nondeterm search_k(list, symbol, integer)
  
clauses
  search([H|T], H, T).
  search([_|T], V, R):- search(T, V, R).
  search([], _, _):- fail.
  
  search_k(_, _, 0).
  search_k([], _, N):- N > 0, fail.
  search_k([H|T], H, K):- K1 = K - 1, search_k(T, H, K1).
  search_k([_|T], V, K):- search_k(T, V, K).
 
goal
  search_k(["b","a","n","a","n","a"], "a", 3).
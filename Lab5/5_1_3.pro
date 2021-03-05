domains
  list = integer*
  list_of_lists = list*

predicates
  nondeterm last_Y(list_of_lists, list)
  head_Y(list_of_lists, list)
  head(list, integer)
  search(list, integer)
  
clauses
  last_Y([_|T], R):- last_Y(T, R).
  last_Y([H|[]], H).
  
  head_Y([H|_], H).
  head([H|_], H).
 
  search([H|T], V):- H = V, !; search(T, V).
  search([], _):- fail.
  
goal
  % L = [[1,2,3], [3,4,5], [6,7,8]],
  L = [[1,2,3], [3,4,5], [6,7,1]],
  head_Y(L, Y1), head(Y1, E),
  last_Y(L, Yn), search(Yn, E).
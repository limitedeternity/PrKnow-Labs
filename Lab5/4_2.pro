domains
  list = integer*
  
predicates
  read_list(list)
  nondeterm last(list, integer)
  head(list, integer)
  search(list, integer)
  
clauses
  read_list([H|T]):- readint(H), read_list(T), !.
  read_list([]).

  last([_|T], R):- last(T, R).
  last([H|[]], H).
  
  head([H|_], H).
  
  search([H|T], V):- H = V, !; search(T, V).
  search([], _):- fail.
  
goal
  read_list(L),
  head(L, FD), last(L, BK), S = FD + BK,
  search(L, S).
  
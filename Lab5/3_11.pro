domains
  list = integer* 

predicates
  nondeterm append_pos(list, integer, integer, list) 

clauses
  append_pos([], _, E, [E]).
  append_pos(L, 0, E, [E|L]).
  append_pos([H|T], 1, E, [H|[E|T]]).
  append_pos([H|T], N, E, R):- N1 = N - 1, append_pos(T, N1, E, R1), R = [H|R1], !.

goal
  append_pos([1, 4, 8], 3, 8, R).

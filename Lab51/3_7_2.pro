domains
  list = symbol*

predicates
  read_list(list)
  nondeterm remove_odd_pos(list, list)

clauses
  read_list([H|T]):- readln(H), read_list(T), !.
  read_list([]).
  
  remove_odd_pos([], []).
  remove_odd_pos([_|[]], []).
  remove_odd_pos([_|[T]], [T]).
  remove_odd_pos([_|[TH|TT]], R):- remove_odd_pos(TT, Rn), R = [TH|Rn], !.

goal
  %remove_odd_pos(["1","2","3","4","5","6","7","8"], R).
  %remove_odd_pos(["1","2","3","4","5","6","7"], R).
  read_list(L), remove_odd_pos(L, R).

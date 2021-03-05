domains
  list = symbol*
  
predicates
  read_list(list)
  nondeterm remove_each3(list, list)
  
clauses
  read_list([H|T]):- readln(H), read_list(T), !.
  read_list([]).
  
  remove_each3([H|[E|[_|T]]], R):- remove_each3(T, RT), R = [H|[E|RT]].
  remove_each3([H|[E|[_]]], R):- R = [H|[E]].
  remove_each3([H|[E]], R):- R = [H|[E]].
  remove_each3([H|[]], R):- R = [H|[]].
  
goal
  %remove_each3(["0","1","2","3","4","5","6","7","8"], R1),
  %remove_each3(["0","1","2","3","4","5","6","7"], R2),
  %remove_each3(["0","1","2","3","4","5","6"], R3),
  read_list(L), remove_each3(L, R).

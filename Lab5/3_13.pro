domains
  list = integer*
  
predicates
  nondeterm del_last2(list, list)
  
clauses
  del_last2([], []).
  del_last2([_|[]], []).
  del_last2([_|[_|[]]], []).
  del_last2([H|T], R):- del_last2(T, Rn), R = [H|Rn], !.
  
goal
  del_last2([1, 2, 3, 4], R).
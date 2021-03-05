domains
  list = symbol*
  
predicates
  nondeterm swap_odd_pos(list, list)
  
clauses
  swap_odd_pos([], []).
  swap_odd_pos([H|[]], [H]).
  swap_odd_pos([H|[HT|[]]], [HT|[H]]).
  swap_odd_pos([H|[HT|TT]], R):- swap_odd_pos(TT, Rn), R = [HT|[H|Rn]], !.
  
goal
  swap_odd_pos(["1", "2", "3", "4", "5"], R).
predicates
  nondeterm count_distance(string, string, integer)
  
clauses
  count_distance("", "", 0):- !.
  count_distance(S, S, 0):- !.
  count_distance(S1, S2, R):- frontchar(S1, H, T1), frontchar(S2, H, T2), !, count_distance(T1, T2, R).
  count_distance(S1, S2, R):- frontchar(S1, _, T1), frontchar(S2, _, T2), !, count_distance(T1, T2, RR), R = RR + 1.
  
goal
  count_distance("тест", "тест", R1),
  count_distance("тест", "тост", R2).
predicates
  search_ki(string)

clauses
  search_ki(S):- searchstring(S, "��", PI), PI1 = PI - 1, PI1 mod 2 = 0.
  
goal
  search_ki("��").
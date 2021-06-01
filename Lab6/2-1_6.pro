predicates
  nondeterm search_ki(string)

clauses
  search_ki(S):- searchstring(S, "ки", PI), PI mod 2 <> 0, PI1 = PI + 1, frontstr(PI1, S, _, TS), search_ki(TS).
  search_ki(S):- searchstring(S, "ки", PI), PI mod 2 = 0.
  search_ki(_):- fail.
  
goal
  search_ki("хаски").
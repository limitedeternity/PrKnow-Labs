predicates
  nondeterm rm_after_a(string, string)

clauses
  rm_after_a(S, S):- str_len(S, 0); 
                     str_len(S, 1); 
                     not(searchchar(S, 'а', _));
                     searchchar(S, 'а', PI), str_len(S, L), PI = L.

  rm_after_a(S, R):- searchchar(S, 'а', PI), PI mod 2 = 0, !, PI1 = PI + 1, frontstr(PI1, S, S1, S2), concat("_", S2, S2N),
                     rm_after_a(S2N, R2N), frontchar(R2N, _, R2), str_len(S1, L), L1 = L - 1, frontstr(L1, S1, R1, _), concat(R1, R2, R), !.
                     
  rm_after_a(S, R):- frontstr(2, S, S1, S2), rm_after_a(S2, R2), concat(S1, R2, R), !.
  
goal
  rm_after_a("", ""),
  rm_after_a("а", "а"),
  rm_after_a("ам", "ам"),
  rm_after_a("там", "та"),
  rm_after_a("татары", "тааы"),
  rm_after_a("радар", "раа"),
  rm_after_a("посуда", "посуда"),
  rm_after_a("ама", "ама"),
  rm_after_a("адмаркет", "адмакет").
  
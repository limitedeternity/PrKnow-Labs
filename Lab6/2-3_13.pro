predicates
  nondeterm elim_char(char, string, string)
  nondeterm rm_chars(string, string, string)

clauses
  rm_chars("", S, S).
  rm_chars(D, S, R):- frontchar(D, DChr, DRem), elim_char(DChr, S, SElim), rm_chars(DRem, SElim, R).
  
  elim_char(_, "", "").
  elim_char(C, S, R):- searchchar(S, C, Pos), !, frontstr(Pos, S, S1, S2),
                       str_len(S1, N), N1 = N - 1, frontstr(N1, S1, S1C, _),
                       elim_char(C, S2, RR), concat(S1C, RR, R).
  elim_char(_, S, S).

goal
  rm_chars("Çגûסי", "Çהנאגסעגףיעו", R).
predicates
  ins_n(string, string)

clauses
  ins_n(S, R):- searchstring(S, "��", PI), !, frontstr(PI, S, S1, S2), concat(S1, "�", TT), concat(TT, S2, RN), ins_n(RN, R).
  ins_n(S, S).
  
goal
  ins_n("������", R).
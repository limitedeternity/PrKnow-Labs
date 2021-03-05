domains
  list = symbol*
  
predicates
  nondeterm append(list, list, list)
  nondeterm reverse(list, list)
  nondeterm startswith(list, list)
  nondeterm endswith(list, list)
  
clauses
  append([], L2, L2).
  append(L1, [], L1).
  append([H|T1], L2, [H|T3]):- append(T1, L2, T3).

  startswith([], _).
  startswith([_], []):- fail.
  startswith([Ha|Ta], [Hb|Tb]):- Ha = Hb, startswith(Ta, Tb); fail.
  
  reverse([], []).
  reverse([H], [H]).
  reverse([H|[TH|[]]], [TH|[H]]).
  reverse([H|T], R):- reverse(T, Rn), append(Rn, [H], R), !.
  
  endswith(A, B):- reverse(A, Ra), reverse(B, Rb), startswith(Ra, Rb).

goal
  endswith(["n","k"], ["b","a","n","k"]).
  
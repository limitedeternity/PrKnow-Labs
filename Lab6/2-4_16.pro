predicates
  nondeterm runner(string)
  nondeterm pi_cnt(string)
  
clauses
  runner(S):- searchchar(S, ' ', P), !,
              frontstr(P, S, S1, S2),
              str_len(S1, N), N1 = N - 1,
              write(N1, "."), pi_cnt(S2).

  pi_cnt(""):- nl.
  pi_cnt(S):- searchchar(S, ' ', P), !,
              frontstr(P, S, S1, S2),
              str_len(S1, N), N1 = N - 1,
              write(N1), pi_cnt(S2).
  pi_cnt(S):- str_len(S, N), write(N), pi_cnt("").

goal
  runner("это я знаю и помню прекрасно Пи многие знаки мне лишни напрасны"),
  runner("кто и шутя и скоро пожелаетъ Пи узнать число ужъ знаетъ").
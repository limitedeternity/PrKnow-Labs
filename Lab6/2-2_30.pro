predicates
  nondeterm runner(char, string, integer)
  nondeterm count_words_startswith(char, string, integer)

clauses
  runner(SY, S, C):- char_int(SY, CC), CC >= 97, CC <= 122, !, 
                     str_char(SSY, SY), upper_lower(UPSSY, SSY),
                     str_char(UPSSY, UPSY),
                     count_words_startswith(SY, S, C1), count_words_startswith(UPSY, S, C2),
                     C = C1 + C2.

  runner(SY, S, C):- char_int(SY, CC), CC >= 65, CC <= 90, !,
                     str_char(SSY, SY), upper_lower(SSY, LOSSY),
                     str_char(LOSSY, LOSY),
                     count_words_startswith(SY, S, C1), count_words_startswith(LOSY, S, C2),
                     C = C1 + C2.

  runner(SY, S, C):- count_words_startswith(SY, S, C).
  
  count_words_startswith(SY, S, C):- searchchar(S, ' ', P), !,
                                     frontstr(P, S, S1, S2),
                                     str_len(S1, N), N1 = N - 1, frontstr(N1, S1, S1C, _),
                                     count_words_startswith(SY, S1C, C1), count_words_startswith(SY, S2, C2),
                                     C = C1 + C2.
  count_words_startswith(SY, S, 1):- searchchar(S, SY, P), P = 1, !.
  count_words_startswith(_, _, 0).

goal
  runner('R', "Rabbit Runs through the rabbithole", P),
  runner('r', "Rabbit Runs through the rabbithole", P). 
  
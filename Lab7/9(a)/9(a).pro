domains
  file = fd
  
predicates
  nondeterm flow(integer)
  nondeterm count_ab(string, integer)
  nondeterm file_count(string, integer)
  
clauses
  count_ab(Ln, R):- searchstring(Ln, "ab", P), !, P1 = P + 1, frontstr(P1, Ln, _, S2), count_ab(S2, Rr), R = Rr + 1.
  count_ab(_, 0).
  
  flow(R):- not(eof(fd)), !, readln(Ln), count_ab(Ln, Rn), flow(Rr), R = Rn + Rr.
  flow(0).
  
  file_count(Name, R):- existfile(Name), !, openread(fd, Name), readdevice(fd), flow(R), closefile(fd).
  file_count(_, _):- fail.
 
goal
  file_count("..\\X.txt", R).
  
   
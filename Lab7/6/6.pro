domains
  file = fd
  
predicates
  nondeterm flow(integer)
  nondeterm repfile(FILE)
  nondeterm build_n(string, integer)
  
clauses
  repfile(_).
  repfile(F):- not(eof(F)), repfile(F).
  
  flow(R):- repfile(fd), readln(Ln), 
            substring(Ln, 1, 1, H1),
            substring(Ln, 2, 1, H2),
            concat(H1, H2, N), !,
            str_int(N, R).
  
  build_n(Name, R):- existfile(Name), !,
                     openread(fd, Name), readdevice(fd),
                     flow(R), closefile(fd).
  build_n(_, _):- fail.
  
goal
  build_n("..\\X.txt", R).
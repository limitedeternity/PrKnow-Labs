domains
  file = f ; g
  
predicates
  flow
  nondeterm repfile(FILE)
  nondeterm capitalize(string, string)
  
clauses
  repfile(_).
  repfile(F):- not(eof(F)), repfile(F).
  
  flow:- repfile(f), readln(Ln), upper_lower(LnInUpper, Ln), write(LnInUpper), nl, fail.
  flow.
  
  capitalize(Name1, Name2):- existfile(Name1), !,
                             openread(f, Name1), openwrite(g, Name2),
                             readdevice(f), writedevice(g),
  			     flow,
  			     closefile(f), closefile(g).
  capitalize(_, _):- fail.
  
goal
  capitalize("..\\X.txt", "..\\Y.txt").
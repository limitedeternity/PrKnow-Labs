domains
  file = df1 ; df2 ; h

predicates
  flow1
  flow2
  flow3
  nondeterm swap(string, string)
  nondeterm repfile(FILE)
  
clauses
  repfile(_).
  repfile(F):- not(eof(F)), repfile(F).

  flow1:- repfile(df1), readln(Ln), write(Ln), nl, fail.
  flow1.
  
  flow2:- repfile(df2), readln(Ln), write(Ln), nl, fail.
  flow2.

  flow3:- repfile(h), readln(Ln), write(Ln), nl, fail.
  flow3.

  swap(Name1, Name2):- existfile(Name1), existfile(Name2), !,
                       openread(df1, Name1), openwrite(h, "..\\H.txt"),
                       readdevice(df1), writedevice(h),
                       flow1,
                       closefile(df1), closefile(h), !,
                       openread(df2, Name2), openwrite(df1, Name1),
                       readdevice(df2), writedevice(df1),
                       flow2,
                       closefile(df2), closefile(df1), !,
                       openread(h, "..\\H.txt"), openwrite(df2, Name2),
                       readdevice(h), writedevice(df2),
                       flow3,
                       closefile(h), closefile(df2), !,
                       deletefile("..\\H.txt").
  swap(_, _):- fail.
                       
goal
  swap("..\\X.txt", "..\\Y.txt").
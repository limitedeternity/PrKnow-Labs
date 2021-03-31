domains
  file = fd
  list = symbol*

predicates
  nondeterm flow(integer)
  nondeterm get_nth_line(FILE, integer, string)
  nondeterm make_list(string, list)
  nondeterm list_length(list, integer)
  nondeterm print_data(integer, list)
  nondeterm print_row(string, integer)
  
clauses
  get_nth_line(F, I, R):- not(eof(F)), I > 1, !, readln(_), I1 = I - 1, get_nth_line(F, I1, R).
  get_nth_line(F, I, R):- not(eof(F)), I = 1, !, readln(R).
  get_nth_line(_, _, _):- fail.
  
  make_list(S, [H|T]):- searchchar(S, ';', P), frontstr(P, S, S1, S2),
                        str_len(S1, N), N1 = N - 1, frontstr(N1, S1, S1C, _),
                        H = S1C, !, make_list(S2, T).
  make_list(S, [S]).
  make_list("", []).

  list_length([], 0).
  list_length([_], 1).
  list_length([_|T], R):- list_length(T, Rn), R = Rn + 1.

  print_data(0, L):- list_length(L, 9), print_data(1, L); fail.
  print_data(1, [H|T]):- write("Имя             : ", H), nl, print_data(2, T).
  print_data(2, [H|T]):- write("Фамилия         : ", H), nl, print_data(3, T).
  print_data(3, [H|T]):- write("Название команды: ", H), nl, print_data(4, T).
  print_data(4, [H|T]):- write("Номер           : ", H), nl, print_data(5, T).
  print_data(5, [H|T]):- write("Позиция         : ", H), nl, print_data(6, T).
  print_data(6, [H|T]):- write("Рост            : ", H), nl, print_data(7, T).
  print_data(7, [H|T]):- write("Вес             : ", H), nl, print_data(8, T).
  print_data(8, [H|T]):- write("Опыт игры       : ", H), nl, print_data(9, T).
  print_data(9, [H]):-   write("Образование     : ", H), nl.

  flow(I):- get_nth_line(fd, I, Ln), make_list(Ln, Lst), print_data(0, Lst).
  
  print_row(DBName, Row):- existfile(DBName), !, openread(fd, DBName), readdevice(fd), flow(Row), closefile(fd).
  print_row(_, _):- fail.

goal
  print_row("..\\db.txt", 2).
  
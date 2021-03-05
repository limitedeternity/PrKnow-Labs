domains
   reallist=real*
predicates
   real_average(reallist,real)
   list_length(reallist,real,real)
   list_sum(reallist,real,real)
   nondeterm get_list(reallist)
clauses
   real_average(List,Average):-
                          list_length(List,0,Length),
                          list_sum(List,0,Sum),
                          Average=Sum/Length.
   list_length([],L,L).
   list_length([_|T],Temp_length,Length):-
                          New_temp=Temp_length+1,
                          list_length(T,New_temp,Length).
   list_sum([],S,S).
   list_sum([Num|T],Temp_sum,Sum):-
                          New_temp=Num+Temp_sum,
                          list_sum(T,New_temp,Sum).
   get_list([H|T]):- write("¬ведите вещественное число: "),
                     readreal(H),get_list(T).
   get_list([]).

goal
   write("¬водите список вещественных чисел ",
         "(нецифровой символ дл€ остановки):\n"),
   get_list(List),nl,real_average(List,Average),
   write("¬веденный список: ",List),nl,
   writef("—реднее значение: %",Average),nl.
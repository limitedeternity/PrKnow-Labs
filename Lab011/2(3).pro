domains
  list = symbol*

predicates
  nondeterm kitten(symbol)
  nondeterm boy(symbol)
  nondeterm color(symbol)
  rule1(symbol, symbol, symbol)
  rule2(symbol, symbol, symbol)
  rule3(symbol, symbol, symbol)
  rule4(symbol, symbol, symbol)
  rule5(symbol, symbol, symbol)
  nondeterm solution(symbol, symbol, symbol, integer)
  member(list, symbol)
  unique(list)
  nondeterm find

clauses
  kitten("Дружок").
  kitten("Елисей").
  kitten("Фантик").
  kitten("Мурлыка").
  
  boy("Миша").
  boy("Максим").
  boy("Леня").
  boy("Дима").
  
  color("Рыжий").
  color("Серый").
  color("Черный").
  color("Белый").
  
  rule1("Фантик", _ , "Рыжий") :- !, fail. 
  rule1("Мурлыка", _, "Серый") :- !, fail. 
  rule1(_,_,_).  
  
  rule2("Дружок", _, "Белый") :- !, fail.
  rule2("Елисей", _, "Серый") :- !, fail. 
  rule2(_,_,_). 
 
  rule3(_, "Миша", "Черный") :- !. 
  rule3(_, "Миша", _) :- !, fail. 
  rule3(_, _, "Черный") :- !, fail. 
  rule3("Мурлыка", "Максим", _) :- !. 
  rule3("Мурлыка", _, _) :- !, fail. 
  rule3(_, "Максим", _) :- !, fail. 
  rule3(_,_,_).  
  
  rule4("Елисей", "Леня", _) :- !. 
  rule4("Елисей", _, _) :- !, fail. 
  rule4(_, "Леня", _) :- !, fail. 
  rule4(_, "Дима", "Белый") :- !. 
  rule4(_, "Дима", _) :- !, fail. 
  rule4(_, _, "Белый") :- !, fail. 
  rule4(_,_,_).
  
  rule5("Фантик", "Дима", _) :- !, fail. 
  rule5("Дружок", _, "Серый") :- !, fail. 
  rule5(_,_,_).
  
  solution(K,B,C,1) :- not(rule1(K,B,C)), rule2(K,B,C), rule3(K,B,C), rule4(K,B,C), rule5(K,B,C).
  solution(K,B,C,2) :- rule1(K,B,C), not(rule2(K,B,C)), rule3(K,B,C), rule4(K,B,C), rule5(K,B,C).
  solution(K,B,C,3) :- rule1(K,B,C), rule2(K,B,C), not(rule3(K,B,C)), rule4(K,B,C), rule5(K,B,C).
  solution(K,B,C,4) :- rule1(K,B,C), rule2(K,B,C), rule3(K,B,C), not(rule4(K,B,C)), rule5(K,B,C).
  solution(K,B,C,5) :- rule1(K,B,C), rule2(K,B,C), rule3(K,B,C), rule4(K,B,C), not(rule5(K,B,C)).
  
  member([H|_], H) :- !.
  member([_|T], V) :- member(T, V).
  member([], _) :- fail.
  
  unique([]). 
  unique([H|T]) :- not(member(T, H)), unique(T).
  
  find :-
  	kitten(K1), boy(B1), color(C1),     
  	kitten(K2), boy(B2), color(C2),     
  	kitten(K3), boy(B3), color(C3),     
  	kitten(K4), boy(B4), color(C4),     
  	unique([K1,K2,K3,K4]),     
  	unique([B1,B2,B3,B4]),     
  	unique([C1,C2,C3,C4]),     
  	solution(K1,B1,C1,N),     
  	solution(K2,B2,C2,N),     
  	solution(K3,B3,C3,N),     
  	solution(K4,B4,C4,N),
  	write("Решение (", N, " правило неверно)."), nl,
   	write("Котёнок - ", K1, ", мальчик - ", B1, ", цвет - ", C1, "."), nl,
   	write("Котёнок - ", K2, ", мальчик - ", B2, ", цвет - ", C2, "."), nl,
   	write("Котёнок - ", K3, ", мальчик - ", B3, ", цвет - ", C3, "."), nl,
   	write("Котёнок - ", K4, ", мальчик - ", B4, ", цвет - ", C4, "."), nl.
 
 goal
   find.
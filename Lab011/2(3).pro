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
  kitten("������").
  kitten("������").
  kitten("������").
  kitten("�������").
  
  boy("����").
  boy("������").
  boy("����").
  boy("����").
  
  color("�����").
  color("�����").
  color("������").
  color("�����").
  
  rule1("������", _ , "�����") :- !, fail. 
  rule1("�������", _, "�����") :- !, fail. 
  rule1(_,_,_).  
  
  rule2("������", _, "�����") :- !, fail.
  rule2("������", _, "�����") :- !, fail. 
  rule2(_,_,_). 
 
  rule3(_, "����", "������") :- !. 
  rule3(_, "����", _) :- !, fail. 
  rule3(_, _, "������") :- !, fail. 
  rule3("�������", "������", _) :- !. 
  rule3("�������", _, _) :- !, fail. 
  rule3(_, "������", _) :- !, fail. 
  rule3(_,_,_).  
  
  rule4("������", "����", _) :- !. 
  rule4("������", _, _) :- !, fail. 
  rule4(_, "����", _) :- !, fail. 
  rule4(_, "����", "�����") :- !. 
  rule4(_, "����", _) :- !, fail. 
  rule4(_, _, "�����") :- !, fail. 
  rule4(_,_,_).
  
  rule5("������", "����", _) :- !, fail. 
  rule5("������", _, "�����") :- !, fail. 
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
  	write("������� (", N, " ������� �������)."), nl,
   	write("������ - ", K1, ", ������� - ", B1, ", ���� - ", C1, "."), nl,
   	write("������ - ", K2, ", ������� - ", B2, ", ���� - ", C2, "."), nl,
   	write("������ - ", K3, ", ������� - ", B3, ", ���� - ", C3, "."), nl,
   	write("������ - ", K4, ", ������� - ", B4, ", ���� - ", C4, "."), nl.
 
 goal
   find.
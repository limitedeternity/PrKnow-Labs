domains
   list=integer*
predicates
   sum(list,list,integer)
clauses
   sum([],_,0).
   sum(_,[],0).
   sum([M|Tail],[M|_],S):- sum(Tail,[M|_],S1),S=S1+1.
   sum([_|Tail],List,S):- sum(Tail,List,S).
goal
   sum([1,3,1,1],[1,2,3],T),write("Результат: ",T).
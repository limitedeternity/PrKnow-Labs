domains
   list=integer*
predicates
   times1(list,integer)
clauses
   times1([],1).
   times1([X|Y],Z):- times1(Y,Z1),Z=Z1*X.
goal
   times1([1,2,3], R). % произведение ряда
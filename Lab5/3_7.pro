domains
  list = integer*

predicates
  nondeterm split(integer, list, list, list)
 
clauses
  split(_, [], [], []).
  split(M, [H|T1], [H|T2], R):- H <= M, split(M, T1, T2, R).
  split(M, [H|T1], L2, [H|Tr]):- H > M, split(M, T1, L2, Tr).
  
goal
  split(3, [1,2,3,4,5], L1, L2).
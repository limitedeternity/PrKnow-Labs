constants
   pi = 3.14159265358979

predicates    
   nondeterm func_V(real,real)

clauses
   func_V(P,S):-
     P2 = 2/pi, 
     Root = sqrt(0.5 + 0.5 * P),
     K = Root * S,
     write(K, " <=> ", P2),nl,nl,
     not(abs(P2 - K) < 0.0000000001),
     func_V(Root, K);
     nl.

goal
   func_V(0.0, 1.0).

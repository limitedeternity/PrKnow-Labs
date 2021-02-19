predicates
   nondeterm mul(integer,integer)
   nondeterm pow(integer,integer,integer)
   nondeterm a_i(integer,integer)
   
clauses
   pow(_,0,1).        
   pow(A,E,R):- E1 = E - 1, pow(A,E1,R1), R = A * R1.

   a_i(0,1).
   a_i(1,1).
   a_i(I, R):- I1 = I - 1, I2 = I - 2, pow(2, I1, P), a_i(I2, R2), a_i(I1, R1), R = R2 + R1 * P. 
   
   mul(0, 1).
   mul(1, 1).
   mul(N, R):- a_i(N, RN), N1 = N - 1, mul(N1, RL), R = RN * RL.
            
goal
   write("Введите N: "), readint(N),
   mul(N, R),
   write("Результат: ", R), nl.

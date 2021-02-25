predicates
    nondeterm v_i(integer, integer)
    
clauses
    v_i(1, 1).
    v_i(2, 2).
    v_i(I, R):- I > 2, V1 = I - 1, V2 = I - 2, v_i(V1, R1), v_i(V2, R2), R = 2 * R1 + 3 * R2.  
           
goal
    write("Введите I: "), readint(I),
    A = I mod 3, A = 0, v_i(I, R),
    write("Результат: ", R), nl.          

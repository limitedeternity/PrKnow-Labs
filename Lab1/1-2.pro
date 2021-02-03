domains
   child = symbol
   age   = integer

predicates
   nondeterm pupil(child,age)

clauses
   pupil(peter,9).
   pupil(paul,10).
   pupil(chris,9).
   pupil(susan,9).

goal
   pupil(Person1,9),pupil(Person2,9),Person1<>Person2.
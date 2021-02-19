domains
  bool=integer

predicates
  nondeterm not_(bool, bool)
  nondeterm and_(bool, bool, bool)
  nondeterm or_(bool, bool, bool)
  
  nondeterm target(bool, bool, bool, bool)
  nondeterm target1(bool, bool, bool, bool)
  nondeterm target2(bool, bool, bool, bool)
  nondeterm target3(bool, bool, bool, bool)
  nondeterm target4(bool, bool, bool, bool)
  
  nondeterm fails1
  nondeterm fails2
  nondeterm fails3
  nondeterm fails4
  nondeterm detector(integer)
  
clauses
  not_(1, 0).
  not_(0, 1).
  
  and_(0,0,0).
  and_(0,1,0).
  and_(1,0,0).
  and_(1,1,1).

  or_(0,0,0).
  or_(0,1,1).
  or_(1,0,1).
  or_(1,1,1).
  
  target(1, 0, 0, 1).
  target(0, 0, 0, 1).
  target(1, 1, 1, 0).
  
  target1(A, B, C, R):- not_(A, P), not_(B, Q), not_(C, L), and_(P, Q, D), and_(D, L, R).
  target2(A, B, C, R):- and_(A, B, P), and_(P, C, R).
  target3(A, B, C, R):- or_(A, B, P), or_(P, C, R).
  target4(A, B, C, R):- not_(A, P), not_(B, Q), not_(C, L), or_(P, Q, D), or_(D, L, R).
  
  fails1:- target(A, B, C, R1), target1(A, B, C, R2), R1 <> R2.
  fails2:- target(A, B, C, R1), target2(A, B, C, R2), R1 <> R2.
  fails3:- target(A, B, C, R1), target3(A, B, C, R2), R1 <> R2.
  fails4:- target(A, B, C, R1), target4(A, B, C, R2), R1 <> R2.
  
  detector(R):- not(fails1), R = 1; not(fails2), R = 2; not(fails3), R = 3; not(fails4), R = 4.

goal
  detector(R).
  
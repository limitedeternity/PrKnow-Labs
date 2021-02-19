domains
  bool=integer

predicates
  nondeterm not_(bool, bool)
  nondeterm and_(bool, bool, bool)
  nondeterm or_(bool, bool, bool)
  nondeterm eq_(bool, bool, bool)
  nondeterm target(bool, bool, bool)
 
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
  
  eq_(A, B, R):- and_(A, B, D), not_(A, P), not_(B, Q), and_(P, Q, L), or_(D, L, R).
  target(A, B, V):- 
        or_(A, B, Z), % A + B = Z
  	not_(A, P), not_(B, Q), and_(P, Q, C), % !A * !B = C 
  	or_(Z, C, L), % Z + C = L
  	%-------------
  	not_(Z, K), not_(C, T), or_(K, T, D), % !C + !Z = D
  	%-------------
  	and_(L, D, R), % L * D = R
  	%-------------
  	or_(A, P, M), % A + !A = M
  	% ------------
  	eq_(R, M, V).

goal
  % target(X, Y, 0).
  target(X, Y, 1).
  
  
  

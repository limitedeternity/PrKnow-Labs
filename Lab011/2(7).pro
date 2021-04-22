domains
  list = symbol*

predicates
  nondeterm permute(list, list)
  nondeterm select(symbol, list, list)
  nondeterm mapToName(list, list)
  nondeterm name(symbol, symbol)
  nondeterm rule1(list)
  nondeterm rule2(list)
  nondeterm rule3(list)
  nondeterm find(list)

clauses
  % select(X, Xs, Ys) is true if X is an element of the list Xs and Ys is the list Xs with one occurrence of X removed. 
  select(X, [X|R], R).  
  select(X, [F|R], [F|S]):- select(X, R, S).

  permute([X|Y], Z):- permute(Y, W), select(X, Z, W).
  permute([], []).
 
  mapToName([H|T], R):- mapToName(T, W), name(N, H), R = [N|W].
  mapToName([], []).

  name("Томас", "Джеймс Томас").
  name("Томас", "Томас Герберт").
  name("Герберт", "Томас Герберт").
  name("Герберт", "Герберт Френсис").
  name("Френсис", "Герберт Френсис").
  name("Френсис", "Френсис Джеймс").
  name("Джеймс", "Френсис Джеймс").
  name("Джеймс", "Джеймс Томас").
  
  % Герберт намного сильнее Томаса
  rule1(["Томас", "Герберт", _, _]).
  rule1(["Томас", _, "Герберт", _]).
  rule1(["Томас", _, _, "Герберт"]).
  rule1([_, "Томас", "Герберт", _]).
  rule1([_, "Томас", _, "Герберт"]).
  rule1([_, _, "Томас", "Герберт"]).
  rule1([_, _, _, _]):- fail.
  
  % Френсис сильнее и Томаса и Герберта
  rule2(["Томас", "Герберт", "Френсис", _]).
  rule2(["Герберт", "Томас", "Френсис", _]).
  rule2(["Томас", "Герберт", _, "Френсис"]).
  rule2(["Герберт", "Томас", _, "Френсис"]).
  rule2(["Томас", _, "Герберт", "Френсис"]).
  rule2(["Герберт", _, "Томас", "Френсис"]).
  rule2([_, "Томас", "Герберт", "Френсис"]).
  rule2([_, "Герберт", "Томас", "Френсис"]).
  rule2([_, _, _, _]):- fail.
  
  % Герберт слабее Джеймса, но сильнее Френсиса.
  rule3(["Френсис", "Герберт", "Джеймс", _]).
  rule3(["Френсис", "Герберт", _, "Джеймс"]).
  rule3(["Френсис", _, "Герберт", "Джеймс"]).
  rule3([_, "Френсис", "Герберт", "Джеймс"]).
  rule3([_, _, _, _]):- fail.
  
  find(R):-
  	permute(["Томас Герберт", "Герберт Френсис", "Френсис Джеймс", "Джеймс Томас"], L),
  	mapToName(L, ML1), rule1(ML1), 
  	mapToName(L, ML2), rule2(ML2),
  	mapToName(L, ML3), rule3(ML3), !,
  	R = L.

goal
  find(R).

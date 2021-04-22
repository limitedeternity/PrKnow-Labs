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

  name("�����", "������ �����").
  name("�����", "����� �������").
  name("�������", "����� �������").
  name("�������", "������� �������").
  name("�������", "������� �������").
  name("�������", "������� ������").
  name("������", "������� ������").
  name("������", "������ �����").
  
  % ������� ������� ������� ������
  rule1(["�����", "�������", _, _]).
  rule1(["�����", _, "�������", _]).
  rule1(["�����", _, _, "�������"]).
  rule1([_, "�����", "�������", _]).
  rule1([_, "�����", _, "�������"]).
  rule1([_, _, "�����", "�������"]).
  rule1([_, _, _, _]):- fail.
  
  % ������� ������� � ������ � ��������
  rule2(["�����", "�������", "�������", _]).
  rule2(["�������", "�����", "�������", _]).
  rule2(["�����", "�������", _, "�������"]).
  rule2(["�������", "�����", _, "�������"]).
  rule2(["�����", _, "�������", "�������"]).
  rule2(["�������", _, "�����", "�������"]).
  rule2([_, "�����", "�������", "�������"]).
  rule2([_, "�������", "�����", "�������"]).
  rule2([_, _, _, _]):- fail.
  
  % ������� ������ �������, �� ������� ��������.
  rule3(["�������", "�������", "������", _]).
  rule3(["�������", "�������", _, "������"]).
  rule3(["�������", _, "�������", "������"]).
  rule3([_, "�������", "�������", "������"]).
  rule3([_, _, _, _]):- fail.
  
  find(R):-
  	permute(["����� �������", "������� �������", "������� ������", "������ �����"], L),
  	mapToName(L, ML1), rule1(ML1), 
  	mapToName(L, ML2), rule2(ML2),
  	mapToName(L, ML3), rule3(ML3), !,
  	R = L.

goal
  find(R).

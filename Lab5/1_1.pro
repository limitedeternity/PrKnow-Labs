goal
  X=[1,2,3],Y=[X|X], write(Y).
  %X=[[],2,3],X=[_,_|Y],write(Y).
  %X=[[],[1],[1,2],[1,2,3]],X=[_,_|Y],Y=[_|Z],write(Z).
  %X=[1,[2],1,2,[1,2,3]],X=[Y|[2,[1,2,3]]],write(Y).
  %X=[1,2,3,4,5,6],X=[1|Y],Z=[1,2,3|Y],write(Z).
  %X=[[6,5,4],[5,4,3],[4,3,2],[3,2,1],[2,1],[1]],
  %X=[X1|X2],Z=[X2|X1],write(Z).
  %X=[[6,5,4],[5,4,3],[4,3,2],[3,2,1],[2,1],[1]],
  %X=[_|X1],X1=[_|Z],write(Z).
  %X=[9,8,7],Y=[X|X],write(Y).
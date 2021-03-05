domains
  list = symbol*
  
predicates
  nondeterm compare(list)
  
clauses
  compare([_|[]]).
  compare([_|[_]]).
  compare([H|[TH|[TTH|TTT]]]):- H = TTH, compare([TTH|TTT]); fail.

goal
  %compare(["a","k","a","b","a"]).
  compare(["a","k","a","b","a","n"]).
  %compare(["a","k","a","b","n"]).
prepend(E, T, [E|T]).

addElement(E, [], [E]).
addElement(E,[H|T], [H|AT]) :- addElement(E,T,AT).

hasLength([],0).
hasLength([_|T],L) :- hasLength(T,N), L is N+1.

remove(E, [E|T], T).
remove(E,[H|T], [H|RT]) :- remove(E,T,RT).

%% Name: Arjun Krishna Prasad - Login: ak750

:- use_module(library(clpfd)).

%% Q1.
%----------------------------------
distances([],_,[]).
distances([X|T],B,[A|C]):-
	A #= abs(B-X),
	distances(T,B,C).

	
%% Q2.
%----------------------------------
triangle([],[]).
triangle([X|Y],A):-
	distances(Y, X, B),
	triangle(Y,C),
	append(B,C,A).
	

%% Q3.
%----------------------------------
bananas(Bs):-
	X = [_,_,_,_],
	X ins 1..10,
	triangle(X,Y),
	all_different(Y),
	labeling([], X).
	
%% Q4.
%----------------------------------
main(Solns):-
	findall(_, bananas(X), Y), 
	length(Y,X).
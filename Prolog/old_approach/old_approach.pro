numbers(X, N) :-
	X < 10,
	N is 1, !.

numbers(X, N) :-
	Z is X div 10,
	numbers(Z, N_prev),
	N is N_prev + 1.

reverse_number(X, X) :- X < 10, !.

reverse_number(X, Y) :-
	Yf is X mod 10,
	numbers(X, N),
	Xr is X div 10,
	reverse_number(Xr, Yr),
	Y is Yf * (10 ** (N - 1)) + Yr.

%% ?-reverse_number(123, X).
%% Function is not bidirectional
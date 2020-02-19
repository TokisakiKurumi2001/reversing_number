last([X], X).
last([_ | XS], X) :- last(XS, X).

remove_last([_], []).
remove_last([X | XS], [X | YS]) :- remove_last(XS, YS).

reverse_list([], []).
reverse_list([X | XS], Z) :-
	last(Z, X),
	remove_last(Z, Y),
	reverse_list(XS, Y), !.

reverse_number(Str1, Str2) :-
	string_to_list(Str1, List1),
	reverse_list(List1, List2),
	string_to_list(Str2, List2).

%% ?-reverse_number("123", X).
%% Functions is not bidirectional
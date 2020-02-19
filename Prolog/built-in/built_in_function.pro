reverse_number(Str1, Str2) :-
	string_to_list(Str1, List1),
	reverse(List1, List2),
	string_to_list(Str2, List2).

%% ?-reverse_number("123", X).
%% Function is not bidirectional
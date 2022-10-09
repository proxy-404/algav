

% 1.  Implemente os predicados para realizar as seguintes tarefas: 

% a)  Obter a média de uma lista de inteiros

list_avg([],0). % base case - empty list

list_avg(L, Avg) :-
    list_sum(L, Sum),
    list_length(L, Len),
    Avg is Sum / Len.

list_sum([],0). % base case - empty list

list_sum([Head|Tail], TotalSum):-
    list_sum(Tail, Sum1),
    TotalSum is Head+Sum1.

list_length([],0). % base case - empty list

list_length([_|Tail], Length):-
    list_length(Tail, Length1),
    Length is Length1 + 1.




% b) Obtain the smallest element of a list of integers

min_list([H|T], Min) :- % entry point
    min_list(T, H, Min). % call the recursive predicate

min_list([], Min, Min). % base case - empty list
min_list([H|T], Min0, Min) :- % recursive case
    Min1 is min(H, Min0), % Min1 is the minimum of H and Min0
    min_list(T, Min1, Min). % call the recursive predicate after poping the head of the list




% c) Contar o número de elementos pares e ímpares numa lista de inteiros

count_odd_even([], 0, 0). % base case - empty list

count_odd_even([H|T], Odd, Even) :-
    count_odd_even(T, Odd1, Even1),
    (0 is H mod 2 -> Even is Even1 + 1, Odd is Odd1; % if H is even then increment Even and leave Odd unchanged
    Even is Even1, Odd is Odd1 + 1). % else increment Odd and leave Even unchanged




% d) Colocar o menor elemento da lista à frente da lista

move_min_to_front([],[]) :- !. % base case - empty list

move_min_to_front(List, ResultList):- % entry point
    min_list(List, Min), % get the minimum of the list
    delete(List, Min, ListWithoutMin), % delete the minimum from the list
    ResultList = [Min|ListWithoutMin]. % append the minimum to the front/head of the list

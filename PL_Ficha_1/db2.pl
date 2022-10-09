

potencia(_,0,1):- !.
potencia(X,N,P):- N > -1, N1 is N-1, potencia(X,N1,P1), P is X*P1.



factorial(0,1):-!.
factorial(N,F):- 
                N1 is N-1,
                factorial(N1,F1),
                F is N*F1.


sum(J,J,J):- !.
sum(J,K,S):-
            J1 is J + 1,
            J < K,
            sum(J1,K,S1),
            S is J + S1.



dive(A,B):-
            X is truncate(div(A,B)),
            M is mod(A,B),
            write('The integer value is '),
            write(X),
            write(' and the rest is '),
            write(M), nl.


% divb(0,0,Result,Rest):-!.
% if its trying to divide by zero
divb(A,0,_,_):-
                write('oh boy'), nl,!.

% edge case Rest is zero                
divb(A,A,1,0):-!.

% if there is a Rest
divb(A,B,Result,Rest):-
                        A < B,
                        Result is 0,
                        Rest is A.
% regular case
divb(A,B,Result,Rest):-
                        A1 is A - B,
                        divb(A1,B,Result1,Rest),
                        Result is Result1 +1.

% lets call the Result1 the outer variable,
% the outer variable will hold the value from the second divb()
% and assign it to the Result variable.




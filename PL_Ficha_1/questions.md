exe 2:

fronteira(frança, espanha).

Qual a população do México em milhões?

?- pais(mexico, america, A).
A = 129.2.

exe 3:

a)
vizinho(P1, P2) :- fronteira(P1, P2); fronteira(P2, P1).

8 ?- vizinho(P1, P2).            
P1 = argentina,
P2 = bolivia .

b)
contSemPaises(C) :- continente(C), not(pais(D,C,F)).

?- contSemPaises(C).
C = africa .

c)
semVizinhos(L) :- pais(L, _, _), not(fronteira(L, _)), not(fronteira(_, L)).

?- semVizinhos(L).
L = cuba .







exe 4

a)


/* Contoh 3
------------*/
DOMAINS
  nama = symbol
  uang = integer

PREDICATES
  nondeterm ibu(nama)
  nondeterm milik(nama, uang)
  nondeterm punya(nama, uang)

CLAUSES
  ibu(marna).
  ibu(ani).
  ibu(gina).
  ibu(nana).
  ibu(mirna).
  
  milik(marna, 500000).
  milik(ani, 5000000).
  milik(gina, 5000).
  milik(nana, 50000).
  
  punya(X,Y):-
    ibu(X),
    milik(X, Y),
    Y < 100000,!.

GOAL
  punya(X,Y).
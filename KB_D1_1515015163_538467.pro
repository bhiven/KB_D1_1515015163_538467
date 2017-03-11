domains
a = integer
x, y = string


predicates
nondeterm birthday(x, a, y)

clauses
birthday(luffy, 5, may).
birthday(zoro, 11, november).
birthday(nami, 3, july).
birthday(usopp, 1, april).
birthday(sanji, 2, march).
birthday(chopper, 24, december).
birthday(robin, 6, february).
birthday(franky, 9, march).
birthday(brook, 3, april).

goal
birthday(Who,Day,_), Day>10, Day<30.
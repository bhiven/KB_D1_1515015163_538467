/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH02E05.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

predicates
  car(symbol,long,integer,symbol,long) - nondeterm (o,o,o,o,i)
  truck(symbol,long,integer,symbol,long) - nondeterm (o,o,o,o,i)
  vehicle(symbol,long,integer,symbol,long) - nondeterm (o,o,o,o,i)

clauses
  car(chrysler,130000,3,red,12000).
  car(ford,90000,4,gray,25000).
  car(datsun,8000,1,red,30000).

  truck(ford,80000,6,blue,8000).
  truck(datsun,50000,5,orange,20000).
  truck(toyota,25000,2,black,25000).

  vehicle(Make,Odometer,Age,Color,Price):-
	car(Make,Odometer,Age,Color,Price);
	truck(Make,Odometer,Age,Color,Price).

goal
  car(Make,Odometer,Years_on_road,Body,25000).

/*
1.	Program diatas mempunyai 3 syntax yang termasuk predikat yaitu car, truck, dan vehicle dimana data yang diterima symbol, long, integer, symbol, dan long. Dimana predikat tersebut hanya menerima pertanyaan, pertanyaan, pertanyaan, pertanyaan, dan pernyataan.
2.	Di dalam clause ada 2 sesi fakta dan 1 sesi pertanyaan dimana fakta tersebut terdiri fakta car dan fakta truck dan pertanyaan terdiri dari pernyataan vehicle.
3.	Di fakta car terdapat 3 fakta yaitu :
"	car(chrysler, 130000,3, red, 12000).
"	car(ford, 90000, 4, gray, 25000).
"	car(datsun, 8000, 1, red, 30000).
4.	Di fakta truck terdapat 3 fakta yaitu  :
"	truck(ford, 80000, 6, blue, 8000).
"	truck(datsun, 50000, 5, orange, 20000).
"	truck(toyota, 25000, 2, black, 25000).
5.	Di pertanyaan vehicle ada dua kondisi yaitu :
"	car(Make,Odometer,Age,Color,Price);
"	truck(Make,Odometer,Age,Color,Price).
6.	Di goal hanya ada satu goal yaitu mobil dengan harga 25000
7.	Hasilnya hanya ada satu solusi yaitu car(ford, 90000, 4, gray, 25000).
*/
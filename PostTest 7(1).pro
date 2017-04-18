DOMAINS
  integerlist = integer*

PREDICATES
  tambah(integerlist,integerlist,integerlist)

CLAUSES
  tambah([],List,List).
  
  tambah([H|L1],List2,[H|L3]):-
    tambah(L1,List2,L3).

GOAL
  tambah([1, 2], [3], L), tambah(L, L, LL).
  
  
/* 
  Program diatas ada program, yang menggabungkan 2 list menjadi satu.
  Mendeklarasikan variabel integerlist sebagai integer setiap data dalam list.
  Clause tambah di deklarasikan dengan nilai list kosong.
  Di goal nilai list pertama di deklarasikan yaitu [1, 2] untuk nilai list kedua yaitu [3].
  Dan hasil penggabungan yaitu [1, 2, 3] di simpan di variabel L.
  Kemudian variabel L ditambahkan dengan variabel L dan
  Hasilnya disimpan di varibel LL
  Outputnya variabel L adalah [1, 2, 3] dan variabel LL adalah [1, 2, 3, 1, 2, 3]
 
*/
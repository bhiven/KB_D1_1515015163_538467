DOMAINS
  pohonchar = pohon(char, pohonchar, pohonchar); akhir

PREDICATES
  nondeterm lakukan(pohonchar)
  kerjakan(char, pohonchar, pohonchar)
  buat_pohon(pohonchar, pohonchar)
  sisip(char, pohonchar, pohonchar)
  cetak_pohon(pohonchar)
  nondeterm ulang

CLAUSES
  lakukan(Pohon):-
    ulang,nl,
    write("*******************************************************"),nl,
    write("Ketik 1 meng-update pohon\n"),
    write("Ketik 2 mencetak pohon\n"),
    write("Ketik 7 keluar\n"),
    write("*******************************************************"),nl,
    write("Masukkan angka - "),
    readchar(X),nl,
    kerjakan(X, Pohon, PohonBaru),
    lakukan(PohonBaru).
    
  kerjakan('1',Pohon,PohonBaru):-
    write("Ketik karakter # untuk mengakhiri: "),
    buat_pohon(Pohon, PohonBaru).
    
  kerjakan('2',Pohon,Pohon):-
    cetak_pohon(Pohon),
    write("\nTekan sembarang tombol"),
    readchar(_),nl.
    
  kerjakan('7', _, akhir):-
    exit.
    
  buat_pohon(Pohon, PohonBaru):-
    readchar(C),
    C<>'#',!,
    write(C, " "),
    sisip(C, Pohon, PohonTemp),
    buat_pohon(PohonTemp, PohonBaru).
    
    buat_pohon(Pohon, Pohon).
    
    sisip(Baru,akhir,pohon(Baru,akhir,akhir)):-!.
    
    sisip(Baru,pohon(Elemen,Kiri,Kanan),pohon(Elemen,KiriBaru,Kanan)):-
      Baru<Elemen,!,
      sisip(Baru,Kiri,KiriBaru).
    
    sisip(Baru,pohon(Elemen,Kiri,Kanan),pohon(Elemen,Kiri,KananBaru)):-
      sisip(Baru,Kanan,KananBaru).
      
    cetak_pohon(akhir).
    
    cetak_pohon(pohon(Item,Kiri,Kanan)):-
      cetak_pohon(Kiri),
      write(Item, " "),
      cetak_pohon(Kanan).
      
    ulang.
    ulang:-ulang.
    
GOAL
  write("********** Sortir Pohon Karakter ************"),nl,
  lakukan(akhir).
  
  /*
    1. Program diatas akan menampilkan menu awal, dimana akan ada 3 pilihan yaitu:
       1. mengupdate pohon.
       2. mencetak pohin.
       7. keluar
       
    2. pilihan 1 berguna untuk mengupdate pohon kosong yang telah dibuat root, kiri, kanan.
    3. pilihan 2 berguna untuk menampilkan pohon dengan urutan kiri, root, kanan.
    4. pilihan 7 berguna untuk menghentikan program
  
  */

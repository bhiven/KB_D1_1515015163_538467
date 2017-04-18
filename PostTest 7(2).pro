DOMAINS
 listnama = nama*
 nama = symbol

PREDICATES
  nondeterm kuliah(nama, listnama)
  
CLAUSES	
  kuliah("Supardi", ["Intelejensi Buatan", "A"]).
  kuliah("Suradi",["Intelejensi Buatan", "B"]).
  kuliah("Suyatmi",["Intelejensi Buatan", "C"]).
  kuliah("Suparni",["Intelejensi Buatan", "D"]).
  kuliah("Sujiman",["Intelejensi Buatan", "C"]).
  
  kuliah("Suharto",["PDE", "B"]).
  kuliah("Sudirman",["PDE", "C"]).
  kuliah("Supardi",["PDE", "C"]).
  kuliah("Suyatmi",["PDE", "B"]).
  kuliah("Sutini",["PDE", "D"]).
  
  kuliah("Suharto",["Sistem Operasi", "B"]).
  kuliah("Sutini",["Sistem Operasi", "A"]).
  kuliah("Supardi",["Sistem Operasi", "A"]).
  kuliah("Suparni",["Sistem Operasi", "B"]).
  kuliah("Suripah",["Sistem Operasi", "C"]).
    					
GOAL
   kuliah("Supardi",[Mk, Nilai]).


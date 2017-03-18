domains
  name, status, grade = symbol
  
predicates
  nondeterm ai(name, status)
  nondeterm pde(name, status)
  nondeterm so(name, status)
  nondeterm graduate(grade)
  nondeterm notgraduate(grade)	
  
clauses
  graduate(a).
  graduate(b).
  graduate(c).
  notgraduate(d).
  notgraduate(e).
 
  ai(irfan,lulus).
  ai(komeng,tidaklulus).
  ai(dati,lulus).
  ai(fatima,lulus).
  ai(maspion,lulus).
  
  pde(ricky,tidaklulus).
  pde(embang,lulus).
  pde(salmin,tidaklulus).
  pde(vina,lulus).
  pde(sondang,lulus).

  so(pamuji,tidaklulus).
  so(luki,tidaklulus).
  so(sadek,lulus).
  so(yusida,lulus).
  so(eka,lulus).

GOAL
  ai(Who,tidaklulus);
  pde(Who,tidaklulus);
  so(Who,tidaklulus).
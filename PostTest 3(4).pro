domains
  name, status, grade, course = symbol
  
predicates
  nondeterm ai(name, status)
  nondeterm pde(name, status)
  nondeterm so(name, status)
  nondeterm graduate(grade)
  nondeterm notgraduate(grade)
  nondeterm courses(course)
  
clauses
  courses(ai).
  courses(pde).
  courses(so).
  
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
  courses(Course).
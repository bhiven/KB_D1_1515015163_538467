domains
  name, grade = symbol
  
predicates
  nondeterm ai(name, grade)
  nondeterm pde(name, grade)
  nondeterm so(name, grade)
  
clauses
  ai(irfan,a).
  ai(komeng,d).
  ai(dati,c).
  ai(fatima,b).
  ai(maspion,c).
  
  pde(ricky,e).
  pde(embang,a).
  pde(salmin,d).
  pde(vina,b).
  pde(sondang,c).

  so(pamuji,d).
  so(luki,e).
  so(sadek,b).
  so(yusida,a).
  so(eka,a).

GOAL
  ai(Who, _).
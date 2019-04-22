(defrule pedir-nombre-pila 

  => 

  (printout t "Introduzca nombre de pila: ") 
 ;(assert (nombre (read)))
  (bind ?nombre (read))
  (printout t ?nombre crlf)
)
(defrule COMPRUEBAMARCA
 (declare (salience 2))
 (comprobarmarca ?pedirMarca)
 (test (neq ?pedirMarca NO))		
=>
 (printout t "ESCRIBE EN MAYUSCULAS" crlf)
 (printout t "MARCA A BUSCAR: " crlf)
 (bind ?marca (read))
 (assert (BuscarMarca ?marca))
)

(defrule COMPRUEBAPULGADAS
 (declare (salience 2))
 (comprobarpulgadas ?pedirPulgadas)
 (test (neq ?pedirPulgadas NO))
 =>
 (printout t "PULGADAS A BUSCAR: " crlf)
 (bind ?pulgadas (read))
 (assert (BuscarPulgadas ?pulgadas))
)

(defrule COMPRUEBAGAMA
 (declare (salience 2))
 (comprobargama ?pedirGama)
 (test (neq ?pedirGama NO))
 =>
 (printout t "ESCRIBE EN MAYUSCULAS" crlf)
 (printout t "GAMA A BUSCAR: " crlf)
 (bind ?gama (read))
 (assert (BuscarGama ?gama))
)

(defrule COMPRUEBARAM
 (declare (salience 2))
 (comprobarRAM ?pedirRAM)
 (test (neq ?pedirRAM NO))
 =>
 (printout t "RAM A BUSCAR: (INDICA LA UNIDAD DE MEDIDA [EJ: 4GB]) " crlf)
 (bind ?ram (read))
 (assert (BuscarRAM ?ram))
)

(defrule COMPRUEBASO
 (declare (salience 3))
 (comprobarSO ?pedirSO)
 (test (neq ?pedirSO NO))
 =>
 (printout t "ESCRIBE EN MAYUSCULAS" crlf)
 (printout t "S.O A BUSCAR: " crlf)
 (bind ?so (read))
 (assert (BuscarSO ?so))
)
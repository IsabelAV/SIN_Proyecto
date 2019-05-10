;Reglas que comprueban por cual de las caracteristicas el usuario ha decidido realizar la busqueda
;Todas las reglas de comprobación tienen una prioridad de 2, para que se activen en primer lugar
;En todas las reglas se realiza una comprobación, en el antecenete comprobamos si la variable es distinta de NO, en caso de que se cumpla, se activa la accion resultante
;Como las reglas con iguales, se comentará solo el codigo de la primera

;Regla que comprueba si el usuario ha pedido introducir la marca, y pide el dato en caso afirmativo
(defrule COMPRUEBAMARCA
 (declare (salience 2)) ;asigna una prioridad de 2
 (comprobarmarca ?pedirMarca)
 (test (neq ?pedirMarca NO)) ;comprueba que pedirMarca sea distinto de NO	
=>
 (printout t "ESCRIBE EN MAYUSCULAS" crlf)
 (printout t "MARCA A BUSCAR: " crlf)
 (bind ?marca (read)) ;pide al usuario que escriba por que marca desea buscar
 (assert (BuscarMarca ?marca)) ;declara el hecho con el valor pasado por el usuario
)

;Regla que comprueba si el usuario ha pedido introducir las pulgadas, y pide el dato en caso afirmativo, y pide el dato en caso afirmativo
(defrule COMPRUEBAPULGADAS
 (declare (salience 2))
 (comprobarpulgadas ?pedirPulgadas)
 (test (neq ?pedirPulgadas NO))
 =>
 (printout t "PULGADAS A BUSCAR: " crlf)
 (bind ?pulgadas (read))
 (assert (BuscarPulgadas ?pulgadas))
)

;Regla que comprueba si el usuario ha pedido introducir la gama, y pide el dato en caso afirmativo
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

;Regla que comprueba si el usuario ha pedido introducir la ram, y pide el dato en caso afirmativo
(defrule COMPRUEBARAM
 (declare (salience 2))
 (comprobarRAM ?pedirRAM)
 (test (neq ?pedirRAM NO))
 =>
 (printout t "RAM A BUSCAR: (INDICA LA UNIDAD DE MEDIDA [EJ: 4GB]) " crlf)
 (bind ?ram (read))
 (assert (BuscarRAM ?ram))
)

;Regla que comprueba si el usuario ha pedido introducir el sistema operativo, y pide el dato en caso afirmativo
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
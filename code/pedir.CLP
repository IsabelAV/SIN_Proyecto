;Regla que pregunta al usuario por cual de las características disponibles desea buscar
(defrule pedir_caracteristicas
	=>
	(printout t "ESCRIBE SI O NO EN MAYUSCULAS: " crlf)
	(printout t "¿Quiere buscar por marca?: " crlf)
	(bind ?pedirMarca (read))
	(printout t "¿Quiere buscar por gama?: " crlf)
	(bind ?pedirGama(read))
	(printout t "¿Quiere buscar por PULGADAS?: " crlf)
	(bind ?pedirPulgadas(read))
	(printout t "¿Quiere buscar por RAM?: " crlf)
	(bind ?pedirRAM(read))
	(printout t "¿Quiere buscar por SISTEMA OPERATIVO?: " crlf)
	(bind ?pedirSO(read))

	;realiza una declaración de los hechos de las características disponibles para la busqueda
	(assert (comprobarSO ?pedirSO))
	(assert (comprobarRAM ?pedirRAM))
	(assert (comprobarpulgadas ?pedirPulgadas))
	(assert (comprobargama ?pedirGama))
	(assert (comprobarmarca ?pedirMarca))
)
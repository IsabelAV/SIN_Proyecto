;Reglas que buscan por cuatro caracteristicas
;Como las reglas son iguales, se comentará solo el codigo de la primera
;Imprime los moviles que coincidan con la busqueda del usuario

;Regla que busca por sistema operativo, marca, pulgadas y ram
(defrule BUSCARSMPR
 (comprobargama ?pedirGama)

 (BuscarMarca ?marca)
 (BuscarPulgadas ?pulgadas)
 (BuscarRAM ?ram)
 (BuscarSO ?so)
 (caracteristicas 
		(gama ?gama) 
		(marca ?marca)
		(modelo ?modelo) 
		(pulgadas ?pulgadas) 
		(RAM $? ?ram $?) 
		(ROM $?rom) 
		(bateria ?bateria) 
		(camara ?camara) 
		(SO ?so) 
		(color $?color) 
		(precio $?precio) 
	)
	
	;La regla se activa si se cumple que la caracteristica gama no ha sido pedida
	(test (eq ?pedirGama NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))
 

;Regla para buscar por sistema operativo, marca, pulgadas y gama
(defrule BUSCARSMPG
 (comprobarRAM ?pedirRAM)

 (BuscarGama ?gama)
 (BuscarMarca ?marca)
 (BuscarPulgadas ?pulgadas)
 (BuscarSO ?so)
 (caracteristicas 
		(gama ?gama) 
		(marca ?marca)
		(modelo ?modelo) 
		(pulgadas ?pulgadas) 
		(RAM $?ram) 
		(ROM $?rom) 
		(bateria ?bateria) 
		(camara ?camara) 
		(SO ?so) 
		(color $?color) 
		(precio $?precio) 
	)
	
	;La regla se activa si se cumple que la caracteristica ram no ha sido pedida
	(test (eq ?pedirRAM NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))
	 
;Regla que busca por sistema operativo, pulgadas, ram y gama
(defrule BUSCARSPRG
 (comprobarmarca ?pedirMarca)

 (BuscarGama ?gama)
 (BuscarPulgadas ?pulgadas)
 (BuscarRAM ?ram)
 (BuscarSO ?so)
 (caracteristicas 
		(gama ?gama) 
		(marca ?marca)
		(modelo ?modelo) 
		(pulgadas ?pulgadas) 
		(RAM $? ?ram $?) 
		(ROM $?rom) 
		(bateria ?bateria) 
		(camara ?camara) 
		(SO ?so) 
		(color $?color) 
		(precio $?precio) 
	)

	;La regla se activa si se cumple que la caracteristica marca no ha sido pedida
	(test (eq ?pedirMarca NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))
	 
;Regla que busca pir marca, pulgadas, ram y gama
(defrule BUSCARMPRG
 (comprobarSO ?pedirSO)

 (BuscarGama ?gama)
 (BuscarMarca ?marca)
 (BuscarPulgadas ?pulgadas)
 (BuscarRAM ?ram)
 (caracteristicas 
		(gama ?gama) 
		(marca ?marca)
		(modelo ?modelo) 
		(pulgadas ?pulgadas) 
		(RAM $? ?ram $?) 
		(ROM $?rom) 
		(bateria ?bateria) 
		(camara ?camara) 
		(SO ?so) 
		(color $?color) 
		(precio $?precio) 
	)
	;La regla se activa si se cumple que la caracteristica sistema operativo no ha sido pedida
	(test (eq ?pedirSO NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))
;Reglas que buscan por tres caracteristicas
;Como las reglas son iguales, se comentará solo el codigo de la primera
;Imprime los moviles que coincidan con la busqueda del usuario

;Regla que busca por marca y sistema operativo
(defrule BUSCARMARCASO
 (comprobargama ?pedirGama)
 (comprobarpulgadas ?pedirPulgadas)
 (comprobarRAM ?pedirRAM)

 (BuscarMarca ?marca)
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
	
	;La regla se activa si se cumple que pulgadas, gama y ram no han sido pedida
	(test (eq ?pedirPulgadas NO))
	(test (eq ?pedirGama NO))
	(test (eq ?pedirRAM NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))
	
;Regla que busca por sistema operativo y pulgadas	
(defrule BUSCARSOPUL
 (comprobarmarca ?pedirMarca)
 (comprobargama ?pedirGama)
 (comprobarRAM ?pedirRAM)

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
	
	;La regla se activa si se cumple que marca, gama y ram no han sido pedida
	(test (eq ?pedirMarca NO))
	(test (eq ?pedirGama NO))
	(test (eq ?pedirRAM NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))
	 
;Regla que busca sistema operativo y ram
(defrule BUSCARSORAM
 (comprobarmarca ?pedirMarca)
 (comprobargama ?pedirGama)
 (comprobarpulgadas ?pedirPulgadas)

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
	
	;La regla se activa si se cumple que pulgadas, gama y marca no han sido pedida
	(test (eq ?pedirPulgadas NO))
	(test (eq ?pedirGama NO))
	(test (eq ?pedirMarca NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))

;Regla que busca por sistema operativo y gama 
(defrule BUSCARSOGAMA
 (comprobarmarca ?pedirMarca)
 (comprobarpulgadas ?pedirPulgadas)
 (comprobarRAM ?pedirRAM)

 (BuscarGama ?gama)
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
	
	;La regla se activa si se cumple que pulgadas, marca y ram no han sido pedida
	(test (eq ?pedirPulgadas NO))
	(test (eq ?pedirMarca NO))
	(test (eq ?pedirRAM NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))
	
;Regla que busca por marca y pulgadas	
(defrule BUSCARMARCAPUL
 (comprobargama ?pedirGama)
 (comprobarRAM ?pedirRAM)
 (comprobarSO ?pedirSO)

 (BuscarMarca ?marca)
 (BuscarPulgadas ?pulgadas)
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
	
	;La regla se activa si se cumple que gama, ram y sistema operativo no han sido pedida
	(test (eq ?pedirGama NO))
	(test (eq ?pedirRAM NO))
	(test (eq ?pedirSO NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))
	 
;Regla que busca por marca y ram
(defrule BUSCARMARCARAM
 (comprobargama ?pedirGama)
 (comprobarpulgadas ?pedirPulgadas)
 (comprobarSO ?pedirSO)

 (BuscarMarca ?marca)
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
	
	;La regla se activa si se cumple que pulgadas, gama y sistema operativo no han sido pedida
	(test (eq ?pedirPulgadas NO))
	(test (eq ?pedirGama NO))
	(test (eq ?pedirSO NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))

;Regla que busca por marca y gama 
(defrule BUSCARMARCAGAMA
 (comprobarpulgadas ?pedirPulgadas)
 (comprobarRAM ?pedirRAM)
 (comprobarSO ?pedirSO)

 (BuscarMarca ?marca)
 (BuscarGama ?gama)
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
	
	;La regla se activa si se cumple que pulgadas, ram y sistema operativo no han sido pedida
	(test (eq ?pedirPulgadas NO))
	(test (eq ?pedirRAM NO))
	(test (eq ?pedirSO NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))

;Regla que busca por pulgadas y ram
(defrule BUSCARPULRAM
 (comprobarmarca ?pedirMarca)
 (comprobargama ?pedirGama)
 (comprobarSO ?pedirSO)

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
	
	;La regla se activa si se cumple que marca, gama y sistema operativo no han sido pedida
	(test (eq ?pedirMarca NO))
	(test (eq ?pedirGama NO))
	(test (eq ?pedirSO NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))

;Regla que busca por pulgadas y gama 
(defrule BUSCARPULGAMA
 (comprobarmarca ?pedirMarca)
 (comprobarRAM ?pedirRAM)
 (comprobarSO ?pedirSO)

 (BuscarGama ?gama)
 (BuscarPulgadas ?pulgadas)
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
	
	;La regla se activa si se cumple que marca, ram y sistema operativo no han sido pedida
	(test (eq ?pedirMarca NO))
	(test (eq ?pedirRAM NO))
	(test (eq ?pedirSO NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))
	 
;Regla que busca por ram y gama
(defrule BUSCARRAMGAMA
 (comprobarmarca ?pedirMarca)
 (comprobarpulgadas ?pedirPulgadas)
 (comprobarSO ?pedirSO)

 (BuscarGama ?gama)
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
	
	;La regla se activa si se cumple que pulgadas, marca y sistema operativo no han sido pedida
	(test (eq ?pedirPulgadas NO))
	(test (eq ?pedirMarca NO))
	(test (eq ?pedirSO NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))
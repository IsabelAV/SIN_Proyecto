;Reglas que buscan por tres caracteristicas
;Como las reglas son iguales, se comentará solo el codigo de la primera
;Imprime los moviles que coincidan con la busqueda del usuario

;Regla que busca por sistema operativo, marca y pulgadas
(defrule BUSCARSMP
 (comprobargama ?pedirGama)
 (comprobarRAM ?pedirRAM)

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
	
	;La regla se activa cuando no se ha pedido ni gama ni ram
	(test (eq ?pedirGama NO))
	(test (eq ?pedirRAM NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))
 
;Regla que busca por sistema operativo, marca y rama
(defrule BUSCARSMR
 (comprobargama ?pedirGama)
 (comprobarpulgadas ?pedirPulgadas)

 (BuscarMarca ?marca)
 (BuscarRAM $?ram)
 (BuscarSO ?so)
 (caracteristicas 
		(gama ?gama) 
		(marca ?marca)
		(modelo ?modelo) 
		(pulgadas ?pulgadas) 
		(RAM $? $?ram $?) 
		(ROM $?rom) 
		(bateria ?bateria) 
		(camara ?camara) 
		(SO ?so) 
		(color $?color) 
		(precio $?precio) 
	)
	
	;La regla se activa cuando no se ha pedido ni gama ni pulgadas
	(test (eq ?pedirGama NO))
	(test (eq ?pedirPulgadas NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))

;Reglas que busca por sistema operativo, marca y gama 
(defrule BUSCARSMG
 (comprobarRAM ?pedirRAM)
 (comprobarpulgadas ?pedirPulgadas)

 (BuscarMarca ?marca)
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
	
	;La regla se activa cuando no se ha pedido ni ram ni pulgadas
	(test (eq ?pedirRAM NO))
	(test (eq ?pedirPulgadas NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))
 
;Reglas para buscar por sistema operativo, pulgadas y ram
(defrule BUSCARSPR
 (comprobarmarca ?pedirMarca)
 (comprobargama ?pedirGama)

 (BuscarPulgadas ?pulgadas)
 (BuscarRAM $?ram)
 (BuscarSO ?so)
 (caracteristicas 
		(gama ?gama) 
		(marca ?marca)
		(modelo ?modelo) 
		(pulgadas ?pulgadas) 
		(RAM $? $?ram $?) 
		(ROM $?rom) 
		(bateria ?bateria) 
		(camara ?camara) 
		(SO ?so) 
		(color $?color) 
		(precio $?precio) 
	)
	
	;La regla se activa cuando no se ha pedido ni marca ni gama
	(test (eq ?pedirMarca NO))
	(test (eq ?pedirGama NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))
 
;Regla que busca por sistema operativo, pulgadas y gama
(defrule BUSCARSPG
 (comprobarmarca ?pedirMarca)
 (comprobarRAM ?pedirRAM)

 (BuscarPulgadas ?pulgadas)
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
	
	;La regla se activa cuando no se ha pedido ni marca ni ram
	(test (eq ?pedirMarca NO))
	(test (eq ?pedirRAM NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))

;Regla que busca por sistema operativo, ram y gama
(defrule BUSCARSRG
 (comprobarmarca ?pedirMarca)
 (comprobarRAM ?pedirPulgadas)

 (BuscarRAM $?ram)
 (BuscarGama ?gama)
 (BuscarSO ?so)
 (caracteristicas 
		(gama ?gama) 
		(marca ?marca)
		(modelo ?modelo) 
		(pulgadas ?pulgadas) 
		(RAM $? $?ram $?) 
		(ROM $?rom) 
		(bateria ?bateria) 
		(camara ?camara) 
		(SO ?so) 
		(color $?color) 
		(precio $?precio) 
	)
	
	;La regla se activa cuando no se ha pedido ni marca ni pulgadas
	(test (eq ?pedirMarca NO))
	(test (eq ?pedirPulgadas NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))
 
;Regla que busca por marca, pulgadas y ram
(defrule BUSCARMPR
 (comprobargama ?pedirGama)
 (comprobarSO ?pedirSO)

 (BuscarMarca ?marca)
 (BuscarPulgadas ?pulgadas)
 (BuscarSO $?ram)
 (caracteristicas 
		(gama ?gama) 
		(marca ?marca)
		(modelo ?modelo) 
		(pulgadas ?pulgadas) 
		(RAM $? $?ram $?) 
		(ROM $?rom) 
		(bateria ?bateria) 
		(camara ?camara) 
		(SO ?so) 
		(color $?color) 
		(precio $?precio) 
	)
	
	;La regla se activa cuando no se ha pedido ni gama ni sistema operativo
	(test (eq ?pedirGama NO))
	(test (eq ?pedirSO NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))
 
;Regla que busca por marca, pulgadas y gama
(defrule BUSCARMPG
 (comprobargama ?pedirGama)
 (comprobarSO ?pedirSO)

 (BuscarMarca ?marca)
 (BuscarPulgadas ?pulgadas)
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
	
	;La regla se activa cuando no se ha pedido ni gama ni sistema operativo
	(test (eq ?pedirGama NO))
	(test (eq ?pedirSO NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))
 
;Regla que busca por marca, ram y gama
(defrule BUSCARMRG
 (comprobarpulgadas ?pedirPulgadas)
 (comprobarSO ?pedirSO)

 (BuscarMarca ?marca)
 (BuscarRAM $?ram)
 (BuscarGama ?gama)
 (caracteristicas 
		(gama ?gama) 
		(marca ?marca)
		(modelo ?modelo) 
		(pulgadas ?pulgadas) 
		(RAM $? $?ram $?) 
		(ROM $?rom) 
		(bateria ?bateria) 
		(camara ?camara) 
		(SO ?so) 
		(color $?color) 
		(precio $?precio) 
	)
	
	;La regla se activa cuando no se ha pedido ni pulgadas ni sistema operativo
	(test (eq ?pedirPulgadas NO))
	(test (eq ?pedirSO NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))
 
;Regla que busca por pulgadas, ram y gama
 (defrule BUSCARPRG
 (comprobarmarca ?pedirMarca)
 (comprobarSO ?pedirSO)

 (BuscarPulgadas ?pulgadas)
 (BuscarRAM $?ram)
 (BuscarGama ?gama)
 (caracteristicas 
		(gama ?gama) 
		(marca ?marca)
		(modelo ?modelo) 
		(pulgadas ?pulgadas) 
		(RAM $? $?ram $?) 
		(ROM $?rom) 
		(bateria ?bateria) 
		(camara ?camara) 
		(SO ?so) 
		(color $?color) 
		(precio $?precio) 
	)
	
	;La regla se activa cuando no se ha pedido ni marca ni sistema operativo
	(test (eq ?pedirMarca NO))
	(test (eq ?pedirSO NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf)
)
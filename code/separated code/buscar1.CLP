(defrule BUSCARMARCA
 (comprobargama ?pedirGama)
 (comprobarpulgadas ?pedirPulgadas)
 (comprobarRAM ?pedirRAM)
 (comprobarSO ?pedirSO)
 
 (BuscarMarca ?marca)
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
	(test (eq ?pedirPulgadas NO))
	(test (eq ?pedirGama NO))
	(test (eq ?pedirRAM NO))
	(test (eq ?pedirSO NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))

	 
(defrule BUSCARGAMA
 (comprobarmarca ?pedirMarca)
 (comprobarpulgadas ?pedirPulgadas)
 (comprobarRAM ?pedirRAM)
 (comprobarSO ?pedirSO)

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
	
	(test (eq ?pedirPulgadas NO))
	(test (eq ?pedirMarca NO))
	(test (eq ?pedirRAM NO))
	(test (eq ?pedirSO NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))
	 
(defrule BUSCARPULGADAS
 (comprobarmarca ?pedirMarca)
 (comprobargama ?pedirGama)
 (comprobarRAM ?pedirRAM)
 (comprobarSO ?pedirSO)

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
	
	(test (eq ?pedirMarca NO))
	(test (eq ?pedirGama NO))
	(test (eq ?pedirRAM NO))
	(test (eq ?pedirSO NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf)) 

(defrule BUSCARAM
 (comprobarmarca ?pedirMarca)
 (comprobargama ?pedirGama)
 (comprobarpulgadas ?pedirPulgadas)
 (comprobarSO ?pedirSO)
 
 (BuscarRAM $?ram)
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
	
	(test (eq ?pedirPulgadas NO))
	(test (eq ?pedirGama NO))
	(test (eq ?pedirMarca NO))
	(test (eq ?pedirSO NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))
	 
(defrule BUSCARSO
 (comprobarmarca ?pedirMarca)
 (comprobargama ?pedirGama)
 (comprobarpulgadas ?pedirPulgadas)
 (comprobarRAM ?pedirRAM)

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
	(test (eq ?pedirPulgadas NO))
	(test (eq ?pedirGama NO))
	(test (eq ?pedirRAM NO))
	(test (eq ?pedirMarca NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf)
)
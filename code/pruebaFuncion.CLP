

(defrule pedir 

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

  => 

  (printout t "Introduzca marca: ") 
  (bind ?marca (read))
  (buscar ?marca ?gama ?modelo ?pulgadas ?ram ?rom ?bateria ?camara ?so ?color ?precio)
)




(deffunction buscar (?marca ?gama ?modelo ?pulgadas ?ram ?rom ?bateria ?camara ?so ?color ?precio)
	(printout t "------------------------" crlf)
	(printout t "Moviles: " ?marca 
		" 
		de Gama: " ?gama 
		" 
		Modelo: " ?modelo 
		" 
		Pulgadas: " ?pulgadas 
		" 
		RAM: " ?ram
		" 
		ROM: " ?rom
		" 
		Bateria: " ?bateria
		" 
		Camara: " ?camara
		"
		SO: " ?so
		" 
		Color: " ?color
		"
		Precio: " ?precio
		 crlf)

)
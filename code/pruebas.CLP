(deftemplate caracteristicas
	(slot gama (type SYMBOL) (default ?DERIVE) (allowed-symbols ALTA MEDIA BAJA))
	(slot marca (type SYMBOL) (default ?DERIVE))
	(slot modelo (type STRING) (default ?NONE))
	(slot pulgadas (type NUMBER) (default ?NONE))
	(multislot RAM (type SYMBOL) (default ?DERIVE) (allowed-symbols 128MB 512MB 1GB 2GB 3GB 4GB 6GB 8GB 12GB 16GB))
	(multislot ROM (type SYMBOL) (default ?NONE) (allowed-symbols 40MB 512MB 16GB 32GB 64GB 128GB 512GB 1TB))
	(slot bateria (type NUMBER) (default ?DERIVE))
	(slot camara (type NUMBER) (default ?DERIVE))
	(slot SO (type SYMBOL) (default ?NONE))
	(multislot color (type SYMBOL) (default ?NONE) (allowed-symbols NEGRO BLANCO AZUL MORADO GRIS PLATA DORADO ROJO ROSA))
	(multislot precio (type NUMBER) (default ?NONE))
)


(deffacts moviles_almacen
	(caracteristicas (gama ALTA) (marca SAMSUNG) (modelo "GALAXY S10+") (pulgadas 6.4) (RAM 8GB 12GB) (ROM 128GB 512GB 1TB) (bateria 4.100) (camara 12) (SO ANDROID) (color NEGRO BLANCO) (precio 1099 1259 1609))

	(caracteristicas (gama ALTA) (marca SAMSUNG) (modelo "GALAXY NOTA 9") (pulgadas 6.3) (RAM 6GB) (ROM 128GB) (bateria 4.000) (camara 12) (SO ANDROID) (color NEGRO AZUL MORADO) (precio 849 999))

	(caracteristicas (gama ALTA) (marca IPHONE) (modelo "XS MAX") (pulgadas 6.5) (RAM 3GB) (ROM 64GB) (bateria 3.179) (camara 12) (SO IOS) (color GRIS PLATA) (precio 1259))

	(caracteristicas (gama ALTA) (marca XIAOMI) (modelo "MI 9") (pulgadas 6.39) (RAM 6GB) (ROM 64GB 128GB) (bateria 3.200) (camara 48) (SO MIUI) (color NEGRO AZUL MORADO) (precio 489.99 518.99))

	(caracteristicas (gama ALTA) (marca HUAWEI) (modelo "MATE 20 X") (pulgadas 7.2) (RAM 6GB) (ROM 128GB) (bateria 5.000) (camara 40) (SO ANDROID) (color AZUL) (precio 899))

	(caracteristicas (gama ALTA) (marca ASUS) (modelo "ROG PHONE") (pulgadas 6) (RAM 8GB) (ROM 128GB) (bateria 4.000) (camara 12) (SO ANDROID) (color NEGRO) (precio 899))

	(caracteristicas (gama ALTA) (marca XIAOMI) (modelo "POCOPHONE F1") (pulgadas 6.18) (RAM 6GB) (ROM 64GB 128GB) (bateria 4.000) (camara 12) (SO ANDROID) (color NEGRO AZUL ROJO) (precio 278 287))

	(caracteristicas (gama MEDIA) (marca XIAOMI) (modelo "MI A2") (pulgadas 5.99) (RAM 4GB 6GB) (ROM 32GB 64GB 128GB) (bateria 3.010) (camara 12) (SO ANDROID) (color NEGRO AZUL DORADO) (precio 189))

	(caracteristicas (gama MEDIA) (marca HUAWEI) (modelo "P8 LITE") (pulgadas 5.2) (RAM 3GB) (ROM 16GB) (bateria 3.000) (camara 12) (SO ANDROID) (color NEGRO BLANCO) (precio 162.9))

	(caracteristicas (gama MEDIA) (marca BQ) (modelo "AQUARIS X2 PRO") (pulgadas 5.65) (RAM 4GB) (ROM 64GB) (bateria 3.100) (camara 12) (SO ANDROID) (color NEGRO BLANCO) (precio 379))

	(caracteristicas (gama MEDIA) (marca XIAOMI) (modelo "REDMI NOTE 7") (pulgadas 6.3) (RAM 3GB 4GB 6GB) (ROM 32GB 64GB) (bateria 4.000) (camara 48) (SO ANDROID) (color ROJO ROSA AZUL NEGRO) (precio 215))

	(caracteristicas (gama MEDIA) (marca SAMSUNG) (modelo "GALAXY A7") (pulgadas 6) (RAM 4GB 6GB) (ROM 64GB 128GB) (bateria 3.300) (camara 24) (SO ANDROID) (color NEGRO AZUL DORADO) (precio 349))

	(caracteristicas (gama MEDIA) (marca MOTOROLA) (modelo "MOTO G7+") (pulgadas 6.24) (RAM 4GB 6GB) (ROM 64GB 128GB) (bateria 3.000) (camara 16) (SO ANDROID) (color NEGRO AZUL DORADO BLANCO ROJO MORADO) (precio 249))

	(caracteristicas (gama MEDIA) (marca XIAOMI) (modelo "MI 8 LITE") (pulgadas 6.26) (RAM 4GB 6GB) (ROM 64GB 128GB) (bateria 3.250) (camara 12) (SO ANDROID) (color NEGRO AZUL) (precio 233.49 263.49))

	(caracteristicas (gama MEDIA) (marca HONOR) (modelo "VIEW 10") (pulgadas 5.99) (RAM 4GB 6GB) (ROM 64GB 128GB) (bateria 3.750) (camara 20) (SO ANDROID) (color NEGRO AZUL ROJO) (precio 494.16))

	(caracteristicas (gama MEDIA) (marca MOTOROLA) (modelo "MOTO G5+") (pulgadas 5.2) (RAM 3GB) (ROM 64GB) (bateria 3.000) (camara 12) (SO ANDROID) (color GRIS DORADO) (precio 299))

	(caracteristicas (gama MEDIA) (marca XIAOMI) (modelo "MI NOTE 3") (pulgadas 5.5) (RAM 6GB) (ROM 64GB) (bateria 3.500) (camara 12) (SO ANDROID) (color NEGRO AZUL) (precio 269.99))

	(caracteristicas (gama BAJA) (marca HUAWEI) (modelo "Y6 2018") (pulgadas 5.7) (RAM 2GB) (ROM 16GB) (bateria 3.000) (camara 13) (SO ANDROID) (color NEGRO AZUL DORADO) (precio 113))

	(caracteristicas (gama BAJA) (marca XIAOMI) (modelo "REDMI 6A") (pulgadas 5.45) (RAM 2GB) (ROM 16GB) (bateria 3.000) (camara 13) (SO ANDROID) (color NEGRO AZUL DORADO) (precio 87))

	(caracteristicas (gama BAJA) (marca IPHONE) (modelo "5S") (pulgadas 4) (RAM 1GB) (ROM 16GB) (camara 8) (SO IOS) (color GRIS PLATA DORADO) (precio 699))

	(caracteristicas (gama BAJA) (marca SAMSUNG) (modelo "GALAXY J6+") (pulgadas 6) (RAM 3GB 4GB) (ROM 32GB 64GB) (bateria 3.300) (camara 13) (SO ANDROID) (color NEGRO GRIS ROJO) (precio 239))

	(caracteristicas (gama BAJA) (marca BLACKBERRY) (modelo "CURVE 9920") (pulgadas 2.44) (RAM 512MB) (ROM 512MB) (SO BLACKBERRY) (color NEGRO ROJO BLANCO AZUL DORADO ROSA) (precio 50))

	(caracteristicas (gama BAJA) (marca OUKITEL) (modelo "OK C12 PRO") (pulgadas 6.18) (RAM 2GB) (ROM 16GB) (bateria 3.300) (camara 8) (SO ANDROID) (color NEGRO MORADO DORADO) (precio 99.99))

	(caracteristicas (gama BAJA) (marca BQ) (modelo "E5") (pulgadas 5) (RAM 1GB 2GB) (ROM 16GB) (bateria 2850) (camara 13) (SO ANDROID) (color NEGRO BLANCO) (precio 50))

	;(iniciar)
)


(defrule pedir_caracteristicas
	;(iniciar)
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
	(printout t "¿Quiere buscar por SO?: " crlf)
	(bind ?pedirSO(read))

	(assert (comprobarSO ?pedirSO))
	(assert (comprobarRAM ?pedirRAM))
	(assert (comprobarpulgadas ?pedirPulgadas))
	(assert (comprobargama ?pedirGama))
	(assert (comprobarmarca ?pedirMarca))
)

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

;--------------------------BUSQUEDA POR 1-------------------------------

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
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))


	 
;----------------------------------BUSQUEDA por 5--------------------------------
	 
	 
(defrule BUSCAR5
 (BuscarMarca ?marca)
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
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))
	 
	 
;------------------------------------------BUSQUEDA por 2-------------------------
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
	(test (eq ?pedirPulgadas NO))
	(test (eq ?pedirGama NO))
	(test (eq ?pedirRAM NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))
	 
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
	
	(test (eq ?pedirMarca NO))
	(test (eq ?pedirGama NO))
	(test (eq ?pedirRAM NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))
	 
	 
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
	
	(test (eq ?pedirPulgadas NO))
	(test (eq ?pedirGama NO))
	(test (eq ?pedirMarca NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))
	 
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
	
	(test (eq ?pedirPulgadas NO))
	(test (eq ?pedirMarca NO))
	(test (eq ?pedirRAM NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))
	 
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
	
	(test (eq ?pedirGama NO))
	(test (eq ?pedirRAM NO))
	(test (eq ?pedirSO NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))
	 
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
	
	(test (eq ?pedirPulgadas NO))
	(test (eq ?pedirGama NO))
	(test (eq ?pedirSO NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))
	 
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
	
	(test (eq ?pedirPulgadas NO))
	(test (eq ?pedirRAM NO))
	(test (eq ?pedirSO NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))

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
	(test (eq ?pedirMarca NO))
	(test (eq ?pedirGama NO))
	(test (eq ?pedirSO NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))
	 
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
	(test (eq ?pedirMarca NO))
	(test (eq ?pedirRAM NO))
	(test (eq ?pedirSO NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))
	 
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
	(test (eq ?pedirPulgadas NO))
	(test (eq ?pedirMarca NO))
	(test (eq ?pedirSO NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))
	 
	 
;-------------------------------BUSQUEDA de 4------------------------
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
	(test (eq ?pedirGama NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))
 
 
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
	
	(test (eq ?pedirRAM NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))
	 
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

	(test (eq ?pedirMarca NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))
	 
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
	(test (eq ?pedirSO NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))
 
 ;--------------------------------BUSQUEDA por 3----------------------------------
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
	(test (eq ?pedirGama NO))
	(test (eq ?pedirRAM NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))
 
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
	(test (eq ?pedirGama NO))
	(test (eq ?pedirPulgadas NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))
 
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
	(test (eq ?pedirRAM NO))
	(test (eq ?pedirPulgadas NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))
 
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
	(test (eq ?pedirMarca NO))
	(test (eq ?pedirGama NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))
 
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
	(test (eq ?pedirMarca NO))
	(test (eq ?pedirRAM NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))
 
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
	(test (eq ?pedirMarca NO))
	(test (eq ?pedirPulgadas NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))
 
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
	(test (eq ?pedirGama NO))
	(test (eq ?pedirSO NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))
 
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
	(test (eq ?pedirGama NO))
	(test (eq ?pedirSO NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))
 
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
	(test (eq ?pedirPulgadas NO))
	(test (eq ?pedirSO NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))
 
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
	(test (eq ?pedirMarca NO))
	(test (eq ?pedirSO NO))
 =>
 (printout t "------------------------" crlf)
 (printout t "Moviles: " ?marca ", de Gama: " ?gama ", Modelo: " ?modelo ", Pulgadas: " ?pulgadas ", RAM: " ?ram ", ROM: " ?rom ", Bateria: " ?bateria ", Camara: " ?camara ", SO: " ?so ", Color: " ?color ", Precio: " ?precio crlf))

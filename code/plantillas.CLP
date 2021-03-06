;Declaración de la plantilla de hechos de las caracteristicas de un smartphone
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
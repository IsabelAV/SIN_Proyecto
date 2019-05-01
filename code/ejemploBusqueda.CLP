(deftemplate persona
(slot nombre)
(slot ojos))

(deffacts personas
(persona (nombre Ana) (ojos verdes))
(persona (nombre Juan) (ojos negros))
(persona (nombre Luis) (ojos negros))
(persona (nombre Blanca) (ojos azules)))


(defrule busca-personas
(persona (nombre ?nombre1)
(ojos ?ojos1&azules|verdes))
(persona (nombre ?nombre2&~?nombre1)
(ojos negros))
=>
(printout t ?nombre1
" tiene los ojos " ?ojos1 crlf)
(printout t ?nombre2
" tiene los ojos negros" crlf)
(printout t "------------------------" crlf))

(defrule busca
	(declare (salience 500))
?dh <-	(vector $? 3 $?enMedio&:(oddp (length$ $?enMedio)) 4 $?)
	(caracteristicas (gama ?x))
=>
	(printout t "La gama es " ?x crlf)
	(printout t "------------------------" crlf)
)


(deffacts hechos
  (vector v1 9 8  3 2 1 1 4 2 2 1 3 )
   (vector v2 9 8 3 1 2 1 1 4 2 2 1 3 1 2 3 4)
 )

(defrule regla

?dh <-	(vector $? 3 $?enMedio&:(oddp (length$ $?enMedio)) 4 $?)
	=>
	(printout t  ?dh crlf)
)


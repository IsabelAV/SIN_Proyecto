





(deftemplate alumno "datos de un alumno"
(slot nombre (type SYMBOL))
(slot edad (type INTEGER) (range 1 99))
(slot estatura (type FLOAT))
(slot calificacion (type FLOAT))
(slot carrera (type SYMBOL)(default sistemas))
)
; hechos iniciales
(deffacts hechos_iniciales
(alumno (nombre Victor)(edad 22)(estatura 1.8)(calificacion 7.5))
(alumno (nombre Tomas)(edad 17)(estatura 1.8)(calificacion 8.6))
(alumno (nombre Mariano)(edad 25)(estatura 1.8)(calificacion 6.5))
(alumno (nombre Felipe)(edad 12)(estatura 1.8)(calificacion 8.8))
(alumno (nombre Jesus)(edad 35)(estatura 1.8)(calificacion 10.0))
(iniciar)
)
(defrule MENU
 (iniciar)
 =>
 (printout t "*************************************************** " crlf)
 (printout t " INSERTAR " crlf)
 (printout t " MODIFICAR " crlf)
 (printout t " ELIMINAR " crlf)
 (printout t " SALIR " crlf)
 (printout t " -----escribe la palabra completa en MAYUSCULAS y enter " crlf)
 (printout t "*************************************************** " crlf)
 (printout t "¿QUE DESEAS HACER ? " crlf)
 (assert (respuesta (read)))
)
(defrule INSERTAR
 ?f<-(respuesta INSERTAR)
 =>
 (printout t "NOMBRE: ?" crlf)
 (bind ?nombre (read))
 (printout t "EDAD: ?" crlf)
 (bind ?edad (read))
 (printout t "ESTATURA: ?" crlf)
 (bind ?est (read))
 (printout t "CALIFICACION: ?" crlf)
 (bind ?cal (read))
 (retract ?f)
 (assert (alumno (nombre ?nombre)(edad ?edad)(estatura ?est)(calificacion ?cal)))
 (refresh MENU)
)
(defrule BUSCAYMODIFICA
 ?f<-(respuesta MODIFICAR)
 =>
 (printout t "NOMBRE A MODIFICAR: ?" crlf)
 (bind ?nombre (read))
 (retract ?f)
 (assert (Modificarhechos ?nombre))
)
(defrule MODIFICAR
 ?f1<-(Modificarhechos ?nombre)
 ?f<-(alumno (nombre ?nombre))
 =>
 (printout t "El" ?nombre " está en el hecho "?f crlf)
 (printout t "NUEVO NOMBRE: ?" crlf)
 (bind ?nombre (read))
 (printout t "NUEVA EDAD: ?" crlf)
 (bind ?edad (read))
 (printout t "NUEVA ESTATURA: ?" crlf)
 (bind ?est (read))
 (printout t "NUEVA CALIFICACION: ?" crlf)
 (bind ?cal (read))
 (modify ?f (nombre ?nombre)(edad ?edad)(estatura ?est) (calificacion ?cal))
 (retract ?f1)
 (refresh MENU) ;PARA ACTIVAR Y EJECUTAR LA REGLA MENU
)
(defrule ELIMINAR
 ?f<-(respuesta ELIMINAR)
 =>
 (printout t "NOMBRE A ELIMINAR: ?" crlf)
 (bind ?nombre (read))
 (retract ?f)
 (assert (ELIMINAR ?nombre))
)
(defrule BUSCAYELIMINA
 ?f1<-(ELIMINAR ?nombre)
 ?f <-(alumno (nombre ?nombre))
 =>
 (retract ?f1)
 (retract ?f)
 (refresh MENU);PARA ACTIVAR Y EJECUTAR LA REGLA MENU
)
(defrule SALIR
 ?f<-(respuesta SALIR)
 =>
 (retract ?f)
 (halt)
)

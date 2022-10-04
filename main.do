* Trabajo Práctico No. 1 de Econometría

* Asignatura: Econometría
* Docente: Gabriel Montes-Rojas
* Estudiantes: Lucas, Octavio, Sebastián y Victoria

****************************************
* Configuración
****************************************

* Limpiar memoria.
clear all


****************************************
* Primera Pregunta
* Estimar el efecto de la educación sobre los ingresos de los asalariados
****************************************

* Directorio
cd /Users/octavio/Desktop/econometrics-coursework

* Importar la base de datos en formato xlsx. La primera hoja es 2021, la segunda es 2020.
import excel "EPH.xlsx", sheet("2020") firstrow case(lower)

save eph2020.dta

clear

* Importar la base de datos en formato xlsx. La primera hoja es 2021, la segunda es 2020.
import excel "EPH.xlsx", sheet("2021") firstrow case(lower)

save eph2021.dta

clear

* Trabajamos sobre la EPH del cuarto trimestre de 2020...
lab var ch07 "ࠁctualmente esta...(Estado civil)"
lab def catch07 1 "Unido"
lab def catch07 2 "Casado", add
lab def catch07 3 "Separado/a o divorciado/a", add
lab def catch07 4 "Viudo/a", add
lab def catch07 5 "Soltero/a", add
lab def catch07 9 "Ns./Nr.", add
lab val ch07 catch07

lab var ch04 "Sexo"
lab def catch04 1 "Varon"
lab def catch04 2 "Mujer", add
lab val ch04 catch04

lab var ch06 "ࠃuantos a񯳠cumplidos tiene?"


use eph2020.dta

* TODO: responder las preguntas


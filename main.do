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
lab var ch03 "Relacion de parentesco"
lab def catch03 1 "Jefe/a"
lab def catch03 2 "Conyuge/Pareja",add
lab def catch03 3 "Hijo/Hijastro/a",add
lab def catch03 4 "Yerno/Nuera",add
lab def catch03 5 "Nieto/a",add
lab def catch03 6 "Madre/Padre",add
lab def catch03 7 "Suegro/a",add
lab def catch03 8 "Hermano/a",add
lab def catch03 9 "Otros Familiares",add
lab def catch03 10 "No Familiares",add
lab val ch03 catch03

lab var ch04 "Sexo"
lab def catch04 1 "Varon"
lab def catch04 2 "Mujer", add
lab val ch04 catch04

use eph2020.dta

* TODO: responder las preguntas


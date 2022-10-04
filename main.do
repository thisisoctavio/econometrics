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

use eph2020.dta

* TODO: responder las preguntas

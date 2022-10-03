* Trabajo Práctico No. 1 de Econometría

* Asignatura: Econometría
* Docente: Gabriel Montes-Rojas
* Estudiantes: Lucas, Octavio, Sebastián y Victoria

****************************************
* Configuración
****************************************

* Limpiar memoria.
clear all

* Utilizar hasta 30 megabytes de memoria.
set mem 30m


****************************************
* Primera Pregunta
* Estimar el efecto de la educación sobre los ingresos de los asalariados
****************************************

* Directorio
cd /Users/octavio/Desktop/econometrics-coursework

* Importar bases de datos en archivo xlsx.
import excel "EPH-2020-4.xlsx", firstrow case(lower)


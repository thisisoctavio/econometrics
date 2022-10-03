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
import excel "EPH_personas_2020_4.xlsx", 

/* TODO: Filtrar
Jefes de hogar
25 a 65 años
Ciudad Autónoma de Buenos Aires
*/
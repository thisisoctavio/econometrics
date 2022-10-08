* Trabajo Práctico No. 1 de Econometría

* Asignatura: Econometría
* Profesor: Gabriel V. Montes-Rojas
* Estudiantes: Sebastián Burgermeister, Lucas S. Ordoñez, Victoria Señorele y Octavio Z. Sánchez

********************************************************************************
* Configuración
********************************************************************************

* Limpiar memoria.
clear all

* Algo
set more off

* Renombrar variables:
rename * , lower
rename codusu CODUSU

********************************************************************************
* Limpieza de datos
********************************************************************************

* Ciudad Autónoma de Buenos Aires
keep if aglomerado == 32

* Jefe/a del hogar
keep if ch03 == 1

* Entre 25 y 65 años
keep if ch06 >= 25 & ch06 <= 65

* Asalariado
keep if cat_ocup == 3

********************************************************************************
* Primera Pregunta
* Computar el salario promedio mensual para cada muestra.
********************************************************************************

* Muestra
mean p21 [w=pondiio]

* Varones
mean p21 if ch04 == 1 [w=pondiio] 

* Mujeres
mean p21 if ch04 == 2 [w=pondiio]

* Edades
mean p21 if ch06 < 35 [w=pondiio]
mean p21 if ch06 >= 35 & ch06 < 45 [w=pondiio]
mean p21 if ch06 >= 45 & ch06 < 55 [w=pondiio]
mean p21 if ch06 >= 55
















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

lab var ch12 "ࠃual es el nivel mⳠalto que cursa o curso?"
lab def catch12 1 "Jardin/ Preescolar"
lab def catch12 2 "Primario", add
lab def catch12 3 "EGB", add
lab def catch12 4 "Secundario", add
lab def catch12 5 "Polimodal", add
lab def catch12 6 "Terciario", add
lab def catch12 7 "Universitario", add
lab def catch12 8 "Posgrado Univ.", add
lab def catch12 9 "Educacion especial (discapacitado)", add
lab def catch12 99 "Ns./Nr.", add
lab val ch12 catch12



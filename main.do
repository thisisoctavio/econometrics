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

* Etiquetar
lab var ch06 "Edad (años cumplidos)"


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

********************************************************************************
* Cuarta pregunta
* Estimar salarios
********************************************************************************

* Estimar salarios

predict salario_estimado_varon if ch07 == 2 & nivel_ed == 6 & ch04 == 1

predict salario_estimado_mujer if ch07 == 2 & nivel_ed == 6 & ch04 == 2




* Obtener promedios por edad








serrbar p21 std ch06, title("Salarios estimados")



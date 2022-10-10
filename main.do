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
rename ch04 gender
rename ch06 age
rename ch07 marital_status
rename p21 wage

* Etiquetar
label variable gender "Género"
label variable age "Edad (años)"
label variable wage "Salario mensual de la ocupación principal (pesos)"
label variable marital_status "Estado civil"
label variable nivel_ed "Nivel educaivo"

label define status 1 "Unido" 2 "Casado" 3 "Separado / Divorciado" 4 "Viudo" 5 "Soltero"
label values marital_status status

label define levels 1 "Primaria incompleta" 2 "Primaria completa" 3 "Secundaria incompleta" 4 "Secundaria completa" 5 "Universitaria incompleta" 6 "Universitaria completa" 7 "Sin instrucción" 9 "NS / NR"
label values nivel_ed levels

********************************************************************************
* Limpieza de datos
********************************************************************************

keep if aglomerado == 32 // Ciudad Autónoma de Buenos Aires.

keep if ch03 == 1 // jefe o jefa del hogar.

keep if age >= 25 & age <= 65 // entre 25 y 65 años.

keep if cat_ocup == 3 // asalariado.

********************************************************************************
* Primera Pregunta
* Computar el salario promedio mensual para cada muestra.
********************************************************************************

{
    * Primero creamos categorías para la edad
    recode age (min/34 = 1 "25-34") (35/44 = 2 "35-44") (45/54 = 3 "45-54") (55/max = 4 "55-65") , generate(generation)

    * Salario mensual general
    mean wage [w=pondiio]

    * Salario mensual según el género
    bysort gender: summarize wage [w=pondiio]

    * Salario mensual según la generación
    bysort generation: summarize wage [w=pondiio]
}

********************************************************************************
* Segunda Pregunta
* Modelizar el efecto de la educación sobre los salarios controlando por edad, género y estado civil.
********************************************************************************




********************************************************************************
* Segunda Pregunta
* Evaluar diferencias en el retorno a la eduacion entre varones y mujeres.
********************************************************************************


********************************************************************************
* Cuarta pregunta
* Estimar salarios
********************************************************************************

* Estimar salarios

predict salario_estimado_varon if ch07 == 2 & nivel_ed == 6 & ch04 == 1

predict salario_estimado_mujer if ch07 == 2 & nivel_ed == 6 & ch04 == 2




* Obtener promedios por edad








serrbar p21 std ch06, title("Salarios estimados")



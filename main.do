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

* Instalar paquete para exportar a LaTeX
ssc install estout, replace

* Renombrar variables:
rename * , lower
rename codusu CODUSU
rename ch04 gender
rename ch06 age
rename ch07 civil_status

generate wage = p21 / 1000
generate ln_wage = ln(wage)

* Etiquetar
label variable gender "Género"
label variable age "Edad (años)"
label variable wage "Salario mensual (miles de pesos)"
label variable ln_wage "Salario mensual (log)"
label variable civil_status "Estado civil"
label variable nivel_ed "Nivel de educación"

label define genders 1 "Varón" 2 "Mujer"
label values gender genders


label define status 1 "Unida" 2 "Casada" 3 "Separada" 4 "Viuda" 5 "Soltera"
label values civil_status status

label define levels 1 "Primaria incompleta" 2 "Primaria completa" 3 "Secundaria incompleta" 4 "Secundaria completa" 5 "Universitaria incompleta" 6 "Universitaria completa" 7 "Sin instrucción" 9 "NS / NR"
label values nivel_ed levels

********************************************************************************
* Limpieza de datos
********************************************************************************

keep if aglomerado == 32 // Ciudad Autónoma de Buenos Aires.

keep if ch03 == 1 // jefe o jefa del hogar.

keep if age >= 25 & age <= 65 // entre 25 y 65 años.

keep if estado == 1 // ocupado.

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

* Base: varón, soltero con primaria completa.

* Correr la regresión y almacenar la tabla en la memoria de eststo.
eststo: regress ln_wage i.nivel_ed i.gender ib5.civil_status c.age##c.age [w=pondera], baselevels

* Exportar a LaTeX: diseño amplio, mostrar el valor p
esttab using second.tex, wide p label title(Resumen de regresión no. 1) interaction(" X ") nostar replace booktabs width(0.75\hsize)

eststo clear // limpiar memoria de eststo.

********************************************************************************
* Tercera Pregunta
* Evaluar diferencias en el retorno a la eduacion entre varones y mujeres.
********************************************************************************

* Usamos interacciones

* Opción 1: calculamos el efecto general y la diferencia con el efecto siendo mujer directamente.

eststo: regress ln_wage nivel_ed#gender c.age##c.age [w=pondera], allbaselevels


* Opción 2: calculamos el efecto siendo varón y el efecto siendo mujer. 

eststo: regress ln_wage nivel_ed##gender c.age##c.age [w=pondera], allbaselevels


* Creo que la opción 2 es más elegante y se ven las dos pendientes claramente. Luego podemos calcular la diferencia.

eststo clear // limpiar memoria de eststo.

********************************************************************************
* Cuarta pregunta
* Estimar salarios
********************************************************************************

* Estimar salarios

* predict salario_estimado_varon if ch07 == 2 & nivel_ed == 6 & ch04 == 1

* predict salario_estimado_mujer if ch07 == 2 & nivel_ed == 6 & ch04 == 2

* serrbar p21 std ch06, title("Salarios estimados")



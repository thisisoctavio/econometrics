**ejercicio 1

********************************************************************************
* renombramos variables
********************************************************************************

rename *,lower
rename p21 salario
rename ch06 edad


********************************************************************************
* Limpieza de datos
********************************************************************************

keep if edad >=25 & edad <=65 // intervalo de edad


keep if aglomerado == 32 // Ciudad Autonoma de Buenos aires


keep if ch03==1 // jefe o jefa del hogar


drop if salario <= 0 // salario negativo eliminado


drop if nivel_ed == 7 // sin instruccion


keep if cat_ocup == 3 & estado ==1 // asalariado


drop if nivel_ed == 9 // elimnar ns-nr
********************************************************************************
* Primera Pregunta
* Computar el salario promedio mensual para cada muestra.
********************************************************************************


* primero creamos categorias para la edad
recode edad (min/34 = 1 "25-34") (35/44 = 2 "35-44") (45/54 = 3 "45-54") (55/max = 4 "55-65"), generate(generation)


*computar salario promedio mensual 
mean salario [w=pondiio]

*salario mensual segun el genero

bysort ch04: summarize salario [w=pondiio]

*salario mensual segun la generacion

bysort generation: summarize salario [w=pondiio]

*salario mensual segun el genero y el rango de edad

bysort generation ch04: summarize salario [w= pondiio]

********************************************************************************
* Segunda Pregunta
* Modelizar el efecto de la educación sobre los salarios controlando por edad, género y estado civil.
********************************************************************************




****************************BASES*********************************


*genero:hombre(generado)
*estadocivil(ch07):soltero(la realizo en regresion)

****creo variable edad^2 para modelizar a traves de una funcion cuadratica

gen edadcuadrado = edad^2

*creo variable dummy 
gen hombre=0
replace hombre=1 if ch04 ==1
lab var hombre "=1 si es hombre"

**************categorias base******
*mujer: hombre =0
*soltero:ch07 = 5
*universitario completo: nivel_ed = 5


* correr la regresión y almacenar la tabla en la memoria de eststo

reg salario i.b(5).ch07 i.b(5).nivel_ed hombre edad edadcuadrado


***test de hipotesis***
test edadcuadrado edad
test edadcuadrado
test edad



********************************************************************************
* Tercera Pregunta
* Evaluar diferencias en el retorno a la eduacion entre varones y mujeres.
********************************************************************************

*Creamos variable de años de educacion
		gen an_educ=.
		replace an_educ=0 if ch10==3
		replace an_educ=0 if ch12==1
		replace an_educ=0 if ch12==1
	*jardin pre-escolar
		replace an_educ = 1 if ch12==1
	*primaria
		replace an_educ=0 if ch12==2 & ch13==2 & ch14==0
		replace an_educ=1 if ch12==2 & ch13==2 & ch14==1
		replace an_educ=2 if ch12==2 & ch13==2 & ch14==2
		replace an_educ=3 if ch12==2 & ch13==2 & ch14==3
		replace an_educ=4 if ch12==2 & ch13==2 & ch14==4
		replace an_educ=5 if ch12==2 & ch13==2 & ch14==5
		replace an_educ=6 if ch12==2 & ch13==2 & ch14==6
		replace an_educ=7 if ch12==2 & ch13==2 & ch14==7
		replace an_educ=7 if ch12==2 & ch13==1
	*secundaria.  Supuesto: no responde último año que aprobó, ponemos 10 años de educ.
		replace an_educ=7 if ch12==4 & ch13==2 & ch14==0
		replace an_educ=8 if ch12==4 & ch13==2 & ch14==1
		replace an_educ=9 if ch12==4 & ch13==2 & ch14==2
		replace an_educ=10 if ch12==4 & ch13==2 & ch14==3
		replace an_educ=10 if ch12==4 & ch13==2 & (ch14==. | ch14==99)
		replace an_educ=11 if ch12==4 & ch13==2 & ch14==4
		replace an_educ=12 if ch12==4 & ch13==2 & ch14==5
		replace an_educ=13 if ch12==4 & ch13==2 & (ch14>=6 & ch14<=9)
		replace an_educ=12 if ch12==4 & ch13==1
		replace an_educ=12 if ch12==4 & ch13==1 & ch14==5
		replace an_educ=13 if ch12==4 & ch13==1 & ch14==6
	*EGB. Supuesto: 5 años educación a quienes no responden el último finalizado.
		replace an_educ=0 if ch12==3 & ch13==2 & ch14==0
		replace an_educ=1 if ch12==3 & ch13==2 & ch14==1
		replace an_educ=2 if ch12==3 & ch13==2 & ch14==2
		replace an_educ=3 if ch12==3 & ch13==2 & ch14==3
		replace an_educ=4 if ch12==3 & ch13==2 & ch14==4
		replace an_educ=5 if ch12==3 & ch13==2 & ch14==5
		replace an_educ=5 if ch12==3 & ch13==2 &(ch14==. | ch14==99)
		replace an_educ=6 if ch12==3 & ch13==2 & ch14==6
		replace an_educ=7 if ch12==3 & ch13==2 & ch14==7
		replace an_educ=8 if ch12==3 & ch13==2 & ch14==8
		replace an_educ=9 if ch12==3 & ch13==2 & ch14==9
		replace an_educ=9 if ch12==3 & ch13==1
	*Polimodal. Supuesto: aprobó 1 año de polimodal.
		replace an_educ=9 if ch12==5 & ch13==2 & ch14==0
		replace an_educ=10 if ch12==5 & ch13==2 & ch14==1
		replace an_educ=10 if ch12==5 & ch13==2 &(ch14==. | ch14==99)
		replace an_educ=11 if ch12==5 & ch13==2 & ch14==2
		replace an_educ=12 if ch12==5 & ch13==2 & ch14==3
		replace an_educ=12 if ch12==5 & ch13==1
		replace an_educ=13 if ch12==5 & ch13==1 & ch14==4
	*Terciario. Supusto: primer año de educación siempre es el 13avo.
		replace an_educ=13 if ch12==6 & ch13==2 & ch14==0
		replace an_educ=14 if ch12==6 & ch13==2 & ch14==1
		replace an_educ=15 if ch12==6 & ch13==2 & ch14==2
		replace an_educ=15 if ch12==6 & ch13==2 &(ch14==. | ch14==99)
		replace an_educ=16 if ch12==6 & ch13==2 & ch14==3
		replace an_educ=17 if ch12==6 & ch13==2 & ch14==4
		replace an_educ=17 if ch12==6 & ch13==1
	*Universitario
		replace an_educ=13 if ch12==7 & ch13==2 & ch14==0
		replace an_educ=14 if ch12==7 & ch13==22 & ch14==1
		replace an_educ=15 if ch12==7 & ch13==2 & ch14==2
		replace an_educ=15 if ch12==7 & ch13==2 &(ch14==. | ch14==99)
		replace an_educ=16 if ch12==7 & ch13==2 & ch14==3
		replace an_educ=17 if ch12==7 & ch13==2 & ch14==4
		replace an_educ=18 if ch12==7 & ch13==2 & ch14==5
		replace an_educ=18 if ch12==7 & ch13==2 & (ch14>5 & ch14<10)
		replace an_educ=18 if ch12==7 & ch13==1
		replace an_educ=13 if ch12==7 & ch13==2 & ch14==1
	*Posgrado universitario
		replace an_educ=18 if ch12==8 & ch13==2 & ch14==0
		replace an_educ=19 if ch12==8 & ch13==2 & ch14==1
		replace an_educ=20 if ch12==8 & ch13==2 & ch14==2
		replace an_educ=20 if ch12==8 & ch13==2 &(ch14==. | ch14==99)
		replace an_educ=20 if ch12==8 & ch13==2 & (ch14>2 & ch14<10)
		replace an_educ=20 if ch12==8 & ch13==1
		

************************regresion********
* expreso en logaritmo el salario

gen ln_salario = ln(salario)

******regresion con continuo en años de educacion**************************


reg ln_salario an_educ hombre c.an_educ#i.hombre 

******regresion con dummy en años de educacion

reg ln_salario i.b(6).nivel_ed i.hombre i.nivel_ed#i.hombre


********************************************************************************
* Cuarta pregunta
* Estimar salarios
********************************************************************************

reg salario hombre if nivel_ed == 6 & ch07 ==2
predict salario_estimado

table hombre if nivel_ed == 6 & ch07 == 2, c(mean salario_estimado)

*** hombre
twoway lfitci salario edad if nivel_ed == 6 & ch04 ==2, stdp || scatter salario edad if ch04 == 2 & nivel_ed == 6

*** mujer
twoway lfitci salario edad if nivel_ed == 6 & ch04 ==1, stdp || scatter salario edad if ch04 == 1 & nivel_ed == 6


****en conjunto
twoway lfitci salario edad if nivel_ed == 6 , stdp || scatter salario edad if  nivel_ed == 6, by(ch04)

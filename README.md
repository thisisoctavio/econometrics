# Metodología

# Primera parte: Estimar el efecto de la educación sobre los ingresos de los asalariados

## Características

En primer lugar, utilizamos microdatos de la EPH con datos de invididuos del cuarto trimestre de 2020 y 2021.Restringiendo de la muestra a hombres y mujeres entre 25-65 años de edad,para la ciudad autónoma de Buenos Aires que presenten la característica de ser jefe/a de hogar, estén empleados y sean asalariados. Con esta población inspeccionamos el efecto de la educación en el ingreso laboral.

## Pregunta no. 1

Para el ingreso utilizamos la variable P21 (ingresos habituales de la ocupación principal del individuo) expandida por el ponderador PONDIIO (ponderador para el ingreso de la ocupación principal).Si el entrevistado no reporta ingresos se le asigna el valor -9 a P21 y se elimina la observación asignándole al ponderador un valor de cero.
A la hora de evaluar el promedio en rangos de edad, asignamos el continuo de edad en intervalos ("25-34", "35-44", "45-54", "55-65")

#### Salario promedio mensual obtenido para cada muestra en el 2020 y 2021



|               | 4to trimestre 2020    | 4to trimestre 2021  |
| ------------- |:-------------:| -----:|
|Salario promedio | $57545.18 | $88659.53 |

#### Salario promedio mensual dependiendo del género en el 2020 y 2021

##### 2021

|Género|Salario promedio|  n | Weight| Min |	Max |
|---|---|---|---|---|---|
|Masculino|$99940.52|133|334545|6000|	280000|
|Femenino|$73945.06|113|256482|4000|200000|

##### 2020
|Género|Salario promedio|  n | Weight| Min |	Max |
|---|---|---|---|---|---|
|Masculino|$59134.98| 84  |273603 |3600 | 180000|
|Femenino|$56147.93|65 |311309 | 3000| 166300|

#### Salario promedio para distintos rangos de edad

##### 2021

|Rangos de edad|n|weight|Salario promedio|Desvío estándar| Min |Max
|---|---|---|---|---|---|---|
|**25 - 34**| 54    |  151375 |   $84204.97   |50654.79    |  22000    | 280000|
|**35 - 44**| 75    |  181559  |  $92335.66 |   52730.8   |   15000 |    200000|
|**45 - 54**| 59     | 149697   |  $91128.9 |  53016.67  |    15000   |  200000|
|**55 - 65**|58   |   108396 |   $85312.72 |  61124.46   |    4000    | 250000|


##### 2020

|Rangos de edad|n|weight|Salario promedio|Desvío estándar| Min |Max
|---|---|---|---|---|---|---|
|**25 - 34**| 28 |      89684   | $41034.27|    23559.2   |   15000|     152000|
|**35 - 44**| 47  |    218914 |   $65952.73 |  37141.77  |    10000 |    180000|
|**45 - 54**| 39   |   165808|    $64738.93  |  34227.9 |     12000  |   156000|
|**55 - 65**| 35    |  110506  |  $43495.72   |28944.22|       3000   |  135000|


#### Salario promedio para distintos rangos de edad y género

##### 2021 - Masculino

|Rangos de edad|n|weight|Salario promedio|Desvío estándar| Min |Max
|---|---|---|---|---|---|---|
|**25 - 34**|33|       93089|    $99243.81   |57483.82|      22000   |  280000|
|**35 - 44**|41 |      95884 |   $110048.9  | 58203.82 |     18000  |   200000|
|**45 - 54**|31  |     86142  |  $91829.14 |  51043.52  |    25000 |    200000|
|**55 - 65**|28   |    59430   | $96480.21|   65880.92   |    6000|     250000|

##### 2021 - Femenino

|Rangos de edad|n|weight|Salario promedio|Desvío estándar| Min |Max
|---|---|---|---|---|---|---|
|**25 - 34**|  21 |      58286 |   $60186.32|   22563.86  |    22000|     124000|
|**35 - 44**| 34   |    85675 |   $72511.71  |  37581.3  |    15000   |  160000|
|**45 - 54**|28     |  63555 |    $90179.8   |56600.53  |    15000   |  200000|
|**55 - 65**| 30     |  48966  |  $71758.75   | 52981.5|       4000    | 178000|

##### 2020 - Masculino

|Rangos de edad|n|weight|Salario promedio|Desvío estándar| Min |Max
|---|---|---|---|---|---|---|
|**25 - 34**| 16 |      43989|    $51900.01 |  29843.37   |   15000|     152000|
|**35 - 44**| 25  |     84492 |   $63690.44  | 40364.53  |    10000 |    180000|
|**45 - 54**|22    |   81346   | $67268.15   |35936.41  |    33000   |  156000|
|**55 - 65**| 21    |   63776   | $47716.23   |33915.82|       3600   |  135000|

##### 2020 - Femenino

|Rangos de edad|n|weight|Salario promedio|Desvío estándar| Min |Max
|---|---|---|---|---|---|---|
|**25 - 34**| 12  |     45695  |  $30574.2|   5072.354    |  19000   |   40000|
|**35 - 44**|22    |  134422  |  $67374.71 |  35609.99   |   15600  |   166300|
|**45 - 54**|17     |  84462 |   $62303.02  | 33266.54  |    12000 |    115000|
|**55 - 65**|14      | 46730|    $37735.67   |20013.18|       3000|      65000|

## Pregunta no. 2
Utilizamos la ecuación de Mincer con el objetivo de estimar la influencia de la educación en el ingreso laboral, a través del método de Mínimos cuadrados ordinarios(MCO).Suponemos una relación lineal entre los años de educación y el retorno salarial, siendo el parámetro de interés el efecto marginal (en %) en el ingreso total de un año más de educación formal.Además, como condición necesaria para el cumplimiento de las propiedades asintóticas, debemos tener una muestra aleatoria, con una cantidad de observaciones $n>30$, Este es un supuesto factible para la EPH.
La condición clave que debe cumplirse para que esta estimación sea consistente, es la condición de ortogonalidad:

$$ E(x´u) = 0 $$

$$ \text{siendo x el vector de regresores y $u$ el de residuos} $$

Esta condición supone que los residuos no están correlacionados con los regresores y su media es igual a 0

La otra condición necesaria para la consistencia de este estimador es que no existan relaciones lineales entre los regresores. formalmente:

$$ E(x´x) = k $$

$$ \text{con $k$ el número de variables explicativas} $$

Además, tratándose de un modelo lineal, decimos que un estimador está **identificado** cuando se puede obtener como función de esperanzas poblacionales. En el caso del estimador de MCO:

$$ \beta = [E(x´x)^{-1} E(x´y)] $$

Entonces, tenemos la identificación del estimador.además, con el cumplimiento de las anteriores condiciones podemos asegurar que la estimación de MCO es consistente.
 
Utilizamos el siguiente modelo, controlando por género, edad y estado civil.

$$ \text{Salario} = \beta_0 + \beta_1est.civil+\beta_2nivel.ed + \beta_3género + \beta_4edad + \beta_5edad^2 $$

dando como resultado
### 2021

![image](https://user-images.githubusercontent.com/67765423/197374213-273678e6-dfcd-4d9f-8e2f-cbe9a9f5910a.png)


### 2020

![image](https://user-images.githubusercontent.com/67765423/197374107-b5001da6-ea54-404d-8d64-07948794ef8d.png)



Observando los coeficientes de la regresión de la variable nivel _ed,podemos observar que los coeficientes son significativos excepto la categoría superior universitaria completa. En este caso se presenta una muestra de $n=246$ siendo acotada, por este motivo podemos concluir a través de un análisis de una muestra completa de la EPH que la categoría superior universitaria completa presenta la característica de ser significativa

## pregunta no.3
Utilizamos un modelo para evaluar si hay diferencias en los retornos a la educación entre hombres y mujeres con el objetivo de encontrar si existe una brecha salarial.

Por un lado se generó una variable en educ con el objetivo de computar años de educación en cada muestra.Esta variable se la obtuvo a través de la condicionalidad de variables de la EPH relacionadas con educación (ch12, ch13 y ch14)

$$ logsalario = \beta_0 + \beta_1an.educ + \beta_2género +\beta_3an.educ*género $$

Dando como resultado

### 2021
![image](https://user-images.githubusercontent.com/67765423/197374228-422f7862-c065-4c2e-9e5a-e7c0892ed9e4.png)


Podemos observar que el coeficiente de la interacción entre género y años de educación no es significativo.Con un análisis de una muestra completa de la EPH obtenemos que es un coeficiente significativo, Denotando claramente la brecha salarial que presentamos como hipótesis

### 2020
![image](https://user-images.githubusercontent.com/67765423/197374134-8ba12332-f612-40be-85c3-93bb1de5d2ad.png)



Por otro lado se utilizó un modelo con interacción entre dummies(en este caso nivel_ed y género)

$$ logsalario = \beta_0 + \beta_1nivel.ed + \beta_2género +\beta_3nivel.ed*género $$

Obteniendo como resultado

### 2021
![image](https://user-images.githubusercontent.com/67765423/197374237-3f8ef046-2aea-477d-a297-82adb6b516b1.png)



### 2020
![image](https://user-images.githubusercontent.com/67765423/197374145-6bbc2a5b-9e28-459b-a49a-db91f463abdc.png)

### pregunta no.4
Utilizamos un modelo para estimar el salario promedio para un hombre y una mujer con educación universitaria (de grado) completo, casado, para todos los años posibles de edad 25-65

$$ salario = \beta_0 + \beta_1género $$

### 2021
![image](https://user-images.githubusercontent.com/67765423/197374249-0d714ec7-fa0a-433f-9510-ad50f9ce2dbf.png)


### 2020
![image](https://user-images.githubusercontent.com/67765423/197374186-f350b3fe-b5d6-4200-89fe-14a9d067c0d5.png)



Obtenemos los valores predichos

|Género|Salario Promedio 2021|Salario Promedio 2020|
|---|---|---|
|Masculino|$111550|$77538.46|
|Femenino|$101625|$80500|

Gráficamente junto con los errores estándar de la estimación con la edad

### 2021 Salario en miles
![image](https://user-images.githubusercontent.com/67765423/197370253-aa49bcda-76c3-4295-8927-b109d2d8505d.png)


### 2020 Salario en miles
![image](https://user-images.githubusercontent.com/67765423/197370180-7d49d0ed-e2af-41f0-b2ff-b58b436dcaba.png)

El salario estimado utilizando el siguiente modelo una vez terminada la carrera de Economía en la UBA para los distintos años:

$$ Salario_i = \beta_0 + \beta_1est.civil_i+\beta_2nivel.ed _i+ \beta_3género_i + \beta_4edad_i $$

|Nombre|Salario estimado 2020|Salario estimado 2021|
|---|---|---|
|Lucas|$60326.333|$107519.32|
|Victoria|$51531.881|$84486.715|
|Octavio|$60326.333|$107519.32|
|Sebastián|$60326.333|$107519.32|


# Segunda parte: Efecto de la capacitación en los salarios

## Características

Consideramos el estudio del efecto de la capacitación por programas públicos sobre los salarios.El Job Training Partnership ACT(JTPA) fue un programa público de capacitación en los Estados Unidos del cual se hicieron numerosos estudios al respecto.

El JTPA empezó en 1983 y continuó hasta bien entrados los 1990.Un subprograma del mismo(Title II) se ofrecía a individuos con "problemas para el empleo" (barriers to employment): aquellos que usaban beneficios sociales de largo plazo, desertores de la primaria o secundaria, aquello con 15 o más semanas de desempleo, con problemas con el inglés, discapacidades mentales o físicas, problemas de lectura o arrestos.Estos individuos fueron *aleatoriamente ofrecidos* la posibilidad de capacitarse en JTPA, mientras que aquellos no seleccionados fueron excluidos por 18 meses de toda capacitación.No todos los ofrecidos efectivos efectivamente hicieron la capacitación.
Usamos la base de datos de Abadie, Angrist e imbens(2002) que contiene información sobre adultos que participaron y que no participaron en JTPA

## Pregunta no.1
Para ver el efecto de JTPA training sobre los ingresos, realizamos los siguientes modelos de regresión, teniendo en cuenta 4 dummies en edad:

#### Modelo en niveles
$$ earnings=\beta_0 + \beta_1jtpa.training + \beta_2sex + \beta_3hsorged + \beta_4black + \beta_5hispanic+\beta_6married + \beta_7wkless + \beta_8age $$

![image](https://user-images.githubusercontent.com/67765423/197373688-204e5dcc-18e9-4fdb-b24c-e6d9c65eaf16.png)



Podemos ver que el efecto del entrenamiento sobre los ingresos, controlando por todas las demás variables, es positivo. Observamos que un individuo que realizó la capacitación gana en promedio $2614 más que uno que no la realizó. Este resultado es sin distinguir entre género, edad y etnia. Además, podemos ver que la variable es significativa ya que el valor del estadístico t no es mayor a 2 en valor absoluto y el p-value es menor a 0.05

#### Modelo log-lin
En este caso eliminamos earnings menores a 1, para aplicar el modelo en términos logarítmicos:

$$ logearnings=\beta_0 + \beta_1jtpa.training + \beta_2sex + \beta_3hsorged + \beta_4black + \beta_5hispanic+\beta_6married + \beta_7wkless + \beta_8age $$


![image](https://user-images.githubusercontent.com/67765423/197373796-85fbaec0-654c-467b-8b31-2bb45193bfba.png)

Observando la semielasticidad, la interpretación de los coeficientes difiere del anterior modelo: en este caso los coeficientes miden un cambio porcentual en la variable dependiente ante un cambio absoluto en la independiente. Un individuo que realizó la capacitación gana en promedio un 25,9% más que uno que no la realizó. Nuevamente, este resultado es sin distinguir entre género, edad y etnia. Además, podemos observar que la variable es significativa ya que el valor del estadístico t no es mayor a 2 en valor absoluto y el p-value es menor a 0.05

## Pregunta no.2:Evaluar si existen diferencias entre hombres y mujeres en términos del efecto de la capacitación

Para ver si hay diferencias entre hombres y mujeres en términos del efecto de la capacitación creamos la variable jta_training_women la cual consiste en la **interacción** entre la variable jtpa_training y la variable sex.

Para ver el efecto de jtpa_training_women sobre los ingresos realizamos la siguiente regresión:

$$ earnings=\beta_0 + \beta_1jtpa.training + \beta_2sex + \beta_3hsorged + \beta_4black + \beta_5hispanic+\beta_6married + \beta_7wkless + \beta_8age + \beta_9jtpa.training.women $$


![image](https://user-images.githubusercontent.com/67765423/197373811-0deae3bd-05cf-47b9-9b18-0e66fe462f5d.png)

La diferencia por género en los rendimientos de la capacitación la podemos observar en la variable jtpa_training_women, la misma nos dice que la mujer gana en promedio $1951 más que el hombre (para cualquier nivel de edad y cualquiera sea la etnia de los individuos). Nuevamente, podemos concluir que los resultados son significativos debido al bajo p-valor del Test.

Utilizando un modelo Log-lin:

$$ logearnings=\beta_0 + \beta_1jtpa.training + \beta_2sex + \beta_3hsorged + \beta_4black + \beta_5hispanic+\beta_6married + \beta_7wkless + \beta_8age + \beta_9jtpa.training.women $$


![image](https://user-images.githubusercontent.com/67765423/197373830-f6d35ac9-e08d-41c5-99cf-c85f44117c77.png)

La diferencia en los rendimientos la observamos en la **interacción** entre sexo y jtpa_training. Vemos que el rendimiento de la capacitación en las mujeres es 10% mayor a la de los hombres, sin distinguir entre rango etario y etnia.

## Pregunta no.3:Elaborar un argumento para la posible endogeneidad de jtpa training
La variable jtpa_capacitacion es endógena ya que depende en parte de la variable jtpa_offer debido a que aquellos sujetos que reciben la oferta del curso disponible son más propensos a asistir a este curso y obtener capacitación. Es menester aclarar que la variable isntrumental elegida depende de los datos disponibles. Podemos encontrar diversos factores que expliquen a jtpa_trainnig, tales como la cantidad de hijos del individuo o la zona en la que este vive, sin embargo, la variable instrumental elegida queda supeditada a los datos disponibles: en este caso jtpa_offer.
Así,la variable jtpa_offer se puede usar como variable instrumental ya que cumple con los dos requisitos necesarios:
-	Exogeneidad: Como la oferta es aleatoria, es exógena y por ende la covarianza entre jtpa_offer y los errores es nula.
-	Relevancia: El recibir la oferta explica en parte el hecho de que un sujeto obtenga capacitación, es decir la covarianza entre jtpa_offer y jtpa_training debe ser diferente de cero. 

## Pregunta no.4:Uso de IV para solucionar endogeneidad
Para solucionar la endogeneidad con la variable instrumental elegida corrimos la siguiente regresión:

**ivregress 2sls earning (jtpa_trainign = jtpa_offer) sex hsorged black hispanic married wkless afdc age2225 age2629 age3035 age3644**

![image](https://user-images.githubusercontent.com/67765423/197373911-7c6e72d0-305f-4277-a857-0f27fdccc2c6.png)

El comando utilizado realiza la regresión en dos etapas: 
La primer etapa consiste en regresar la variable endógena (jtpa_training) en el instrumento (jtpa_offer), controlando por las demás variables exógenas:

**reg jtpa_training jtpa_offer sex ...**

**predict jtpa_training_hat**

La segunda etapa consiste en regresar a la variable earnings en la variable jtpa_training_hat, controlando por las demas variables:


**reg earning jtpa_trainign sex hsorged black hispanic married wkless afdc age2225 age2629 age3035 age3644**

**predict earning_hat** 


El efecto de la capacitación sobre los ingresos (explicando a la capacitación por si el individuo fue ofrecido a hacerla o no), es 1740. Vemos que el coeficiente obtenido difiere significativamente del coeficiente estimado en el punto 2.1, ya que este mismo sufria de endogeneidad. El calculado en 2.1 era 2614, significativamente mayor al recién estimado: estaba sesgado hacia arriba. Podemos concluir que con la adopción de la variable instrumental "Jtpa-offer", corregimos el sesgo de jtpa-training. 

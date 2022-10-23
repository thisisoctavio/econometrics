# Metodología

# Primera parte: Estimar el efecto de la educación sobre los ingresos de los asalariados

## Características

En primer lugar, utilizamos microdatos de la EPH con datos de invididuos del cuarto trimestre de 2020 y 2021.Restringiendo de la muestra a hombres y mujeres entre 25-65 años de edad,para la ciudad autonoma de Buenos Aires que presenten la caracteristica de ser jefe/a de hogar, esten empleados y sean asalariados. Con esta población inspeccionaremos el efecto de la educación en el ingreso laboral.

## Pregunta no. 1

Para el ingreso utilizamos la variable P21 (ingresos habituales de la ocupación principal del individuo) expandida por el ponderador PONDIIO (ponderador para el ingreso de la ocupación principal).Si el entrevistado no reporta ingresos se le asigna el valor -9 a P21 y se elimina la observación asignándole al ponderador un valor de cero.
A la hora de evaluar el promedio en rangos de edad, asignamos el continuo de edad en intervalos ("25-34", "35-44", "45-54", "55-65")

#### Salario promedio mensual obtenido para cada muestra en el 2020 y 2021



|               | 4to trimestre 2020    | 4to trimestre 2021  |
| ------------- |:-------------:| -----:|
|Salario promedio | $57545.18 | $88659.53 |

#### Salario promedio mensual dependiendo del genero en el 2020 y 2021

##### 2021

|Género|Salario promedio|  n | Weight| Min |	Max |
|---|---|---|---|---|---|
|Masculino|$99940.52|133|334545|6000|	280000|
|Femenino|$73945.06|113|256482|4000|200000|

##### 2020
|Género|Salario promedio|  n | Weight| Min |	Max |
|---|---|---|---|---|---|
|Masculino|
|Femenino|

#### Salario promedio para distintos rangos de edad

##### 2021

|Rangos de edad|n|weight|Salario promedio|Desvio estándar| Min |Max
|---|---|---|---|---|---|---|
|**25 - 34**|54|	151375|	$84204.97|	50654.79|	22000|	280000|
|**35 - 44**| 75    |  181559  |  $92335.66 |   52730.8   |   15000 |    200000|
|**45 - 54**| 59     | 149697   |  $91128.9 |  53016.67  |    15000   |  200000|
|**55 - 65**|58   |   108396 |   $85312.72 |  61124.46   |    4000    | 250000|


##### 2020

|Rangos de edad|n|weight|Salario promedio|Desvio estándar| Min |Max
|---|---|---|---|---|---|---|
|**25 - 34**|
|**35 - 44**|
|**45 - 54**|
|**55 - 65**|


#### Salariop promedio para distintos rangos de edad y genero

##### 2021 - Masculino

|Rangos de edad|n|weight|Salario promedio|Desvio estándar| Min |Max
|---|---|---|---|---|---|---|
|**25 - 34**|33|       93089|    $99243.81   |57483.82|      22000   |  280000|
|**35 - 44**|41 |      95884 |   $110048.9  | 58203.82 |     18000  |   200000|
|**45 - 54**|31  |     86142  |  $91829.14 |  51043.52  |    25000 |    200000|
|**55 - 65**|28   |    59430   | $96480.21|   65880.92   |    6000|     250000|

##### 2021 - Femenino

|Rangos de edad|n|weight|Salario promedio|Desvio estándar| Min |Max
|---|---|---|---|---|---|---|
|**25 - 34**|  21 |      58286 |   $60186.32|   22563.86  |    22000|     124000|
|**35 - 44**| 34   |    85675 |   $72511.71  |  37581.3  |    15000   |  160000|
|**45 - 54**|28     |  63555 |    $90179.8   |56600.53  |    15000   |  200000|
|**55 - 65**| 30     |  48966  |  $71758.75   | 52981.5|       4000    | 178000|

##### 2020 - Masculino

|Rangos de edad|n|weight|Salario promedio|Desvio estándar| Min |Max
|---|---|---|---|---|---|---|
|**25 - 34**|
|**35 - 44**|
|**45 - 54**|
|**55 - 65**|

##### 2020 - Femenino

|Rangos de edad|n|weight|Salario promedio|Desvio estándar| Min |Max
|---|---|---|---|---|---|---|
|**25 - 34**|
|**35 - 44**|
|**45 - 54**|
|**55 - 65**|

## Pregunta no. 2
Utilizamos la ecuación de Mincer con el objetivo de estimar la influencia de la educación en el ingreso laboral, a través del método de Mínimo cuadrados ordinarios(MCO).Suponemos una relación lineal entre los años de educación y el retorno salarial, siendo el parámetro de interés el efecto marginal (en %) en el ingreso total de un año más de educación formal.Además, como condición necesaria para el cumplimiento de las propiedades asintóticas, debemos tener una muestra aleatoria, con una cantidad de observaciones n>30. Este es un supuesto factible para la EPH.
La condición clave que debe cumplirse para que esta estimación sea consistente, es la condición de ortogonalidad:

$$ E(x´u) = 0 $$

$$ \text{siendo x el vector de regresores y $u$ el de residuos} $$

Esta condición supone que los residuos no están correlacionados con los regresores y su media es igual a 0

La otra condición necesaria para la consistencia de este estimador es que no existan relaciones lineales entre los regresores. formalmente:

$$ E(x´x) = k $$

$$ \text{con $k$ el número de variables explicativas} $$

Además, tratándose de un modelo lineal, decimos que un estimador está **identificado** cuando se puede obtener como función de esperanzas poblacionales. En el caso del estimador de MCO:

$$ \beta = [E(x´x)^{-1} E(x´y)] $$

Entonces, tenemos la identificación del estimador.además, con el cumplimiento delas anteriores condiciones podemos asegurar que la estimación de MCO es consistente.
 
Utilizamos el siguiente modelo, controlando por género, edad y estado civil.

$$ \text{Salario} = \beta_0 + \beta_1est.civil+\beta_2nivel.ed + \beta_3género + \beta_4edad + \beta_5edad^2 $$

dando como resultado
### 2021
  <img width="442" alt="image" src="https://user-images.githubusercontent.com/67765423/197366833-238a8406-0b1c-467b-b1f5-aa8fb8b83431.png">
dando como resultado

### 2020

Observando los coeficientes de la regresión de la variable nivel _ed,podemos observar que los coeficientes son significativos excepto la categoría superior universitaria completa. En este caso se presenta una muestra de $n=246$ siendo acotada, por este motivo podemos concluir a través de un análisis de una muestra completa de la EPH que la categoría superior universitaria completa presenta la característica de ser significativa

## pregunta no.3
Utilizamos un modelo para evaluar si hay diferencias en los retornos a la educación entre hombres y mujeres con el objetivo de encontrar si existe una brecha salarial.

Por un lado se generó una variable en educ con el objetivo de computar años de educación en cada muestra.Esta variable se la obtuvo a través de la condicionalidad de variables de la EPH relacionadas con educación (ch12, ch13 y ch14)

$$ logsalario = \beta_0 + \beta_1an.educ + \beta_2género +\beta_3an.educ*género $$

dando como resultado

### 2021
<img width="665" alt="image" src="https://user-images.githubusercontent.com/67765423/197367155-12dc8234-efab-4a93-a515-94638d6a4c51.png">

Podemos observar que el coefiente de la interacción entre genero y años de educación no es significativo.Con un analisis de una muestra completa de la EPH obtenemos que es un coeficiente significativo, Denotando claramente la brecha salarial que presentabamos como hipotesis

### 2020

Por otro lado se utilizo un modelo con intereaccion entre dummies(en este caso nivel_ed y género)

$$ logsalario = \beta_0 + \beta_1nivel.ed + \beta_2género +\beta_3nivel.ed*género $$










## Pregunta no. 2

$$ \text{salario} = \beta_0 + \beta_1 \cdot \text{se-in} + \beta_{2} \cdot \text{se-co} + \beta_{3} \cdot \text{un-in} + \beta_{4} \cdot \text{un-co} + \beta_{5} \cdot \text{sin} + \beta_6 \cdot \text{mujer} + \beta_7 \cdot \text{unido} + \beta_8 \cdot \text{casado} + \beta_9 \cdot \text{divorciado} + \beta_{10} \cdot \text{viudo} + \beta_{11} \cdot \text{edad} + \beta_{12} \cdot \text{edad}^2 $$


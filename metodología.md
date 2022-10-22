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

|2021|Salario promedio|  n | Weight| Min |	Max |
|---|---|---|---|---|---|
|Masculino|$99940.52|133|334545|6000|	280000|
|Femenino|$73945.06|113|256482|4000|200000|

#### Salario promedio para distintos rangos de edad

##### 2021

|Rangos de edad|n|weight|Salario promedio|Desvio estándar| Min |Max
|---|---|---|---|---|---|---|
|**25 - 34**|54|	151375|	$84204.97|	50654.79|	22000|	280000|
|**35 - 44**| 75    |  181559  |  $92335.66 |   52730.8   |   15000 |    200000|
|**45 - 54**| 59     | 149697   |  $91128.9 |  53016.67  |    15000   |  200000|
|**55 - 65**|58   |   108396 |   $85312.72 |  61124.46   |    4000    | 250000|


##### 2020







## Pregunta no. 2

$$ \text{salario} = \beta_0 + \beta_1 \cdot \text{se-in} + \beta_{2} \cdot \text{se-co} + \beta_{3} \cdot \text{un-in} + \beta_{4} \cdot \text{un-co} + \beta_{5} \cdot \text{sin} + \beta_6 \cdot \text{mujer} + \beta_7 \cdot \text{unido} + \beta_8 \cdot \text{casado} + \beta_9 \cdot \text{divorciado} + \beta_{10} \cdot \text{viudo} + \beta_{11} \cdot \text{edad} + \beta_{12} \cdot \text{edad}^2 $$


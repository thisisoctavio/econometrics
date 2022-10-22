# Metodología

# Primera parte: Estimar el efecto de la educación sobre los ingresos de los asalariados

## Características

En primer lugar, utilizamos microdatos de la EPH con datos de invididuos del cuarto trimestre de 2020 y 2021.Restringiendo de la muestra a hombres y mujeres entre 25-65 años de edad,para la ciudad autonoma de Buenos Aires que presenten la caracteristica de ser jefe/a de hogar, esten empleados y sean asalariados. Con esta población inspeccionaremos el efecto de la educación en el ingreso laboral.

## inciso 1

Para el ingreso utilizamos la variable P21 (ingresos habituales de la ocupación principal del individuo) expandida por el ponderador PONDIIO (ponderador para el ingreso de la ocupación principal).

Si el entrevistado no reporta ingresos se le asigna el valor -9 a P21 y se elimina la observación asignándole al ponderador un valor de cero.

## Pregunta no. 2

$$ \text{salario} = \beta_0 + \beta_1 \cdot \text{se-in} + \beta_{2} \cdot \text{se-co} + \beta_{3} \cdot \text{un-in} + \beta_{4} \cdot \text{un-co} + \beta_{5} \cdot \text{sin} + \beta_6 \cdot \text{mujer} + \beta_7 \cdot \text{unido} + \beta_8 \cdot \text{casado} + \beta_9 \cdot \text{divorciado} + \beta_{10} \cdot \text{viudo} + \beta_{11} \cdot \text{edad} + \beta_{12} \cdot \text{edad}^2 $$


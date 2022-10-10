# Metodología

# Primera parte

## Ingreso

Para el ingreso utilizamos la variable P21 (ingresos habituales de la ocupación principal del individuo) expandida por el ponderador PONDIIO (ponderador para el ingreso de la ocupación principal).

Si el entrevistado no reporta ingresos se le asigna el valor -9 a P21 y se elimina la observación asignándole al ponderador un valor de cero.

## Pregunta no. 2

$$ \text{salario} = \beta_0 + \beta_1 \cdot \text{se-in} + beta_{2} \cdot \text{se-co} + beta_{3} \cdot \text{un-in} + beta_{4} \cdot \text{un-co} + beta_{5} \cdot \text{sin} + \beta_6 \cdot \text{mujer} + beta_7 \cdot \text{unido} + beta_8 \cdot \text{casado} + beta_9 \cdot \text{divorciado} + beta_{10} \cdot \text{viudo} + beta_{11} \cdot \text{edad} + \beta_{12} \cdot \text{edad}^2 $$

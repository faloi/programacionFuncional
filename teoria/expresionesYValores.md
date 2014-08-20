### Programa
- _Descripción_ de una solución a un problema, que puede _ejecutarse_ de alguna manera
- Involucra a las personas, que escriben _texto_ para describir _ideas abstractas (denotacional)_ para ser ejecutadas por _maquinas concretas (operacional)_

### Valores y expresiones
Llamamos **valores** a las entidades matemáticas abstractas con ciertas propiedades. Ejemplos: _el número dos, el valor de verdad falso_

Llamamos **expresiones** a las cadenas de símbolos utilizadas para denotar (escribir, nombrar, referenciar) valores. Ejemplos: _2, (1 + 1), False, (True && False)_

Podemos dividirlas en:
- **atómicas:** son las más simples, también llamadas formas normales (_2_, _False_, _(3, True)_). Por abuso de lenguaje, les decimos _valores_
- **compuestas:** se "arman" combinando subexpresiones (_(1 + 1), (2 == 1), (4 - 1, True || False))_). Por abuso de lenguaje, les decimos _expresiones_

Puede haber expresiones incorrectas, "mal formadas":
- **por errores sintácticos:** se detectan con reglas sintácticas. Ejemplos: _*12, (True, ('a',)_
- **por errores de tipo:** se detectan con reglas de asignación de tipo. Ejemplos: _(2 + False), (2 || 'a'), 4 'b'_

### Funcion
Son valores especiales que representan una _transformación de datos_.

Pueden entenderse desde 2 visiones distintas:
- **denotacional**: valor matemático que relaciona cada elemento de un conjunto de partida con un único elemento de un conjunto de llegada
- **operacional**: mecanismo (método, procedimiento, algoritmo, programa) que dado un elemento del conjunto de partida, calcula (devuelve, retorna) el elemento correspondiente del conjunto de llegada.

Su operación básica es la _aplicación_ a un elemento de su partida. En Haskell la aplicación se escribe por yuxtaposición (una cadena al lado de la otra).

Para determinar el valor que denota, escribimos una _ecuación orientada_ que establece su valor. Es orientada en tanto "lo que no conozco" está a la izquierda:

```haskell
expresionADefinir = expresionDefinida
```

- _Denotacionalmente_, se define que el valor denotado por `expresionADefinir` es el mismo que el denotado por `expresionDefinida`
- _Operacionalmente_, para calcular el valor de una expresión que contiene a `expresionADefinir`, se puede reemplaar `expresionADefinir` por `expresionDefinida`

Retomando entonces la idea de programa, ahora podemos decir que:
> Un programa en el paradigma funcional es un conjunto de ecuaciones que definen una o más funciones (valores). En cuanto a su uso, se basa en la reducción de la aplicación de una función a sus datos

Y un lenguaje funcional puro se define como:
> Lenguaje de expresiones con transparencia referencial y funciones de alto orden, cuyo modelo de cómputo es la reducción realizada mediante el reemplazo de iguales por iguales
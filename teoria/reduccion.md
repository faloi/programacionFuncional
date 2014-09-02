# Reducción
Definimos _**redex** (reducible expression)_ como una subexpresión que coincide con una instancia del lado izquierdo de una ecuación y _**forma normal**_ como una ecuación que no contiene ninguna _redex_.

En base a eso decimos que el mecanismo de reducción consiste en:
1. localizar una redex
2. reemplazarlo
3. si no se llegó a la forma normal, volver al paso 1

## Propiedades
- **normalización:** siempre termina? la forma normal existe?
- **confluencia:** cuando termina, siempre da un único valor? la forma normal es única?
- **órdenes de reducción:** hay más de una forma de reducir? de ser así, da lo mismo cualquier camino?

### Normalización
**Visión operacional:**
- expresiones cuyas computaciones no terminan
- expresiones que no están definidas

**Visión denotacional:**
- Bottom (⊥): 
    + valor teórico que representa a un error o a una computación que no termina
    + no se puede preguntar si algo es ⊥ sin obtener ⊥
    + todos los tipos deben contener este valor de error, pues todos deben poder devolver error
- _No se puede_ manejar de manera operacional

Podemos entonces clasificar las funciones de la siguiente manera:
- **totales / parciales:** si para todo parámetro definido, la expresión está definida entonces la llamaremos _total_. Si encontramos algún valor de entrada para el cual el resultado es ⊥, la llamaremos _parcial_
- **estrictas / no estrictas:** si alguno de los parámetros es ⊥ y aún así la expresión está definida la llamaremos _no estricta_. En caso contrario será _estricta_. Vale la aclaración de que si la función necesita el valor para computar su resultado, entonces sí o sí se convertirá en _estricta_

### Órden de evaluación
Se denomina así al algoritmo que elige cuál redex reducir. Mencionaremos dos:
- **aplicativo:** primero los redexes internos (es decir, primero los argumentos y luego la aplicación)
- **normal:** primero los redexes externos (es decir, primero la aplicación y, si aún están, los argumentos)

En caso de que haya más de un redex del mismo órden para elegir, se reduce de izquierda a derecha.

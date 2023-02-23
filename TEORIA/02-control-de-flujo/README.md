# CONDICIONES, BUCLES Y FUNCIONES

En este apartado vamos a ver cómo podemos controlar el flujo de ejecución de nuestro código R. Para ello, vamos a ver cómo podemos utilizar las condiciones, los bucles y las funciones.

<p id="indice">He aquí el índice de este apartado:</p>

* [Condiciones](#condiciones)
  * [if()](#if)
  * [else](#else)
  * [else if()](#else-if)
  * [Condiciones múltiples](#condiciones-múltiples)
  * [ifelse()](#ifelse) <!-- para aprender más sobre el tema: https://adv-r.hadley.nz/control-flow.html#vectorised-if -->
  * [switch()](#switch)
* [Bucles](#bucles)
  * [while()](#while)
  * [for()](#for)
  * [break y next](#break-y-next)
* [Funciones](#funciones)
  * [Parámetros por defecto](#parámetros-por-defecto)

<br>

[<< TEMA 1](../01-introduccion/README.md#introducción-a-r) | [TEMA 3 >>](../03-estructuras-de-datos/README.md#estructuras-de-datos)


<br><hr>
<hr><br>


## Condiciones

<sub>* [Ver código](01-condiciones.R)</sub>

Las condiciones son una parte fundamental de la programación. Nos permiten controlar el flujo de ejecución de nuestro código. En R, las condiciones se pueden definir con las siguientes palabras clave:

* `if()`
* `else`
* `else if()`
* `ifelse()`
* `switch()`

<br><hr>


### if()


La palabra clave `if()` nos permite definir una condición. Si la condición se cumple, se ejecuta el código que se encuentra dentro de la condición. Si no se cumple, se salta el código que se encuentra dentro de la condición.

Esta sería la sintaxis de la condición `if()`:

```r
if (condicion) {
  # Código que se ejecuta si la condición se cumple
}
```

<br>

Por ejemplo, si queremos que se muestre un mensaje por pantalla si la variable `x` es mayor que 5, podemos hacer lo siguiente:

```r
x <- 10
if (x > 5) {
  print("x es mayor que 5")
}
```

<br>

Si la variable `x` fuera menor o igual que 5, no se imprimiría nada por pantalla.

He aquí una imagen comparativa cuando el valor de `x` es mayor o menor que 5:

![01-if](https://user-images.githubusercontent.com/110897750/204314769-1b55d9ff-f4db-4c87-b849-8f7e9fdc9002.jpg)

<sub>[Volver al índice](#indice) | [Bucles](#bucles)</sub>


<br><hr>


### else

La palabra clave `else` nos permite definir un código que se ejecutará si la condición descrita con un `if()` no se cumple. Esta sería la sintaxis de la condición `else`:

```r
if (condicion) {
  # Código que se ejecuta si la condición se cumple
} else {
  # Código que se ejecuta si la condición no se cumple
}
```

<br>

Por ejemplo, si queremos que se muestre un mensaje por pantalla si la variable `x` es mayor que 5, y otro mensaje si la variable `x` es menor o igual que 5, podemos hacer lo siguiente:

```r
x <- 10
if (x > 5) {
  print("x es mayor que 5")
} else {
  print("x es menor o igual que 5")
}
```

<br>

Este sería el resultado:

![02-else](https://user-images.githubusercontent.com/110897750/204314772-2b7574d3-0ef2-40c1-bdd9-466999006eba.jpg)

<sub>[Volver al índice](#indice) | [Bucles](#bucles)</sub>


<br><hr>


### else if()

La palabra clave `else if()` nos permite definir una condición adicional que se ejecutará si la condición descrita con un `if()` no se cumple. Esta sería la sintaxis de la condición `else if()`:

```r
if (condicion) {
  # Código que se ejecuta si la condición se cumple
} else if (condicion) {
  # Código que se ejecuta si la condición no se cumple
} else {
  # Código que se ejecuta si la condición no se cumple
}
```

<br>

Por ejemplo, si queremos que se muestre un mensaje por pantalla si la variable `x` es mayor que 5, otro mensaje si la variable `x` es igual que 5, y otro mensaje si la variable `x` es menor, podemos hacer lo siguiente:

```r
x <- 5
if (x > 5) {
  print("x es mayor que 5")
} else if (x == 5) {
  print("x es igual que 5")
} else {
  print("x es menor que 5")
}
```

<br>

Este sería el resultado:

![03-else-if](https://user-images.githubusercontent.com/110897750/204314773-984fedf7-7bfb-40dc-8f38-9f1588024172.jpg)

<sub>[Volver al índice](#indice) | [Bucles](#bucles)</sub>


<br><hr>


### Condiciones múltiples

En ocasiones, necesitamos comprobar más de una condición. Por ejemplo, si queremos que se muestre un mensaje por pantalla si la variable `x` es mayor que 5 y menor que 10, podemos hacer lo siguiente:

```r
x <- 7
if (x > 5 & x < 10) {
  print("x es mayor que 5 y menor que 10")
}
```

<br>

Este sería el resultado:

![04-condiciones-multiples](https://user-images.githubusercontent.com/110897750/204314776-2d7dc8ad-385c-4991-abac-46ba27e13d1a.jpg)

<sub>[Volver al índice](#indice) | [Bucles](#bucles)</sub>


<br><hr>


### ifelse()

Esta función permite definir en una sola línea de código cómo actuar si la condición se cumplre, y cómo actuar si no se cumple.

Además de eso, las funciones `if()` solo permiten trabajar con un `TRUE` o `FALSE`. Sin embargo, en ocasiones se desea trabajar con vectores, por ejemplo. Para ello, se puede utilizar la función `ifelse()`.

Esta sería la sintaxis de la función `ifelse()`:

```r
ifelse(condicion, valor_si_verdadero, valor_si_falso)
```

<br>

Por ejemplo, si queremos que se muestre un mensaje por pantalla si la variable `x` es mayor que 5, podemos hacer lo siguiente:

```r
x <- 1:10
ifelse(x %% 2 == 0, paste(format(x, trim = TRUE), "es par"), paste(format(x, trim = TRUE), "es impar"))
```

<br>

El ejemplo anterior dice que la condición es que el resto de la división de `x` entre 2 sea igual a 0. Si se cumple, se muestra el mensaje "x es par". Si no se cumple, se muestra el mensaje "x es impar".

Para conseguir que se muestre el valor del número `x`, se utiliza la función `format()`, la cual permite dar el formato deseado al elemento que se quiera imprimir por pantalla. Con el argumento `trim = TRUE` indicamos que no queremos que se muestre el espacio en blanco que se genera al imprimir el vector `x`.

Finalmente, con la función `paste()` se unen ambos strings en uno solo, siendo ese string final el resultado mostrado por pantalla.

Este sería el resultado:

![05-ifelse](https://user-images.githubusercontent.com/110897750/204314778-4efe803e-29c2-4787-b80a-09bd228a8600.jpg)

<sub>[Volver al índice](#indice) | [Bucles](#bucles)</sub>


<br><hr>


### switch()

La función `switch()` permite definir una serie de condiciones que se ejecutarán si se cumple una de ellas. Esta sería la sintaxis de la función `switch()`:

```r
switch(expresion, case1, case2, case3, ...)
```

<br>

Puede escribirse la función en más de una línea para que sea más legible.

He aquí un ejemplo de la función `switch()`:

```r
x <- 2
resultado <- switch(x,
    "Posición 1",
    "Posición 2",
    "Posición 3",
)
resultado
```

<br>

Como se puede ver, el valor del argumento `x` es 2. Por lo tanto, la función `switch()` seleccionará el código que se encuentra en la posición 2. Lo que significa que se le asignará el valor "Posición 2" a la variable `resultado`.

Este sería el código visto desde RStudio:

![06-switch-1](https://user-images.githubusercontent.com/110897750/204314789-54f682cc-e021-4c57-b259-a6091a882a05.jpg)

<br>

También se pueden utilizar nombres para cada caso:

```r
x <- "Option1"
switch (x,
  "Option1" = "Posición 1",
  "Option2" = "Posición 2",
  "Option3" = "Posición 3",
  "Opción no válida"
)
```

<br>

Este código imprimiría por pantalla "Posición 1". Si el valor de `x` no fuera ninguna de las opciones especificadas, se imprimiría por pantalla "Opción no válida".

Este sería el código visto desde RStudio:

![07-switch-2](https://user-images.githubusercontent.com/110897750/204314795-827c80fd-6ee3-4644-8ed2-079d4bae61ed.jpg)

<br>

Además de lo ya visto, la función `switch()` permite crear opciones con la misma solución definiendo únicamente el valor de la última con ese valor. Por ejemplo:

```r
legs <- function(animal){
    switch(animal,
        dog = ,
        cat = ,
        cow = ,
        horse = 4,
        chicken = ,
        human = 2,
        "Animal not found"
    )
}

legs("dog") # 4
legs("cat") # 4
legs("human") # 2
legs("plant") # "Animal not found"
```

<br>

En este ejemplo, se ha definido que si el animal es un perro, un gato, una vaca o un caballo, tendrá 4 patas. Si el animal es un pollo o un humano, tendrá 2 patas. Si el animal no está definido, se mostrará el mensaje "Animal not found".

<sub>[Volver al índice](#indice) | [Bucles](#bucles)</sub>


<br><hr>
<hr><br>


## Bucles

<sub>* [Ver código](02-bucles.R)</sub>

Los bucles son estructuras de control que permiten repetir una o varias instrucciones un número determinado de veces o hasta que se cumpla una condición.

En R se pueden definir dos tipos de bucles:

* `while()`
* `for()`


<br><hr>


### while()

La función `while()` permite repetir una instrucción hasta que se cumpla una condición. Esta sería la sintaxis de la función `while()`:

```r
while(condicion){
    instruccion
}
```

<br>

Con este tipo de bucle hay que tener un cuidado especial, ya que si la condición nunca se cumple, el bucle se ejecutará indefinidamente. Para ello, se recomienda actualizar la condición en cada iteración del bucle.

Por ejemplo:

```r
i <- 1
while(i <= 5){
    print(i)
    i <- i + 1
}
```

<br>

Este bucle imprimirá por pantalla los números del 1 al 5. En cada iteración, se actualiza el valor de `i` sumándole 1, evitando crear un bucle infinito.

Este sería el resultado:

![01-while](https://user-images.githubusercontent.com/110897750/204329030-35fbef44-04b3-46b3-aeb5-f956ae67ab9a.jpg)

<sub>[Condiciones](#condiciones) | [Volver al índice](#indice) | [Funciones](#funciones)</sub>


<br><hr>


### for()

La función `for()` permite repetir una instrucción un número determinado de veces. Esta sería la sintaxis de la función `for()`:

```r
for(i in secuencia){
    instruccion
}
```

<br>

La variable `i` realmente puede recibir el nombre que se desee. Lo importante es que se utilice en la instrucción que se quiere repetir.

A diferencia de la función `while()`, la función `for()` no necesita una condición para ejecutarse. En su lugar, se le pasa una secuencia de valores que se irán asignando a la variable `i` en cada iteración del bucle. La variable tomará los valores de la secuencia en el orden en el que se encuentran.

Por ejemplo:

```r
for(i in 1:5){
    print(i)
}
```

<br>

Con este bucle se obtiene el mismo resultado que en el ejemplo visto con la función `while()`. La única diferencia es que en este caso, la variable `i` toma los valores de la secuencia 1:5 en el orden en el que se encuentran, es decir, 1, 2, 3, 4 y 5.

Este sería el resultado:

![02-for](https://user-images.githubusercontent.com/110897750/204329039-058d4097-d2ec-4242-a5d5-924504f9ac74.jpg)

<sub>[Condiciones](#condiciones) | [Volver al índice](#indice) | [Funciones](#funciones)</sub>


<br><hr>


### break y next

Estas son dos palabras clave o funciones permiten controlar el flujo de un bucle.

* `break` - permite salir del bucle en el que se encuentra.
* `next` - permite saltar a la siguiente iteración del bucle.

<br>

Por ejemplo:

```r
for(i in 1:10){
    if(i == 3){
        next
    } else if(i == 5){
        break
    }
    print(i)
}
```

<br>

Este bucle, en principio, imprimirá por pantalla los números del 1 al 10. Sin embargo, en la iteración en la que `i` tome el valor 3, se ejecutará la instrucción `next`, lo que hará que se salte a la siguiente iteración del bucle. Además, en la iteración en la que `i` tome el valor 5, se ejecutará la instrucción `break`, lo que hará que se salga del bucle y no se impriman los números más allá del 4.

Este sería el resultado:

![03-break-next](https://user-images.githubusercontent.com/110897750/204329043-0b4146f0-acfd-4b66-8d51-0750b7a3ebc5.jpg)

<sub>[Condiciones](#condiciones) | [Volver al índice](#indice) | [Funciones](#funciones)</sub>


<br><hr>
<hr><br>


## Funciones

<sub>* [Ver código](03-funciones.R)</sub>

Las funciones son bloques de código que realizan una tarea específica. En R, las funciones se definen con la palabra clave `function()`. Esta sería la sintaxis de una función:

```r
function(argumentos){
    instrucciones
}
```

<br>

Los argumentos son los valores que se le pasan a la función para que realice su tarea. Por ejemplo, si se quiere crear una función que calcule el área de un círculo, se le pasaría como argumento el radio del círculo.

Al llamar a la función, se escribe el nombre asignado a dicha función. Si no se le ha asignado ningún nombre, se escribe el nombre de la función por defecto, `function()`, y dicha función se denomina **función anónima**, puesto que no tiene nombre.

A continuación, se escriben los argumentos entre paréntesis. Si la función no tiene argumentos, se escriben los paréntesis vacíos.

Por ejemplo:

```r
# definición de la función
area_circulo <- function(radio){
    print(pi * radio^2)
}

# llamada a la función
area_circulo(5)
```

<br>

En este ejemplo, se ha definido una función que calcula e imprime por pantalla el área de un círculo. En la definición, esta función recibe como argumento el radio del círculo, el cual se *"guarda"* en la variable `radio`. Cuando se llama a la función, se le pasa como parámetro el radio del círculo, que en este caso es 5.

Este sería el resultado:

![01-funcion](https://user-images.githubusercontent.com/110897750/204329205-6061678c-ee39-46d4-8aae-be62e8cbf5e7.jpg)

<br>

Como se puede observar, la función `area_circulo()` no devuelve ningún valor. Para ello, se debe utilizar la palabra clave `return()`. Utilizar dicha palabra clave hará que la función devuelva el valor que se le indique, lo que permite guardar dicho valor en una variable o imprimirlo directamente por pantalla.

Por ejemplo:

```r
# definición de la función
area_circulo <- function(radio){
    return(pi * radio^2)
}

# llamada a la función
area <- area_circulo(5)
print(area)
```

<br>

En este ejemplo, la función `area_circulo()` devuelve el valor del área del círculo. Este valor se guarda en la variable `area` y se imprime por pantalla.

A primera vista, el resultado es el mismo que en el ejemplo anterior. Sin embargo, en este caso, la función devuelve el valor del área del círculo, lo que permite guardar dicho valor en una variable y utilizarlo posteriormente las veces necesarias.

Este sería el resultado:

![02-return](https://user-images.githubusercontent.com/110897750/204329207-5b9a4cf6-81f2-4fa1-bba2-41e74489c7b9.jpg)

<sub>[Bucles](#bucles) | [Volver al índice](#indice)</sub>


<br><hr>


### Parámetros por defecto

En ocasiones, se desean definir funciones que tengan argumentos con valores por defecto, ya sea porque son necesarios pero no se desean cambiar o porque son opcionales.

En R, se pueden definir funciones con argumentos con valores por defecto de la siguiente forma:

```r
function(argumento1 = valor1, argumento2 = valor2, ...){
    instrucciones
}
```

<br>

Por ejemplo:

```r
# definición de la función
saludar <- function(nombre = "persona"){
    print(paste("Hola", nombre))
}

# llamada a la función
saludar()
saludar("June")
```

<br>

En este ejemplo, se ha definido una función que saluda a una persona. En la definición, se ha definido un argumento con valor por defecto, el cual es `"persona"`. Cuando se llama a la función, se le pasa como parámetro el nombre de la persona a la que se quiere saludar. Si no se le pasa ningún parámetro, se utilizará el valor por defecto, es decir, `"persona"`.

Este sería el resultado:

![03-argumentos-por-defecto](https://user-images.githubusercontent.com/110897750/204329209-831995e5-1c09-4e55-b6f0-809062a9f6fc.jpg)

<sub>[Bucles](#bucles) | [Volver al índice](#indice)</sub>


<br><hr>
<hr><br>


[<< TEMA 1](../01-introduccion/README.md#introducción-a-r) | [TEMA 3 >>](../03-estructuras-de-datos/README.md#estructuras-de-datos)

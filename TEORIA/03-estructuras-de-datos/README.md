# ESTRUCTURAS DE DATOS

En este apartado se explicarán las estructuras de datos más utilizadas en R. Se explicarán los conceptos básicos de cada una de ellas y se mostrarán ejemplos de su uso.

<p id="indice">He aquí el índice de este apartado:</p>

* [Strings](#strings)
  * [Longitud de un string](#longitud-de-un-string)
  * [Concatenar strings](#concatenar-strings)
  * [Poner en mayúsculas o minúsculas](#poner-en-mayúsculas-o-minúsculas)
  * [Convertir en número](#convertir-en-número)
* [Vectores](#vectores)
  * [Rangos](#rangos)
  * [Longitud de vectores](#longitud-de-vectores)
  * [Eliminar elementos](#eliminar-elementos)
  * [Acceder a elementos](#acceder-a-elementos)
  * [Concatenar vectores](#concatenar-vectores)
  * [Ordenar vectores](#ordenar-vectores)
  * [Operaciones con vectores](#operaciones-con-vectores)
* [Listas](#listas)
  * [Longitud de listas](#longitud-de-listas)
  * [Acceder a los valores de la lista](#acceder-a-los-valores-de-la-lista)
  * [Añadir valores a las listas](#añadir-valores-a-las-listas)
  * [Eliminar valores de las listas](#eliminar-valores-de-las-listas)
  * [Convertir lista en vector](#convertir-lista-en-vector)
* [Matrices](#matrices)
  * [Acceder a los valores de las matrices](#acceder-a-los-valores-de-las-matrices)
  * [Modificar los valores](#modificar-los-valores)
  * [Trasposición de matrices](#trasposición-de-matrices)
* [Data frames](#data-frames)
  * [Acceder a los valores de los data frames](#acceder-a-los-valores-de-los-data-frames)
  * [Añadir nuevos valores](#añadir-nuevos-valores)
  * [Filtrar datos](#filtrar-datos)
  * [Examinar datos y operar con ellos](#examinar-datos-y-operar-con-ellos)
* [Factores](#factores)
  * [Creación de factores](#creación-de-factores)
  * [Operar con factores](#operar-con-factores)

<br>

[<< TEMA 2](../02-control-de-flujo/README.md#condiciones-bucles-y-funciones) | [TEMA 4 >>](../04-importar-exportar-datos/README.md#importar-y-exportar-datos)


<br><hr>
<hr><br>


## Strings

<sub>* [Ver código](01-strings.R)</sub>

En R, los strings se pueden definir de dos formas:

* Usando **commillas dobles**: `"Hola"`
* Usando **comillas simples**: `'Hola'`

<br>

Un string puede contener comillas dentro de sí mismo, siempre y cuando se usen las comillas opuestas. Por ejemplo:

```r
"Hola 'mundo'"
```

<br>

Los strings son comúnmente llamados "cadenas de texto". En R, los strings se consideran vectores de caracteres, lo que para la mayoría del resto de lenguajes vendría a ser una matriz de cadenas.

Es decir, que teniendo el siguiente ejemplo, si trato de acceder al primer caracter del string, realmente obtendré la cadena entera:

```r
str <- "Hola mundo"
str[1] # esto devuelve: "Hola mundo"
```

<br>

Para poder acceder correctamente a los caracteres, se debe usar la función `substr()`:

```r
str <- "Hola mundo"
substr(str, 1, 1) # esto devuelve: "H"
```

<br>

La función `substr()` recibe tres parámetros:

* **#1**: El string del que se quiere obtener el caracter.
* **#2**: La posición del primer caracter que se quiere obtener.
* **#3**: La posición del segundo caracter que se quiere obtener.

<br>

Como habrás deducido, la función `substr()` permite obtener uno o varios caracteres del string.

Si lo que deseas es *romper* un string haciendo que éste pase a ser un vector de caracteres, deberás utilizar la función `strsplit()`:

```r
str <- "Hola mundo"
strsplit(str, "") # esto devuelve: "H" "o" "l" "a" " " "m" "u" "n" "d" "o"
```

<br>

<sub>[Volver al índice](#indice) | [Vectores](#vectores)</sub>


<br><hr>


### Longitud de un string

En ocasiones es necesario conocer la longitud de un string. Para ello, se puede usar la función `nchar()`:

```r
texto <- "Hola mundo!"
nchar(texto)
```

<br>

Como se puede observar, la función `nchar()` devuelve el número de caracteres que tiene el string, incluyendo los espacios en blanco.

Este es el resultado:

![03-nchar](https://user-images.githubusercontent.com/110897750/206910963-7caf9bb3-93dd-4620-ad4b-2ba718f8b046.jpg)

<sub>[Volver al índice](#indice) | [Vectores](#vectores)</sub>


<br><hr>


### Concatenar strings

Cuando se tienen varios strings y se quieren agrupar en uno solo, se puede usar la función `paste()`:

He aquí un ejemplo:

```r
texto1 <- "Hola"
texto2 <- "mundo"
texto3 <- "!"
paste(texto1, texto2, texto3)
```

<br>

El código anterior imprimirá en la consola:

![01-paste-spaces](https://user-images.githubusercontent.com/110897750/206910959-68d30f34-e03d-4e5e-835c-e10d4d09f89a.jpg)

<br>

Si se desea modificar el separador entre los strings, se puede usar el argumento `sep`:

```r
paste(texto1, texto2, texto3, sep = "-")
```

<br>

Esta vez, se le ha indicado que debe separar los textos con un guión medio. Como se ha podido observar, el valor por defecto de `sep` es un espacio en blanco.

El código anterior imprimirá en la consola:

![02-paste-dash](https://user-images.githubusercontent.com/110897750/206910962-6f40a70a-1a84-4e79-89eb-5767ddd2bff7.jpg)

<sub>[Volver al índice](#indice) | [Vectores](#vectores)</sub>


<br><hr>


### Poner en mayúsculas o minúsculas

Cuando se quieren comparar dos strings, por ejemplo, suele ser recomendado que ambos estén en minúsculas o en mayúsculas. Para ello, se pueden usar las funciónes `tolower()` o `toupper()`:

```r
texto <- "Hola mundo!"
tolower(texto)
toupper(texto)
```

<br>

Como se puede observar, `tolower()` convierte todo el string en minúsculas y `toupper()` lo convierte en mayúsculas, independientemente de cómo estuviera escrita la cadena original.

Este es el resultado:

![04-tolower-toupper](https://user-images.githubusercontent.com/110897750/206910964-e4bf0222-3f8d-4669-bafb-8cc0514a4a6d.jpg)

<sub>[Volver al índice](#indice) | [Vectores](#vectores)</sub>


<br><hr>


### Convertir en número

Cuando el usuario inserta los datos de forma manual haciendo uso de la función `readline()`, estos se almacenan como strings. Si se desea convertir un string en un número, se puede usar la función `as.numeric()`:

```r
texto <- "123"
as.numeric(texto)
```

<br>

Ahora que el texto se ha convertido en un número, se puede realizar operaciones matemáticas con él:

```r
as.numeric(texto) * 2
```

<br>

Este es el resultado:

![05-asnumeric](https://user-images.githubusercontent.com/110897750/206910966-c508b80f-1a34-4df2-bed8-9b4ce195a917.jpg)

<sub>[Volver al índice](#indice) | [Vectores](#vectores)</sub>


<br><hr>
<hr><br>


## Vectores

<sub>* [Ver código](02-vectores.R)</sub>

Los vectores son estructuras de datos que almacenan datos de un mismo tipo, siempre en una sola dimensión.

Para definir un vector, lo más habitual es utilizar la función `c()`. Esta función recibe como argumentos los elementos que se quieren almacenar en el vector.

Por ejemplo:

```r
vector <- c(1, 2, 3, 4, 5)
```

<br>

En este caso, se ha definido un vector que contiene números enteros. Sin embargo, también se pueden definir vectores que contengan números decimales, caracteres, etc.

Este es el resultado del código anterior:

![01-definicion](https://user-images.githubusercontent.com/110897750/206911049-c3bc491f-ba83-42f1-a978-63180442ae25.jpg)


<br><hr>


### Rangos

Cuando se quieren crear vectores que contengan una secuencia de números, se pueden utilizar los dos puntos (`:`) para crear una secuencia de numeros, que es almacenada como un vector en una variable.

Por ejemplo:

```r
vector <- 1:10
```

<br>

Esa línea de código crea un vector que contiene todos los números del 1 al 10, y los almacena en la variable `vector`.

Este es el resultado tras imprimir la variable:

![02-rangos](https://user-images.githubusercontent.com/110897750/206911052-179b9e29-d054-482a-865a-d170ec8c1083.jpg)

<sub>[Strings](#strings) | [Volver al índice](#indice) | [Listas](#listas)</sub>


<br><hr>


### Longitud de vectores

De forma similar a la vista con los strings, se puede utilizar una función para conocer la longitud del vector. En este caso, la función a utilizar es `length()`:

```r
vector <- c(2.3, 2, 53, 404, 5.1)
length(vector)
```

<br>

Este es el resultado:

![03-length](https://user-images.githubusercontent.com/110897750/206911053-6038cbc4-841d-4689-a748-d5fcb759cd55.jpg)

<sub>[Strings](#strings) | [Volver al índice](#indice) | [Listas](#listas)</sub>


<br><hr>


### Eliminar elementos

Se pueden eliminar elementos concretos de un vector usando los corchetes.

Por ejemplo:

```r
vector <- c(2.3, 2, 53, 404, 5.1)
vector[-3]
vector
```

<br>

En este caso, se ha eliminado el tercer elemento del vector. Como se puede observar, el vector original no se ha modificado, sino que se ha creado un nuevo vector con los elementos que se han indicado:

![04-eliminar-no-modificando](https://user-images.githubusercontent.com/110897750/206911055-ded9cfb0-c328-4583-af2c-c25878f34657.jpg)

<br>

Si se desea modificar el vector original, se puede usar el operador `<-`:

```r
vector <- c(1, 2, 3, 4, 5)
vector <- vector[-3]
vector
```

<br>

Este es el resultado:

![05-eliminar-modificando](https://user-images.githubusercontent.com/110897750/206911057-2dbe87cd-d240-42bf-8fff-cf06de50ef5d.jpg)

<br>

También se pueden eliminar posiciones determinadas o rangos de elementos del vector:

```r
# eliminar algunas posiciones determinadas
vector <- c(2.3, 2, 53, 404, 5.1)
vector[-c(1,3,5)]

# eliminar un rango de elementos
vector <- c(2.3, 2, 53, 404, 5.1)
vector[-2:-4]
```

<br>

Este es el resultado:

![06-eliminar-mas-opciones](https://user-images.githubusercontent.com/110897750/206911059-c076f1ee-1c38-4822-b55a-4a7dc85cd5b5.jpg)

<sub>[Strings](#strings) | [Volver al índice](#indice) | [Listas](#listas)</sub>


<br><hr>


### Acceder a elementos

Se puede acceder a elementos concretos de un vector usando los corchetes y la posición del elemento. Hay que tener en cuenta que a diferencia de otros lenguajes de programación, en R las posiciones empiezan en 1, no en 0.

He aquí un ejemplo:

```r
vector <- c(2.3, 2, 53, 404, 5.1)
vector[3]
```

<br>

Este es el resultado:

![07-acceder-a-elemento](https://user-images.githubusercontent.com/110897750/206911060-2f5c8f7d-776e-43c1-9d86-f6a722cc6bda.jpg)

<br>

Se pueden crear *"indices"* para acceder a los elementos de un vector. Por ejemplo:

```r
edades <- c("Juan" = 20, "Pedro" = 25, "Ana" = 30)
edades["Juan"]
```

<br>

En este caso, en lugar de utilizar la posición para acceder al valor del vector, se ha utilizado el nombre asignado del elemento.

Este es el resultado:

![08-acceder-con-nombre](https://user-images.githubusercontent.com/110897750/206911061-c0e97e7f-e3d5-4724-b0eb-3a27d3393c0a.jpg)

<br>

Se puede ver que el valor no es exactamente el deseado, puesto que no imprime únicamente el valor, sino que también imprime el nombre del elemento. Para evitar esto, existen dos opciones:

* Usar la función `unname()`
* Utilizar doble corchete `[[ ]]` para acceder al valor

```r
edades <- c("Juan" = 20, "Pedro" = 25, "Ana" = 30)
unname(edades["Juan"])
edades[["Juan"]]
```

<br>

Como se puede observar, ambas opciones devuelven el mismo resultado:

![09-acceder-con-nombre-al-valor](https://user-images.githubusercontent.com/110897750/206911063-6def5682-797b-4819-b727-638e5046c744.jpg)

<sub>[Strings](#strings) | [Volver al índice](#indice) | [Listas](#listas)</sub>


<br><hr>


### Concatenar vectores

Ya se ha mencionado que los vectores son estructuras de datos que pueden contener un único tipo de dato. Por ello, de la misma forma que han sido creados, se pueden concatenar varios vectores en uno solo haciendo uso de la función `c()`.

He aquí un ejemplo:

```r
vector1 <- c(1, 2, 3, 4, 5)
vector2 <- c(6, 7, 8, 9, 10)
vector3 <- c(vector1, vector2)
vector3
```

<br>

Si se ejecutara dicho código, se obtendría el siguiente resultado:

![10-concatenacion](https://user-images.githubusercontent.com/110897750/206911065-d77eb444-0c28-4faf-a70a-d4a491025d44.jpg)

<sub>[Strings](#strings) | [Volver al índice](#indice) | [Listas](#listas)</sub>


<br><hr>


### Ordenar vectores

Los elementos de un vector pueden ser ordenados de forma ascendente o descendente con una única función: `sort()`.

Se ha de tener en cuenta que la función **`sort()` no modifica el vector original**, sino que crea un nuevo vector con los elementos ordenados. Es decir, que si se desea mantener ese orden del vector, se debe asignar el resultado de la función a una variable.

He aquí un ejemplo:

```r
vector <- c(2.3, 2, 53, 404, 5.1)
sort(vector)
```

<br>

Al no haber indicado ningún parámetro a la función `sort()`, se ordena el vector de forma ascendente. Si se desea ordenar de forma descendente, se puede utilizar el parámetro `decreasing = TRUE`:

```r
vector <- c(2.3, 2, 53, 404, 5.1)
sort(vector, decreasing = TRUE)
```

<br>

Este es el resultado:

![11-ordenar-vectores](https://user-images.githubusercontent.com/110897750/206911066-9e198f24-9ee0-4f3d-b20b-479b53fba663.jpg)

<sub>[Strings](#strings) | [Volver al índice](#indice) | [Listas](#listas)</sub>


<br><hr>


### Operaciones con vectores

Cuando se tienen dos vectores de la misma longitud, se pueden realizar operaciones matemáticas entre ellos, como suma, resta, multiplicación, división, etc.

Cada elemento del primer vector interactúa con el elemento del segundo vector que ocupa la misma posición.

He aquí un ejemplo:

```r
vector1 <- c(1, 2, 3, 4, 5)
vector2 <- c(6, 7, 8, 9, 10)
vector1 + vector2
vector1 - vector2
vector1 * vector2
vector1 / vector2
```

<br>

Este es el resultado:

![12-operaciones](https://user-images.githubusercontent.com/110897750/206911067-4446ff02-0c00-43f7-92f4-474ed5844ebb.jpg)

<br>

Si los vectores tienen distinta longitud, se puede producir un error. Por ejemplo, al tratar de sumar un vector de 5 elementos con otro de 3 elementos. Sin embargo, si el vector más pequeño es múltiplo del vector más grande, no se produce error, sino que se repite el vector más pequeño tantas veces como sea necesario para que el resultado sea el mismo que si los dos vectores tuvieran la misma longitud.

He aquí un ejemplo:

```r
vector1 <- c(1, 2, 3, 4, 5, 10)
vector2 <- c(6, 7, 8)
vector1 + vector2
vector1 - vector2
vector1 * vector2
vector1 / vector2
```

<br>

Este sería el resultado:

![13-operaciones-multiplos](https://user-images.githubusercontent.com/110897750/206911068-eac4ca7d-b32a-4fdd-9b86-a98ccfd8dde4.jpg)

<sub>[Strings](#strings) | [Volver al índice](#indice) | [Listas](#listas)</sub>


<br><hr>
<hr><br>


## Listas

<sub>* [Ver código](03-listas.R)</sub>

Las listas son estructuras de datos que pueden contener varios tipos de datos. Al igual que ocurría con los vectores, se debe tener en cuenta que las listas son también estructuras de datos de una sola dimensión.

He aquí un ejemplo:

```r
lista <- list(1, "Hola", 2.3, TRUE, c(1, 2, 3))
```

<br><hr>


### Longitud

De la misma forma que con los vectores, se puede utilizar una función para conocer la longitud de las listas. La función a utilizar es `length()`:

```r
lista <- list(1, 2, "Hola", TRUE)
length(lista)
```

<br>

Este es el resultado:

![01-longitud](https://user-images.githubusercontent.com/110897750/206911188-80df4aeb-6aa6-45f5-83db-2f8dcad3b3e9.jpg)

<sub>[Vectores](#vectores) | [Volver al índice](#indice) | [Matrices](#matrices)</sub>


<br><hr>


### Acceder a los valores de la lista

Al igual que con los vectores, para acceder a los valores de una lista, se puede utilizar la posición del elemento que se desea obtener. Para ello, se utiliza la función `[[ ]]`:

```r
lista <- list(1, 2, "Hola", TRUE)
lista[[1]]
lista[[2]]
lista[[3]]
lista[[4]]
```

<br>

Este sería el resultado:

![02-acceder-valores-index](https://user-images.githubusercontent.com/110897750/206911189-7d9f75ac-429b-4617-95a9-0cc71df90596.jpg)

<br>

También se pueden crear listas con nombres de elementos, y utilizar tanto la posición (con `[[ ]]`) como el nombre (con `$`) para acceder a los valores:

```r
lista <- list("manzana" = 6, "pera" = 2, "naranja" = 12)
lista[["manzana"]]
lista$manzana
```

<br>

Las dos últimas líneas de código devuelven el mismo resultado:

![03-acceder-valores-nombre](https://user-images.githubusercontent.com/110897750/206911190-98b341a7-0ea4-4ba6-8283-170a61b9ed56.jpg)

<sub>[Vectores](#vectores) | [Volver al índice](#indice) | [Matrices](#matrices)</sub>


<br><hr>


### Añadir valores a las listas

Existen varias formas de añadir valores a las listas. Sigiendo con la forma de acceder a sus valores, aquí se muestran dos formas de añadir valores a una lista:

```r
persona <- list(nombre = "Naia", edad = 24)
persona[["altura"]] <- 1.62
persona$peso <- 60
```

<br>

Con ese código se crean y añaden simultáneamente dos elementos a la lista `persona`.

He aquí el resultado:

![04-añadir-valores](https://user-images.githubusercontent.com/110897750/206911192-aa891e5d-5124-48b5-bf8d-e89e889f891d.jpg)

<sub>[Vectores](#vectores) | [Volver al índice](#indice) | [Matrices](#matrices)</sub>


<br><hr>


### Eliminar valores de las listas

Se pueden eliminar valores de las listas utilizando la posición del elemento o valor a eliminar, con un signo negativo delante.

He aquí un ejemplo:

```r
persona <- list(nombre = "Naia", edad = 24, altura = 1.62, peso = 60)
persona[-4]
persona
```

<br>

Este es el resultado:

![05-eliminar-valores](https://user-images.githubusercontent.com/110897750/206911193-7f74aa8d-8f5b-433b-b0f2-117dbf0c38e0.jpg)

<br>

Como se puede apreciar en la imagen, eliminar un elemento no modifica la lista original, por lo que si se desea que sí lo haga, se debe asignar la acción a la variable de la lista original.

<sub>[Vectores](#vectores) | [Volver al índice](#indice) | [Matrices](#matrices)</sub>


<br><hr>


### Convertir lista en vector

Se puede convertir una lista en un vector utilizando la función `unlist()`:

```r
lista <- list(1, 2, 3, 4, 5)
vector <- unlist(lista)
```

<br>

Esta acción permitiría realizar operaciones matemáticas con los elementos de la lista, como sumarlos, restarlos, etc. Para ello, es necesario asignar a una variable el resultado de *"deslistar"* la lista.

He aquí una muestra:

![06-lista-a-vector](https://user-images.githubusercontent.com/110897750/206911195-eb82c8ac-ddc7-4c96-962d-c790e14bd5a7.jpg)

<sub>[Vectores](#vectores) | [Volver al índice](#indice) | [Matrices](#matrices)</sub>


<br><hr>
<hr><br>


## Matrices

<sub>* [Ver código](04-matrices.R)</sub>

Las matrices son estructuras de datos que contienen varios elementos, al igual que los vectores, todos los elementos deben ser del mismo tipo de dato. Las matrices son estructuras de datos de dos dimensiones.

Para definir una nueva matriz, se utiliza la función `matrix()`, la cual puede recibir los siguientes parámetros:

* `data`: los datos que contendrá la matriz.
* `nrow`: el número de filas que tendrá la matriz.
* `ncol`: el número de columnas que tendrá la matriz.
* `byrow`: si es `TRUE`, los datos se introducirán por filas, en cualquier otro caso, por columnas. Es opcional puesto que su valor por defecto es `FALSE`.
* `dimnames`: es opcional, y permite asignar nombres a las filas y columnas de la matriz mediante una lista de dos elementos, el primero para las filas y el segundo para las columnas.

<br>

En cuanto al número de filas y columnas, si solo se especifica uno de los dos parámetros, el otro se calcula automáticamente. Si se especifican los dos, se debe tener en cuenta que el número de elementos de la matriz debe coincidir con el número de filas por el número de columnas.

He aquí un ejemplo:

```r
matriz <- matrix(1:6, nrow = 2, ncol = 3, dimnames = list(c("fila1", "fila2"), c("columna1", "columna2", "columna3")))
matriz
```

<br>

Este es el resultado:

![01-crear-matriz](https://user-images.githubusercontent.com/110897750/206911592-cf07476c-1b8d-4442-bbe2-39b2e3a072bc.jpg)

<br>

Si se ha creado una matriz cuyos nombres de filas y columnas no se han especificado, se pueden añadir posteriormente utilizando las funciones `rownames()` y `colnames()`:

```r
matriz <- matrix(1:6, nrow = 2, ncol = 3)
rownames(matriz) <- c("fila1", "fila2")
colnames(matriz) <- c("columna1", "columna2", "columna3")
```

<br>

Este código tendría el mismo resultado que el anterior.


<br><hr>


### Acceder a los elementos de las matrices

Para acceder a los elementos de las matrices, se utiliza la misma sintaxis que para los vectores, pero añadiendo la posición de la fila y la columna del elemento que se desea acceder, separadas por una coma.

Si no se especifican los nombres de las filas y columnas, se accederá a los elementos de la matriz por su posición, empezando por la fila 1 y la columna 1.

También se puede acceder a toda la fila, toda la columna o a un rango de filas o columnas.

He aquí unos ejemplos:

```r
matriz <- matrix(1:6, nrow = 2, ncol = 3, dimnames = list(c("fila1", "fila2"), c("columna1", "columna2", "columna3")))
matriz[1, 2] # fila 1 y la columna 2
matriz[2, ] # toda la fila 2
matriz[ , 3] # toda la columna 3
matriz[1:2, 2:3] # rango de filas 1 a 2 y rango de columnas 2 a 3
```

<br>

Este es el resultado:

![02-acceder-a-valores](https://user-images.githubusercontent.com/110897750/206911593-e8d27613-59a1-4516-97b2-a103cdff52ee.jpg)

<sub>[Listas](#listas) | [Volver al índice](#indice) | [Data frames](#data-frames)</sub>


<br><hr>


### Modificar los valores

Para modificar los valores de una matriz, se utiliza la misma sintaxis que para acceder a los elementos, pero añadiendo el nuevo valor que se desea asignar. Es decir, en primer lugar, se debe acceder al elemento que se desea modificar, y en segundo lugar, se debe asignar el nuevo valor.

He aquí un ejemplo:

```r
# creación de la matriz
matriz <- matrix(1:6, nrow = 2, ncol = 3, dimnames = list(c("fila1", "fila2"), c("columna1", "columna2", "columna3")))
matriz

# modificación del valor
matriz[1, 2] <- 10
matriz
```

<br>

Como se puede observar, se ha modificado el valor de la fila 1 y la columna 2, pasando de 3 a 10.

Este es el resultado:

![03-modificar-valores](https://user-images.githubusercontent.com/110897750/206911596-aa34272b-db53-4398-879d-37ae77c12ecb.jpg)

<sub>[Listas](#listas) | [Volver al índice](#indice) | [Data frames](#data-frames)</sub>


<br><hr>


### Trasposición de matrices

Para trasponer una matriz, se utiliza la función `t()`. Esta función no modifica la matriz original, sino que crea una nueva matriz con los valores de la matriz original, pero con las filas y las columnas intercambiadas.

Si se desea modificar la matriz original, deberá asignarse el resultado de la función `t()` a la matriz original.

He aquí un ejemplo:

```r
# creación de la matriz
matriz <- matrix(1:6, nrow = 2, ncol = 3, dimnames = list(c("f1", "f2"), c("c1", "c2", "c3")))
matriz

# trasposición de la matriz
t(matriz)
```

<br>

Este es el resultado:

![04-trasponer-matriz](https://user-images.githubusercontent.com/110897750/206911597-d3b1970e-1421-4d73-b36d-17a5dd3e62a6.jpg)

<sub>[Listas](#listas) | [Volver al índice](#indice) | [Data frames](#data-frames)</sub>


<br><hr>
<hr><br>


## Data frames

<sub>* [Ver código](05-data-frames.R)</sub>

Los data frames son una estructura de datos que permite almacenar datos de diferentes tipos en forma de tabla. Cada columna de la tabla representa una variable, y cada fila representa una observación.

Los data frames son una estructura de datos muy útil para el análisis de datos, ya que permiten almacenar datos de diferentes tipos en una misma estructura de datos, y además, permiten realizar operaciones con los datos de forma muy sencilla.

Los data frames se pueden crear de forma manual, o bien, a partir de un fichero de datos.

He aquí un ejemplo de creación de un data frame de forma manual:

```r
dataF1 <- data.frame(
    nombre = c("June", "Naia", "Cristina", "Pablo"),
    edad = c(24, 24, 28, 26),
    ciudad = c("Amorebieta", "Amorebieta", "Murcia", "Galdakao")
)

dataF1
```

<br>

Este es el resultado:

<img id="ejemplo-dataframe" src="https://user-images.githubusercontent.com/110897750/206912009-280f7fb2-a6d1-4111-9572-efc927b91984.jpg" alt="ejemplo-dataframe">

<br>

Por otro lado, se hablará de la creación de data frames a través de ficheros de datos en la sección de [importación de datos del **TEMA 4**](../04-importar-exportar-datos/README.md#importar-datos).


<br><hr>


### Acceder a los valores de los data frames

Para acceder a los valores de los data frames, se utiliza la misma sintaxis que para los vectores y las matrices, aunque se puede añadir el nombre de la columna del elemento que se desea acceder. Es decir, que si no se especifica el nombre de la columna, se accederá al elemento por su posición, empezando por la fila 1 y la columna 1.

También se puede acceder a toda la fila, toda la columna o a un rango de filas o columnas.

He aquí unos ejemplos:

```r
# creación del data frame
dataF1 <- data.frame(
    nombre = c("June", "Naia", "Cristina", "Pablo"),
    edad = c(24, 24, 28, 26),
    ciudad = c("Amorebieta", "Amorebieta", "Murcia", "Galdakao")
)

# acceso a los valores
dataF1[1, 2] # fila 1 y columna 2
dataF1[1, "edad"] # fila 1 y columna "edad"
dataF1[1, ] # toda la fila 1
dataF1[ , 2] # toda la columna 2
dataF1[ , "edad"] # toda la columna "edad"
dataF1[1:2, 2:3] # rango de filas 1 a 2 y rango de columnas 2 a 3
```

<br>

El data frame creado es el mismo que el ya visto en el [ejemplo anterior](#ejemplo-dataframe).

Este es el resultado:

![01-acceder-a-valores](https://user-images.githubusercontent.com/110897750/206911645-94336d0a-bb6b-4a94-8fe5-b9d970898a54.jpg)

<sub>[Matrices](#matrices) | [Volver al índice](#indice) | [Factores](#factores)</sub>


<br><hr>


### Añadir nuevos valores

Añadir valores nuevos a un data frame es tan sencillo como escribir el nombre que se desea dar a dicha columna e insertar un vector con los valores que se desean añadir.

He aquí un ejemplo:

```r
# creación del data frame
dataF1 <- data.frame(
    nombre = c("June", "Naia", "Cristina", "Pablo"),
    edad = c(24, 24, 28, 26),
    ciudad = c("Amorebieta", "Amorebieta", "Murcia", "Galdakao")
)

# añadir nueva columna
dataF1$altura <- c(1.72, 1.62, 1.54, 1.80)
dataF1
```

<br>

Este es el resultado:

![02-añadir-valores](https://user-images.githubusercontent.com/110897750/206911647-9931883e-993a-48e3-abf0-3c8b2179932d.jpg)

<sub>[Matrices](#matrices) | [Volver al índice](#indice) | [Factores](#factores)</sub>


<br><hr>


### Filtrar datos

En ocasiones se desea tener acceso a los datos que cumplan una daterminada condición. Por ello, se pueden filtrar u obtener algunos datos específicos de un data frame de diferentes formas.

He aquí algunas de ellas:

* **FORMA 1:** Seleccionando las filas y/o columnas que cumplan una condición.
* **FORMA 2:** Utilizando la función `subset()`.
* **FORMA 3:** Utilizando la función `which()`.

He aquí unos ejemplos:

```r
# creación del data frame
dataF1 <- data.frame(
    nombre = c("June", "Naia", "Cristina", "Pablo"),
    edad = c(24, 24, 28, 26),
    ciudad = c("Amorebieta", "Amorebieta", "Murcia", "Galdakao")
)
```

<br>

#### FORMA 1

```r
dataF1[dataF1$edad > 25, ] # filas que cumplan la condición
dataF1[dataF1$edad > 25, "nombre"] # filas que cumplan la condición y columna "nombre"
```

<br>

Este sería el resultado:

![03-filtrar-datos1](https://user-images.githubusercontent.com/110897750/206911649-3cac2cf7-261d-4629-82f6-3a5d973f4f2e.jpg)

<br>

#### FORMA 2

```r
subset(dataF1, edad > 25) # filas que cumplan la condición
subset(dataF1, edad > 25, select = nombre) # filas que cumplan la condición y columna "nombre"
```

<br>

Este sería el resultado:

![04-filtrar-datos2](https://user-images.githubusercontent.com/110897750/206911650-e0ef2727-da28-4059-8e39-d3a2687f7554.jpg)

<br>

#### FORMA 3

```r
which(dataF1$edad > 25) # filas que cumplan la condición
dataF1[which(dataF1$edad > 25), ] # filas que cumplan la condición
dataF1[which(dataF1$edad > 25), "nombre"] # filas que cumplan la condición y columna "nombre"
```

<br>

Como se puede obserbar, en esta última forma, se obtiene el número de la fila que cumple la condición. Para obtener los datos de dicha fila, se debe indicar el número de la fila entre corchetes, o aplicar la condición directamente dentro de los mismos, puesto que `which()` devuelve la posición, no el valor.

Este es el resultado:

![04-filtrar-datos3](https://user-images.githubusercontent.com/110897750/206911651-53e41e10-acb8-4f82-9809-dddb991db741.jpg)

<sub>[Matrices](#matrices) | [Volver al índice](#indice) | [Factores](#factores)</sub>


<br><hr>


### Examinar datos y operar con ellos

Para examinar los datos de un data frame, se puede utilizar la función `summary()`. Esta función devuelve un resumen de los datos, como la media, la mediana, el mínimo, el máximo, etc.

He aquí un ejemplo:

```r
# creación del data frame
dataF1 <- data.frame(
    nombre = c("June", "Naia", "Cristina", "Pablo"),
    edad = c(24, 24, 28, 26),
    ciudad = c("Amorebieta", "Amorebieta", "Murcia", "Galdakao")
)

# resumen de los datos
summary(dataF1)
```

<br>

Este es el resultado:

![05-summary-total](https://user-images.githubusercontent.com/110897750/206911652-c0ebadb4-1ca9-470f-9e16-82c37a45903c.jpg)

<br>

También se puede obtener el resumen de una columna en concreto:

```r
summary(dataF1$edad)
```

<br>

Este es el resultado:

![06-summary-a-columna](https://user-images.githubusercontent.com/110897750/206911654-931267c1-69e9-4b44-9c42-ef939f56ce34.jpg)

<br>

Operar con los datos de un data frame es tan sencillo como seleccionar una columna y aplicar una función a los datos de dicha columna.

He aquí un ejemplo:

```r
# creación del data frame
dataF1 <- data.frame(
    nombre = c("June", "Naia", "Cristina", "Pablo"),
    edad = c(24, 24, 28, 26),
    ciudad = c("Amorebieta", "Amorebieta", "Murcia", "Galdakao")
)

# operar con los datos
mean(dataF1$edad)
```

<br>

Este es el resultado:

![07-operaciones-con-datos](https://user-images.githubusercontent.com/110897750/206911656-286a5b0c-b8d7-4280-8a1d-de4609ba4d2b.jpg)

<sub>[Matrices](#matrices) | [Volver al índice](#indice) | [Factores](#factores)</sub>


<br><hr>
<hr><br>


## Factores

<sub>* [Ver código](05-data-frames.R)</sub>

Los factores son una estructura de datos que se utiliza para representar variables categóricas. Estas variables categóricas pueden ser de dos tipos:

* **ORDINALES:** Las variables ordinales son aquellas que tienen un orden, como por ejemplo, el nivel de satisfacción de un cliente, que puede ser bajo, medio o alto.
* **NOMINALES:** Las variables nominales son aquellas que no tienen un orden, como por ejemplo, el lanzamiento de una moneda, cuyo resultado puede ser cara o cruz.


<br><hr>


### Creación de factores

Para crear un factor, se puede utilizar la función `factor()`. Esta función recibe como argumento un vector de datos, y devuelve un factor.

He aquí un ejemplo:

```r
# creación de un factor
factor(c("Buena", "Mala", "Muy buena", "Buena", "Muy mala"))
```

<br>

Este es el resultado:

![01-crear-factors](https://user-images.githubusercontent.com/110897750/206911658-c2f55d56-5f0e-4d44-8ea1-d5d9f4c3d526.jpg)

<br>

Como se puede observar, la función `factor()` ha creado un factor con los datos que le hemos pasado como argumento. Sin embargo, no se ha especificado el orden de las categorías, por lo que R ha asignado el orden alfabético.

Para especificar el orden de las categorías, se puede utilizar el argumento `levels = `.

He aquí un ejemplo:

```r
factor(
    c("Buena", "Mala", "Muy buena", "Buena", "Muy mala"),
    levels = c("Muy buena", "Buena", "Neutral", "Mala", "Muy mala")
)
```

<br>

Este es el resultado:

![02-factor-con-levels](https://user-images.githubusercontent.com/110897750/206911659-9fe47787-4c05-442c-a72f-08a8280d8eb4.jpg)

<br>

De nuevo, la función `factor()` ha creado un factor con los datos que le hemos pasado como argumento, pero esta vez teniendo en cuenta el orden de las categorías que le hemos especificado.

<sub>[Data frames](#data-frames) | [Volver al índice](#indice)</sub>


<br><hr>


### Operar con factores

Para operar con factores, se puede utilizar la función `table()`. Esta función recibe como argumento un factor, y devuelve un data frame con la frecuencia de cada categoría.

He aquí un ejemplo:

```r
# creación de un factor
myFactor <- factor(
    c("Buena", "Mala", "Muy buena", "Buena", "Muy mala"),
    levels = c("Muy buena", "Buena", "Neutral", "Mala", "Muy mala")
)

# operar con el factor
table(myFactor)
```

<br>

Este es el resultado:

![03-table](https://user-images.githubusercontent.com/110897750/206911660-2f4a677f-12f5-4f6a-b5e2-f186335bb644.jpg)

<br>

Como se puede observar, la función `table()` ha creado un data frame con la frecuencia de cada categoría, por lo que ahora podemos operar con los datos de dicho data frame de la misma forma que la vista en el apartado de [data frames](#data-frames).

<sub>[Data frames](#data-frames) | [Volver al índice](#indice)</sub>


<br><hr>
<hr><br>


[<< TEMA 2](../02-control-de-flujo/README.md#condiciones-bucles-y-funciones) | [TEMA 4 >>](../04-importar-exportar-datos/README.md#importar-y-exportar-datos)

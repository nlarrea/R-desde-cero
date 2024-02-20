# ENUNCIADOS DE EJERCICIOS BÁSICOS DE R

En esta carpeta se encuentran los enunciados de los ejercicios básicos de R. Se entienden como *ejercicios básicos* aquellos que sean para practicar los conceptos de R, cómo crear funciones, mejorar la lógica de programación, etc.

<p id="indice">He aquí una lista de los enunciados (se irán añadiendo más con el tiempo):</p>

* **#00** - [Fizz Buzz](#00---fizz-buzz)
* **#01** - [Anagramas](#01---anagramas)
* **#02** - [Secuencia de Fibonacci](#02---secuencia-de-fibonacci)

<br>

[<< TEORÍA](../../TEORIA/) | [Estadística descriptiva >>](../02-estadistica-descriptiva/)


<br><hr>
<hr><br>


## 00 - Fizz Buzz

<sub>[Volver al índice](#indice) | [#01 - Anagramas](#01---anagramas)</sub>

**Escribe un programa que muestre por consola (con un print) los números de 1 a 100 (ambos incluidos y con un salto de línea entre cada impresión), sustituyendo los siguientes:**

* **Multiplos de 3 por la palabra "fizz".**
* **Multiplos de 5 por la palabra "buzz".**
* **Multiplos de 3 y de 5 a la vez por la palabra "fizzbuzz".**

<br>

<details>
<summary>SOLUCIÓN</summary>
<p>

```r
for(i in 1:100){
    if(i %% 3 == 0 & i %% 5 == 0) print("fizzbuzz")
    else if(i %% 3 == 0) print("fizz")
    else if(i %% 5 == 0) print("buzz")
    else print(i)
}
```

</p>
<p>
    <a href="https://github.com/nlarrea/R-desde-cero/blob/main/EJERCICIOS/01-ejercicios-basicos/00-fizzbuzz.R">
        Verlo en el repositorio
    </a>
</p>
</details>


<br><hr>
<hr><br>


## 01 - Anagramas

<sub>[#00 - Fizz Buzz](#00---fizz-buzz) | [Volver al índice](#indice) | [#02 - Secuencia de Fibonacci](#02---secuencia-de-fibonacci)</sub>


**Escribe una función que reciba dos palabras (String) y retorne verdadero o falso (Boolean) según sean o no anagramas.**

**Un Anagrama consiste en formar una palabra reordenando TODAS las letras de otra palabra inicial.**

* **NO hace falta comprobar que ambas palabras existan.**
* **Dos palabras exactamente iguales no son anagrama.**

<br>

<details>
<summary>SOLUCIÓN</summary>
<p>

```r
isAnagram <- function(str1 = "", str2 = ""){
    if(length(str1) != length(str2)) return(FALSE) # si no tienen la misma longitud, no son anagramas
    if(tolower(str1) == tolower(str2)) return(FALSE) # si son iguales, no son anagramas
  
    # install.packages("gtools") # quitar el comentario si no se tiene instalado el paquete
    library(gtools) # activar la librería

    # crear listas con las letras de cada palabra ordenadas alfabéticamente
    list1 <- c(mixedsort(strsplit(tolower(str1), "")[[1]]))
    list2 <- c(mixedsort(strsplit(tolower(str2), "")[[1]]))

    # comparar cada letra de cada palabra
    for(i in 1:nchar(str1)){
      if(list1[i] != list2[i]) return(FALSE) # si alguna letra es diferente, no son anagramas
    }

    return(TRUE) # si llega hasta aquí, son anagramas
}

# pruebas de que el código funciona
print(isAnagram("mora", "roma")) # TRUE
print(isAnagram("pose", "rose")) # FALSE
print(isAnagram("hello", "world")) # FALSE
print(isAnagram("hello", "olleh")) # TRUE
```

</p>
<p>
    <a href="https://github.com/nlarrea/R-desde-cero/blob/main/EJERCICIOS/01-ejercicios-basicos/01-anagrama.R">
        Verlo en el repositorio
    </a>
</p>
</details>


<br><hr>
<hr><br>


## 02 - Secuencia de Fibonacci

<sub>[#01 - Anagramas](#01---anagramas) | [Volver al índice](#indice)</sub>

**Escribe un programa que pida al usuario un número entero positivo (N, por ejemplo) y muestre por pantalla los primeros N números de la secuencia de Fibonacci, comenzando desde el 0.**

<br>

Evidentemente, existen varias formas de resolver este problema. Aquí se presentan dos de ellas: una utilizando varios argumentos, y otra utilizando una función recursiva.

<details>
<summary>SOLUCIÓN 1 - varias variables y argumentos</summary>
<p>

```r
# función que retorna los números
fib <- function(i, f1, f2){
    if(i == 0) return(0)
    else if(i == 1) return(1)
    return(f1 + f2)
}

# inicialización de variables
fib1 <- 0
fib2 <- 0
i <- 0

# solicitud de número al usuario
num <- readline(prompt = "Introduce un número entero: ")

# bucle para imprimir los "num" primeros números de Fibonacci
while(i < num){
    actualFib <- fib(i, fib1, fib2) # llamada a la función
    print(actualFib) # imprime el número Fibonacci
    # actualización de variables
    fib2 <- fib1
    fib1 <- actualFib
    i <- i + 1
}
```

</p>
<p>
    <a href="https://github.com/nlarrea/R-desde-cero/blob/main/EJERCICIOS/01-ejercicios-basicos/02-secuencia-fibonacci.R">
        Verlo en el repositorio
    </a>
</p>
</details>
<details>
<summary>SOLUCIÓN 2 - función recursiva</summary>
<p>

```r
# función recursiva
fib <- function(n) {
    if (n == 1) return(0)
    else if(n == 2) return(1)
    return(fib(n - 1) + fib(n - 2))
}

# solicitud de número al usuario
num <- readline(prompt = "Introduce un número entero: ")

for(i in 1:num){
    actualFib <- fib(i) # llamada a la función
    print(actualFib) # imprimir los números
}
```

</p>
</details>

<br><br>


[<< TEORÍA](../../TEORIA/) | [Estadística descriptiva >>](../02-estadistica-descriptiva/)

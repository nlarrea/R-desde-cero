# GRÁFICOS

En R se trabaja con datos de todo tipo. En ocasiones se desea mostrar dichos datos de forma más visual, y para ello, se pueden crear varios tipos de gráficos utilizando unos comandos muy simples.

En este apartado, se explicará cómo generar y guardar gráficos de diferentes tipos, e incluso cómo analizar u obtener datos de algunos de ellos.

<p id="índice">He aquí el índice de los temas a tratar en este apartado:</p>

* [Plot](#plot)
  * [Tipos de líneas](#tipos-de-líneas)
  * [Insertar varias líneas](#insertar-varias-líneas)
* [Gráficos de barras](#gráficos-de-barras)
  * [Renombrar las barras](#renombrar-las-barras)
  * [Gráfico en horizontal](#gráfico-en-horizontal)
* [Gráfico de secciones](#gráfico-de-secciones)
* [Diagrama de cajas](#diagrama-de-cajas)
  * [Obtener datos del diagrama](#obtener-datos-del-diagrama)
  * [Diagrama de cajas con datos agrupados](#diagrama-de-cajas-con-datos-agrupados)
* [Histogramas](#histogramas)
* [Diagrama de tallos y hojas](#diagrama-de-tallos-y-hojas)

<br>

[<< TEMA 5](../05-analizar-datos/README.md#analizar-datos) | [EJERCICIOS](https://github.com/nlarrea/R-desde-cero/tree/main/EJERCICIOS)

<br>

Es importante recordar que para generar gráficos **se recomienda trabajar dentro del directorio** donde se desearía guardar dicho gráfico.

Para ello, existen dos comandos útiles vistos ya anteriormente en el [TEMA 4](../04-importar-exportar-datos/README.md#importar-y-exportar-datos):

* *`getwd()`:* muestra el directorio en el que nos encontramos actualmente.
* *`setwd()`:* permite modificar el directorio de trabajo.

<br>

He aquí un ejemplo de cómo utilizarlos:

```r
# ver en qué directorio estamos
getwd()

# cambiar a otro directorio
setwd("C:/User/larre/Desktop")
```

<br>

El resultado de dicho código es el propio cambio de directorio.
  

<br><hr>
<hr><br>


## Plot

<sub>* [Ver código](01-plot.R)</sub>

Para crear este tipo de gráficos se utiliza el comando `plot()`, indicando los siguientes argumentos:

* ***`x`*:** indica qué valores hay en el eje X.
* ***`y`*:** indica qué valores hay en el eje Y.
* ***`main`*:** se introduce el título del gráfico (opcional).
* ***`xlab`*:** se introduce una etiqueta en los datos del eje X. (opcional)
* ***`ylab`*:** se introduce una etiqueta en los datos del eje Y. (opcional)
* ***`type`*:** se especifica el tipo de línea deseada. Por defecto serán puntos. (opcional)
* ***`col`*:** se especifica el color de la línea.

<br>

Se pueden generar gráficos insertando un rango para `x` e `y`, o también insertar variables.

He aquí un ejemplo:

```r
# utilizando rangos
plot(1:5, main = "Gráfico 1", xlab = "Eje X", ylab = "Eje Y")

# utilizando variables
x <- mtcars$wt 
y <- mtcars$drat 
plot(x, y, xlab = "weight", ylab = "rear axle ratio")
```

<br>

Estos son los gráficos resultantes de dicho código:

* **Gráfico 1:**

![01-plot1](https://user-images.githubusercontent.com/110897750/206936595-381c3b6b-66a8-46ef-861e-59fe6ddcc627.png)

<br>

* **Gráfico 2:**

![01-plot2](https://user-images.githubusercontent.com/110897750/206936597-316e9484-be23-4f81-8d92-b10465f80483.png)


<br><hr>


### Tipos de líneas

Se pueden generar gráficos especificando el tipo de línea que se desea utilizar. Para ello, se usa el argumento `type`. Se va a utilizar el mismo gráfico que en el ejemplo anterior, pero especificando el tipo de línea para mostrar todas las opciones disponibles.

* ***`p`*: puntos (por defecto)**

```r
plot(1:5, main = "Gráfico 1", xlab = "Eje X", ylab = "Eje Y", type = "p")
```

<br>

![01-type-p](https://user-images.githubusercontent.com/110897750/206936595-381c3b6b-66a8-46ef-861e-59fe6ddcc627.png)

<br>

* ***`l`*: líneas**

```r
plot(1:5, main = "Gráfico 1", xlab = "Eje X", ylab = "Eje Y", type = "l")
```

<br>

![02-type-l](https://user-images.githubusercontent.com/110897750/206936598-91bc7afa-1aaf-4500-ab23-c9bb6eb4adbf.png)

<br>

* ***`b`*: ambos**

```r
plot(1:5, main = "Gráfico 1", xlab = "Eje X", ylab = "Eje Y", type = "b")
```

<br>

![03-type-b](https://user-images.githubusercontent.com/110897750/206936599-1941bd32-5608-417e-8fa4-f2acd0fc63ad.png)

<br>

* ***`c`*: sólo la parte de líneas de "b"**

```r
plot(1:5, main = "Gráfico 1", xlab = "Eje X", ylab = "Eje Y", type = "c")
```

<br>

![04-type-c](https://user-images.githubusercontent.com/110897750/206936600-adedd18c-1b9d-49df-957b-8a7302dc6325.png)

<br>

* ***`o`*: ambos "sobreimpresos"**

```r
plot(1:5, main = "Gráfico 1", xlab = "Eje X", ylab = "Eje Y", type = "o")
```

<br>

![05-type-o](https://user-images.githubusercontent.com/110897750/206936601-6e763d14-8ad3-466a-be27-9776f20b8867.png)

<br>

* ***`h`*: líneas verticales "histograma" (o de alta densidad)**

```r
plot(1:5, main = "Gráfico 1", xlab = "Eje X", ylab = "Eje Y", type = "h")
```

<br>

![06-type-h](https://user-images.githubusercontent.com/110897750/206936603-955871c8-8955-4674-a3c7-e00a00506582.png)

<br>

* ***`s`*: escalones, moviéndose primero en horizontal y luego en vertical**

```r
plot(1:5, main = "Gráfico 1", xlab = "Eje X", ylab = "Eje Y", type = "s")
```

<br>

![07-type-s](https://user-images.githubusercontent.com/110897750/206936604-2564306f-a336-4f57-9a8f-b25951db1dc1.png)

<br>

* ***`S`*: escalones, moviéndose primero en vertical y luego en horizontal**

```r
plot(1:5, main = "Gráfico 1", xlab = "Eje X", ylab = "Eje Y", type = "S")
```

<br>

![08-type-S](https://user-images.githubusercontent.com/110897750/206936605-1ca768d8-f1ba-43bf-9adc-8ec68164f4a1.png)

<br>

* ***`n`*: sin gráfico**

```r
plot(1:5, main = "Gráfico 1", xlab = "Eje X", ylab = "Eje Y", type = "n")
```

<br>

![09-type-n](https://user-images.githubusercontent.com/110897750/206936606-9ac4db60-7513-48ab-96bd-76f45c4f2c5c.png)

<sub>[Volver al índice](#índice) | [De barras](#gráficos-de-barras)</sub>


<br><hr>


### Insertar varias líneas

Se pueden insertar varias líneas en un mismo gráfico. Para ello, se utiliza el comando `lines()` después de haber generado el gráfico con `plot()`.

He aquí un ejemplo:

```r
# datos de las líneas
line1 <- c(0, 8, 14, 42)
line2 <- c(2, 4, 6, 8)

# creación del gráfico
plot(line1, main = "Multilínea", xlab = "X", ylab = "Y", type = "l", col = "blue")
lines(line2, type = "l", col = "red")
```

<br>

Este es el resultado:

![10-plot-multilinea](https://user-images.githubusercontent.com/110897750/206936607-06b4dfb8-8a44-47c7-a1a0-ad4c9c72ca24.png)

<sub>[Volver al índice](#índice) | [De barras](#gráficos-de-barras)</sub>


<br><hr>
<hr><br>


## Gráficos de barras

<sub>* [Ver código](02-barplot.R)</sub>

Se pueden generar gráficos de barras con el comando `barplot()`. Al igual que con los gráficos de líneas, se pueden personalizar de muchas maneras.

He aquí un ejemplo:

```r
barplot(mtcars$mpg, main = "Gráfico de barras", xlab = "X", ylab = "Y", col = "#82D173")
```

<br>

Este es el resultado:

![01-gráfico-básico](https://user-images.githubusercontent.com/110897750/206936771-f8956a6e-8930-4833-a869-c968f3afcd54.png)


<br><hr>


### Renombrar las barras

Se pueden renombrar las barras del gráfico de barras. Para ello, se usa el argumento `names.arg`.

He aquí un ejemplo:

```r
# datos a introducir
data <- c(10,42,8,100)

# nombres para los datos
x <- c("A", "B", "C", "D")

# creación del gráfico de barras
barplot(data, names.arg = x)
```

<br>

Este es el resultado:

![02-renombrar-barras](https://user-images.githubusercontent.com/110897750/206936773-e29828b7-9fef-488c-9e78-5c3399e1335c.png)

<sub>[Plot](#plot) | [Volver al índice](#índice) | [De secciones](#gráfico-de-secciones)</sub>


<br><hr>


### Gráfico en horizontal

Se puede generar un gráfico de barras en horizontal. Para ello, se usa el argumento `horiz = TRUE`.

Siguiendo con el ejemplo anterior:

```r
barplot(data, names.arg = x, horiz = TRUE)
```

<br>

Este es el resultado:

![03-gráfico-horizontal](https://user-images.githubusercontent.com/110897750/206936775-08b51af7-ac02-493f-8fb0-b6c966071429.png)

<sub>[Plot](#plot) | [Volver al índice](#índice) | [De secciones](#gráfico-de-secciones)</sub>


<br><hr>
<hr><br>


## Gráfico de secciones

<sub>* [Ver código](03-pie.R)</sub>

Este tipo de gráfico es también conocido como el gráfico de pastel o de quesito. Se puede generar con el comando `pie()`.

Así como en el [apartado anterior](#renombrar-las-barras) se ha visto que se pueden renombrar las barras, se ha de saber que también se pueden renombrar las secciones del gráfico de secciones. Para ello, se usa el argumento `labels`.

He aquí un ejemplo:

```r
# introducción de los datos
data <- c(10,42,8,100)

# nombres para los datos
x <- c("A", "B", "C", "D")

# creación del gráfico de secciones
pie(data, labels = x)
```

<br>

Este es el resultado:

![01-gráfico-de-secciones](https://user-images.githubusercontent.com/110897750/206937069-183d79ee-456d-4247-aa16-7168f94478d2.png)

<br>

He aquí otro ejemplo un poco más elaborado:

```r
# agrupar datos en base a la columna "gear"
data <- tapply(mtcars$hp, mtcars$gear, mean)

# obtención de los nombres
etiquetas <- names(data)
i <- 1
for (etiqueta in etiquetas) {
  etiquetas[i] <- paste(etiqueta, "gear")
  i <- i + 1
}

# colores para el gráfico
colors <- c("#8B1E3F77", "#3C153B77", "#DB4C4077")

# creación del gráfico
pie(data, labels = etiquetas, main = "Average HP by Gears", col = colors)
legend(1, 0.5, etiquetas, cex = 0.7, fill = colors)
```

<br>

Con ese código se indica que se agrupen los datos de la columna `hp` en base a la columna `gear`, y que se obtenga la media de cada grupo. Luego, se obtienen los nombres de los grupos y se les añade el texto "gear" al final. Por último, se crea el gráfico de secciones.

Este es el resultado:

![02-gráfico-de-secciones-completo](https://user-images.githubusercontent.com/110897750/206937072-1f7dd37c-33bb-4eb4-bb8e-701932ddf0f0.png)

<sub>[De barras](#gráficos-de-barras) | [Volver al índice](#índice) | [De cajas](#diagrama-de-cajas)</sub>


<br><hr>
<hr><br>


## Diagrama de cajas

<sub>* [Ver código](04-boxplots-histograms.R)</sub>

Se puede generar un diagrama de cajas con el comando `boxplot()`. Este tipo de gráfico es muy útil para el análisis de datos, puesto que muestra los siguientes datos:

* El valor mínimo.
* El primer cuartil.
* La mediana o segundo cuartil.
* El tercer cuartil.
* El valor máximo.

<br>

Además, se puede ver si existe o no algún valor atípico.

He aquí un ejemplo:

```r
# generación de datos
data <- c(115, 232, 181, 161, 155, 137, 165, 171, 139, 130, 406)

# creación del gráfico
boxplot(data, main = "Diagrama vertical", col = "#82d173")
```

<br>

Este es el resultado:

![01-diagrama](https://user-images.githubusercontent.com/110897750/206936836-4fa5083a-1149-4009-b81b-b962591c9fc6.png)

<br>

Se puede generar un diagrama de cajas en horizontal. Para ello, se usa el argumento `horizontal = TRUE`.

Siguiendo con el ejemplo anterior:

```r
boxplot(data, main = "Diagrama horizontal", col = "#82d173", horizontal = TRUE)
```

<br>

Este es el resultado:

![02-diagrama-horizontal](https://user-images.githubusercontent.com/110897750/206936837-701849c8-e5b5-424f-8413-b2f370635270.png)

<sub>[De secciones](#gráfico-de-secciones) | [Volver al índice](#índice) | [Histogramas](#histogramas)</sub>


<br><hr>


### Obtener datos del diagrama

Se puede obtener los datos del diagrama de cajas con el comando `boxplot.stats()`. Este comando devuelve un objeto de tipo `list`, que contiene los siguientes datos:

* ***`stats`*:** contiene los datos del diagrama de cajas.
* ***`n`*:** número de datos.
* ***`conf`*:** intervalo de confianza.
* ***`out`*:** valores atípicos.

<br>

Se va a continuar con el ejemplo anterior:

```r
# generación de datos
data <- c(115, 232, 181, 161, 155, 137, 165, 171, 139, 130, 406)

# creación del gráfico
boxplot(data, main = "Diagrama vertical", col = "#82d173")

# obtención de los datos
boxplot.stats(data)
```

<br>

Como se podía ver, existe un dato atípico. Al usar el comando `boxplot.stats()`, se obtiene el valor `406`, que es el dato en cuestión.

Este es el resultado:

![03-obtención-de-datos](https://user-images.githubusercontent.com/110897750/206936838-4a742024-4b0c-45ef-bd59-b51b10821dba.png)

<br>

Se pueden visualizar los datos obtenidos en el diagrama de cajas y darle cierto estilo. Para ello, se creará el diagrama como ya se ha visto anteriormente, utilizando los siguientes argumentos dentro del comando `boxplot()`:

* ***`boxwex`*:** ancho de la caja.
* ***`staplewex`*:** ancho de los *bigotes*. Cuando su valor es `1`, toman el ancho de la caja.
* ***`outcol`*:** color de los valores atípicos.
* ***`axes`*:** si se muestra o no la caja exterior.

<br>

A continuación, se creará la *"etiqueta"* que mostrará los datos obtenidos. Para ello, se utilizará el comando `text()`, que recibe como argumentos:

* ***`x`*:** posición horizontal.
* ***`y`*:** posición vertical.
* ***`labels`*:** texto a mostrar.
* ***`cex`*:** tamaño del texto.

<br>

Siguiendo con el ejemplo anterior:

```r
# generación de datos
data <- c(115, 232, 181, 161, 155, 137, 165, 171, 139, 130, 406)

# creación del gráfico
boxplot(data, horizontal = TRUE, axes = FALSE, staplewex = 1, boxwex = 0.8, outcol = "red")

# creación de la etiqueta
text(x = fivenum(data), labels = fivenum(data), y = 1.3, cex = 0.6)
```

<br>

Este es el resultado:

![04-caja-con-datos](https://user-images.githubusercontent.com/110897750/206938294-6f300382-1234-4bb8-a83a-66a9d815a059.png)


<sub>[De secciones](#gráfico-de-secciones) | [Volver al índice](#índice) | [Histogramas](#histogramas)</sub>


<br><hr>


### Diagrama de cajas con datos agrupados

Se puede generar un diagrama de cajas con datos agrupados. Para ello, se usa el comando `boxplot()`, pero se le pasa como argumento un objeto de tipo `data.frame`.

He aquí un ejemplo:

```r
boxplot(mtcars)
```

<br>

Este es el resultado:

![05-data-frame](https://user-images.githubusercontent.com/110897750/206936839-637324a4-afa6-43a1-a99d-16e815c29ae7.png)

<br>

También se pueden agrupar datos de una columna en base a otra utilizando el símbolo `~`.

He aquí un ejemplo:

```r
boxplot(mtcars$mpg ~ mtcars$gear, main = "Diagrama de cajas con datos agrupados", xlab = "Gears", ylab = "Miles per gallon")
```

<br>

Este es el resultado:

![06-datos-agrupados](https://user-images.githubusercontent.com/110897750/206936840-ed936872-8f70-4a5b-9dd8-3b4b01916e65.png)

<sub>[De secciones](#gráfico-de-secciones) | [Volver al índice](#índice) | [Histogramas](#histogramas)</sub>


<br><hr>
<hr><br>


## Histogramas

<sub>* [Ver código](04-boxplots-histograms.R)</sub>

Se puede generar un histograma con el comando `hist()`. Este tipo de gráfico es muy útil para el análisis de datos, puesto que muestra la frecuencia de los datos.

He aquí un ejemplo:

```r
hist(mtcars$mpg, main = "Histograma", xlab = "Miles per gallon", col = "#82d173")
```

<br>

Este es el resultado:

![01-histogramas](https://user-images.githubusercontent.com/110897750/206936885-fca60ef8-b7dc-4fa1-8392-e9a5cf8c38db.png)

<sub>[De cajas](#diagrama-de-cajas) | [Volver al índice](#índice) | [Tallos y hojas](#diagrama-de-tallos-y-hojas)</sub>


<br><hr>
<hr><br>


## Diagrama de tallos y hojas

<sub>* [Ver código](05-diagrama-de-tallos.R)</sub>

Se puede generar un diagrama de tallos y hojas con el comando `stem()`. No se genera un gráfico como tal, sino que se muestra el resultado en la consola, sin embargo, se podría calificar como un gráfico.

Con este tipo de *gráfico* se puede obtener de forma rápida la frecuencia de los datos puesto que los agrupa en intervalos.

He aquí un ejemplo:

```r
# creación de datos
datos <- c(1.1, 1, 1.2, 2, 3, 3, 1, 2, 2, 2.3, 1, 3, 1, 1)

# creación del gráfico
stem(datos, main = "Diagrama de tallos y hojas")
```

<br>

Este es el resultado:

![01-diagrama-de-tallos-y-hojas](https://user-images.githubusercontent.com/110897750/206936902-141449ef-a0bd-428e-b776-69dc41075a3c.jpg)

<br>

Como se puede observar en la imagen, podemos contar que existen:

* 5 datos con valor `1`.
* 1 dato con valor `1.1`.
* 1 dato con valor `1.2`.
* 3 datos con valor `2`.
* 1 dato con valor `2.3`.
* 3 datos con valor `3`.

<br>

Como se puede deducir, este tipo de gráfico muestra a la izquierda el valor entero y a la derecha el decimal (en este caso), el cual podemos contar para tener la frecuencia de cada uno de los datos.

Al trabajar con decimales, se debe tener en cuenta que el diagrama de tallos y hojas redondea los decimales a 1 decimal, por lo que si queremos diferenciar entre `2.2` y `2.21`, no se podrá.

<sub>[De histogramas](#histogramas) | [Volver al índice](#índice)</sub>

<br>

[<< TEMA 5](../05-analizar-datos/README.md#analizar-datos) | [EJERCICIOS](https://github.com/nlarrea/R-desde-cero/tree/main/EJERCICIOS)

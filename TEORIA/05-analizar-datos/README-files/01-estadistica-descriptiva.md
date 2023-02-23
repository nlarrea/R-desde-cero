# 1. ESTADÍSTICA DESCRIPTIVA

<div id="indice">

* [Introducción](#introducción)
* [Variables estadísticas](#variables-estadísticas)
    * [Representación gráfica de variables estadísticas](#representación-gráfica-de-variables-estadísticas)
* [Tablas de frecuencias](#tablas-de-frecuencias)
    * [Tabla de frecuencias sin clases](#tabla-de-frecuencias-sin-clases)
    * [Tabla de frecuencias con clases](#tabla-de-frecuencias-con-clases)
    * [Tabla de frecuencias en R](#tabla-de-frecuencias-en-r)
* [Parámetros y estadísticos](#parámetros-y-estadísticos)
* [Estadísticos descriptivos](#estadísticos-descriptivos)
    * [Medidas de tendencia central](#medidas-de-tendencia-central)
    * [Medidas de dispersión](#medidas-de-dispersión)
    * [Medidas de posición](#medidas-de-posición)
    * [Medidas de forma](#medidas-de-forma)
    * [Estadísticos descriptivos en R](#estadísticos-descriptivos-en-r)
* [Cambio de escala y origen](#cambio-de-escala-y-origen)
    * [Cambio de escala](#cambio-de-escala)
    * [Cambio de origen](#cambio-de-origen)
    * [Cambio de ambas](#cambio-de-ambas)
* [Variables tipificadas](#variables-tipificadas)

</div>

<br>

[Archivo principal](../README.md#analizar-datos) | [2. Combinatoria >>](./02-combinatoria.md#2-combinatoria)


<br><hr>
<hr><br>


## Introducción

<sub>[Volver al índice](#indice) | [Variables estadísticas >>](#variables-estadísticas)</sub>

Antes de comenzar con la teoría, vamos a repasar qué es la estadística o cuáles son sus fases:

* **Estadística descriptiva:** recoge datos del conjunto que se quiere estudiar. Ordena dichos datos y los presenta de forma que se pueda extraer información de ellos. Es la primera fase de la estadística.
* **Estadística inductiva:** generaliza los resultados obtenidos. Se obtienen conclusiones y se pueden emitir hiótesis.

<br>

Esto está muy bien, pero ¿de dónde se obtienen esos datos? ¿Qué es lo que se analiza? Para ello existen las muestras y las poblaciones:

* **Población:** es el conjunto de elementos que se quiere estudiar. Debe estar bien definida. *Por ejemplo, fábricas de CD-s de Europa*.
* **Muestra:** es un subconjunto de la población. *Por ejemplo, si la población era "fábricas de CD-s de Europa, la muestra podría ser escoger 3 de cada país*. La muestra debe ser representativa de la población, se estudia la muestra porque sería imposible estudiar la población entera.


<br><hr>
<hr><br>


## Variables estadísticas

<sub>[<< Introducción](#introducción) | [Volver al índice](#indice) | [Tablas de frecuencias >>](#tablas-de-frecuencias)</sub>

Normalmente, se desea estudiar una **característica** de la población. Para ello, se dispone de **variables estadísticas**. Estas variables vienen determinadas por los valores que coma la característica que se desea estudiar.

Pueden ser:

* **Variables cuantitativas:** toman valores numéricos.
    * **Discretas:** toman valores enteros *(días de la semana, número de personas, etc.)*.
    * **Continuas:** toman cualquier valor *(peso, altura, etc.)*.
* **Variables cualitativas:** toman valores categóricos, es decir, no son valores numéricos *(sí/no, alto/bajo, etc.)*.


<br><hr>


### Representación gráfica de variables estadísticas

<sub>[<< Introducción](#introducción) | [Volver al índice](#indice) | [Tablas de frecuencias >>](#tablas-de-frecuencias)</sub>

Las variables estadísticas pueden representarse gráficamente. En el [TEMA 6](../../06-graficos/README.md#gráficos) se explica cómo crear gráficos en RStudio y darles cierto formato o estilos.

En este apartado, se va a explicar cuál es el gráfico más adecuado para cada tipo de variable estadística.

<br>

#### Variables cualitativas

<sub>[<< Introducción](#introducción) | [Volver al índice](#indice) | [Tablas de frecuencias >>](#tablas-de-frecuencias)</sub>

No son variables numéricas, por lo que no pueden expresarse en un eje numérico. Por ello, ayudan mucho aquellos gráficos que representen los datos de forma más visual.

Estos gráficos son:

* **Diagrama de sectores**

![01-gráfico-de-secciones](https://user-images.githubusercontent.com/110897750/206937069-183d79ee-456d-4247-aa16-7168f94478d2.png)

<br>

* **Diagrama de barras**

En este caso, el eje vertical mostraría la frecuencia absoluta.

![01-gráfico-básico](https://user-images.githubusercontent.com/110897750/206936771-f8956a6e-8930-4833-a869-c968f3afcd54.png)


<br>


#### Variables cuantitativas

<sub>[<< Introducción](#introducción) | [Volver al índice](#indice) | [Tablas de frecuencias >>](#tablas-de-frecuencias)</sub>

Las variables cuantitativas pueden representarse en un eje numérico, por lo que no tienen limitaciones a la hora de representarse gráficamente.

Los gráficos más comunes son los siguientes:

* **Gráfico de barras**
* **Histográmas**
* **Gráfico de frecuencias acumuladas**
* **Gráfico de tallos y hojas**


<br><hr>
<hr><br>


## Tablas de frecuencias

<sub>[<< Variables estadísticas](#variables-estadísticas) | [Volver al índice](#indice) | [Parámetros y estadísticos >>](#parámetros-y-estadísticos)</sub>

Las tablas de frecuencias son una herramienta muy útil para analizar datos. Se utilizan para representar los datos de una variable estadística.

Están formadas por los siguientes datos, teniendo en cuenta que la variable `n` es el número de elementos de la muestra:

* Modalidad: es el valor que toma la variable estadística.

* Frecuencia absoluta: es el número de veces que aparece la modalidad en la muestra.

    Se expresa como: $f_i$

* Frecuencia relativa: es la frecuencia absoluta dividida entre el número de elementos de la muestra.

    Fórmula: $h_i=\frac{f_i}{n}$

* Frecuencia absolita acumulada: es la suma de las frecuencias absolutas de las modalidades anteriores.

    Expresión: $F_i=\displaystyle\sum_{j=1}^{i} f_j$

* Frecuencia relativa acumulada: es la suma de las frecuencias relativas de las modalidades anteriores.

    Expresión: $H_i=\frac{F_i}{n}$ o también: $H_i=\displaystyle\sum_{j=1}^{i} h_j$


<br><hr>


### Tabla de frecuencias sin clases

<sub>[<< Tablas de frecuencias](#tablas-de-frecuencias) | [Volver al índice](#indice) | [Tabla con clases >>](#tabla-de-frecuencias-con-clases)</sub>

Esta tabla de frecuencias se utiliza cuando la variable estadística es discreta y no se dispone de clases, es decir, los datos no están agrupados.

<br>

Para entenderlo mejor, vamos a ver un ejemplo:

> *Supongamos que en una fábrica de CDs se registran los datos del número de fallos que tienen 30 CDs que se han producido en un día concreto. Nos dan los datos de frecuencia absoluta para cada número de fallos.*
>
> 1. *¿Cuál es la variable X? ¿Es una variable cualitativa o cuantitativa? Si es cuantitativa, ¿es discreta o continua?*
>
>       <details>
>       <summary>SOLUCIÓN</summary>
>       <p>
>       <hr>
>       
>       * La variable X es el número de fallos.
>       * Es una variable cuantitativa, porque cada fallo es un número.
>       * Es una variable discreta, porque los fallos son números enteros, un CD no puede tener un 1.5 fallos.
>       
>       <hr>
>       </p>
>       </details>
> 
> <br>
> 
> 2. *Completa la tabla de frecuencias que se te da a continuación:*
> 
>       | Fallos | Frecuencia absoluta | Frecuencia absoluta acumulada | Frecuencia relativa | Frecuencia relativa acumulada |
>       |:------:|:-------------------:|:-----------------------------:|:-------------------:|:-----------------------------:|
>       |   0    |          3          |                               |                     |                               |
>       |   1    |         10          |                               |                     |                               |
>       |   2    |         15          |                               |                     |                               |
>       |   3    |          1          |                               |                     |                               |
>       |   4    |          1          |                               |                     |                               |
>       |   5    |          0          |                               |                     |                               |
>
>       <details>
>       <summary>SOLUCIÓN</summary>
>       <p>
>       <hr>
>
>       n = cantidad de discos = 30
>
>       | Fallos | Frecuencia absoluta | Frecuencia absoluta acumulada | Frecuencia relativa | Frecuencia relativa acumulada |
>       |:------:|:-------------------:|:-----------------------------:|:-------------------:|:-----------------------------:|
>       |   0    |          3          |               3               |         3/30        |              3/30             |
>       |   1    |         10          |              13               |        10/30        |             13/30             |
>       |   2    |         15          |              28               |        15/30        |             28/30             |
>       |   3    |          1          |              29               |         1/30        |             29/30             |
>       |   4    |          1          |              30               |         1/30        |             30/30             |
>       |   5    |          0          |            30 = n             |         0/30        |           30/30 = 1           |
>
>       <br>
>
>       * Frecuencia absoluta acumulada: $F_i=\displaystyle\sum_{j=1}^{i} f_j$
>            * $F_1=3$
>            * $F_2=3+10=13$
>            * $F_3=13+15=28$
>            * $F_4=28+1=29$
>            * $F_5=29+1=30$
>            * $F_6=30$
>
>       * Frecuencia relativa: $h_i=\frac{f_i}{n}$
>            * $h_1=\frac{3}{30}$
>            * $h_2=\frac{10}{30}$
>            * $h_3=\frac{15}{30}$
>            * $h_4=\frac{1}{30}$
>            * $h_5=\frac{1}{30}$
>            * $h_6=\frac{0}{30}$
>
>       * Frecuencia relativa acumulada: $H_i=\frac{F_i}{n}$
>            * $H_1=\frac{3}{30}$
>            * $H_2=\frac{3}{30}+\frac{10}{30}=\frac{13}{30}$
>            * $H_3=\frac{13}{30}+\frac{15}{30}=\frac{28}{30}$
>            * $H_4=\frac{28}{30}+\frac{1}{30}=\frac{29}{30}$
>            * $H_5=\frac{29}{30}+\frac{1}{30}=\frac{30}{30}$
>            * $H_6=\frac{30}{30}$
>
>       <hr>
>       </p>
>       </details>


<br><hr>


### Tabla de frecuencias con clases

<sub>[<< Tablas sin clases](#tabla-de-frecuencias-sin-clases) | [Volver al índice](#indice) | [Tabla de frecuencias en R >>](#tabla-de-frecuencias-en-r)</sub>

Esta tabla de frecuencias se utiliza tanto para variables discretas como continuas. Para ello, se agrupan los datos en clases, lo que permite que los datos sean más fáciles de analizar.

En este caso, las variables que componen la tabla de frecuencia nombradas [al comienzo del apartado](#tablas-de-frecuencias) se mantienen, sin embargo, se **elimina la modalidad** y se añaden dos nuevas:

* Clase: es el intervalo de valores que agrupa a las modalidades de la variable estadística.

    Se expresa como: $c_i=\lbrack{l_i, l_{i+1}})$

* Marca de clase: es el valor central de la clase, es decir la *"media"*.

    Se expresa como: $x_i=\frac{l_i+l_{i+1}}{2}$

<br>

Para entenderlo mejor, vamos a ver un ejemplo:

> *Supongamos que se ha medido el número de semillas que tenían 20 manzanas. Cada manzana puede tener entre 0 y 10 semillas. Nos dan la siguiente gráfica:*
>
> ![1-ejercicio-tabla-frecuencias-con-clases](https://user-images.githubusercontent.com/110897750/209953637-370523f6-0444-40e7-8f0c-af4d1582cc1f.png)
>
> 1. *¿Cuál es la variable X? ¿Es una variable cualitativa o cuantitativa? Si es cuantitativa, ¿es discreta o continua?*
>
>       <details>
>       <summary>SOLUCIÓN</summary>
>       <p>
>       <hr>
>
>       * La variable X es el número de semillas.
>       * Es una variable cuantitativa, porque cada semilla es un número.
>       * Es una variable discreta, porque las semillas son números enteros, una manzana no puede tener 1.5 semillas.
>
>       <hr>
>       </p>
>       </details>
>
> <br>
>
> 2. *Construye la tabla de frecuencias. (**Pista:** la gráfica mostrada en el enunciado nos da la* $F_i$ *en el eje `Y` y la cantidad de semillas en el eje `X`):*
>
>       <details>
>       <summary>SOLUCIÓN</summary>
>       <p>
>       <hr>
>
>       n = número de manzanas = 20.
>
>       |  Clase  | Marca de Clase | Frecuencia absoluta | Frecuencia absoluta acumulada | Frecuencia relativa | Frecuencia relativa acumulada |
>       |:-------:|:--------------:|:-------------------:|:-----------------------------:|:-------------------:|:-----------------------------:|
>       |  [0, 2] |        1       |          0          |               0               |      0/20 = 0       |           0/20 = 0            |
>       |  (2, 4] |        3       |          4          |               4               |      4/20 = 0.2     |           4/20 = 0.2          |
>       |  (5, 6] |        5       |          4          |               8               |      4/20 = 0.2     |           8/20 = 0.4          |
>       |  (6, 8] |        7       |          8          |              16               |      8/20 = 0.4     |          16/20 = 0.8          |
>       | (8, 10] |        9       |          4          |            20 = n             |      4/20 = 0.2     |          20/20 = 1            |
>
>       <br>
>
>       * Clases: viendo el gráfico ofrecido en el enunciado, dado que la variable X es el número de semillas, las clases serán los intervalos de los valores posibles agrupados. Lo más sencillo es agrupar de dos en dos:
>           * $c_1=\lbrack{0,2}\rbrack$
>           * $c_2=({2,4}\rbrack$
>           * $c_3=({4,6}\rbrack$
>           * $c_4=({6,8}\rbrack$
>           * $c_5=({8,10}\rbrack$
>
>       * Marcas de clase: $x_i=\frac{l_i+l_{i+1}}{2}$
>           * $x_1=\frac{0+2}{2}=1$
>           * $x_2=\frac{2+4}{2}=3$
>           * $x_3=\frac{4+6}{2}=5$
>           * $x_4=\frac{6+8}{2}=7$
>           * $x_5=\frac{8+10}{2}=9$
>
>       * Frecuencia absoluta acumulada: la podemos obtener del gráfico:
>           * $F_1=0$
>           * $F_2=4$
>           * $F_3=8$
>           * $F_4=16$
>           * $F_5=20=n$
>
>       * Frecuencia absoluta: la podemos obtener de la frecuencia absoluta acumulada comenzando por abajo:
>           * $f_5=F_5-F_4=20-16=4$
>           * $f_4=F_4-F_3=16-8=8$
>           * $f_3=F_3-F_2=8-4=4$
>           * $f_2=F_2-F_1=4-0=4$
>           * $f_1=F_1=0$
>
>       * Frecuencia relativa: $h_i=\frac{f_i}{n}$
>           * $h_1=\frac{0}{20}=0$
>           * $h_2=\frac{4}{20}=0.2$
>           * $h_3=\frac{4}{20}=0.2$
>           * $h_4=\frac{8}{20}=0.4$
>           * $h_5=\frac{4}{20}=0.2$
>
>       * Frecuencia relativa acumulada: $H_i=\frac{F_i}{n}$
>           * $H_1=\frac{0}{20}=0$
>           * $H_2=\frac{4}{20}=0.2$
>           * $H_3=\frac{8}{20}=0.4$
>           * $H_4=\frac{16}{20}=0.8$
>           * $H_5=\frac{20}{20}=1$
>
>       <hr>
>       </p>
>       </details>


<br><hr>


### Tabla de frecuencias en R

<sub>[<< Tablas de frecuencias](#tablas-de-frecuencias) | [Volver al índice](#indice) | [Parámetros y estadísticos >>](#parámetros-y-estadísticos)</sub>

<sub>[* Ver código](../01-tabla-de-frecuencias.R) | [Ver ejercicios](../../../EJERCICIOS/02-estadistica-descriptiva/README.md#enunciados-de-estadística-descriptiva)</sub>

Hemos visto la teoría sobre cómo construir una tabla de frecuencias, pero ahora vamos a ver paso a paso cómo crear tablas de frecuencias partiendo de un conjunto de datos en R.

Los ejemplos que se van a mostrar a continuación han sido realizados ya en el apartado de [EJERCICIOS](../../../EJERCICIOS/02-estadistica-descriptiva/) referidos a las tablas de frecuencias. Te dejo [aquí](../../../EJERCICIOS/02-estadistica-descriptiva/README.md) el archivo donde poder consultarlos.

<br>

* **Cómo crear una tabla de frecuencias SIN CLASES en R**

Se da el siguiente conjunto de datos: 1, 2, 3, 4, 5, 6, 7, 8, 9, 19.

Cada dato se repite las siguientes veces, respectivamente: 2, 4, 6, 8, 10, 9, 7, 5, 4, 1.

Con los datos que se nos ofrecen, sabemos que tenemos lo siguiente:

| Valor | Frecuencia absoluta |
|:-----:|:-------------------:|
| 1     | 2                   |
| 2     | 4                   |
| 3     | 6                   |
| 4     | 8                   |
| 5     | 10                  |
| 6     | 9                   |
| 7     | 7                   |
| 8     | 5                   |
| 9     | 4                   |
| 19    | 1                   |

<br>

Vamos a crear esto en R:

```r
# guardamos los datos en variables
datos <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 19)
frecAbs <- c(2, 4, 6, 8, 10, 9, 7, 5, 4, 1)

# para obtener la cantidad de datos de forma automática:
datosBrutos <- rep(datos, frecAbs) # repetimos los datos tantas veces como su frecuencia absoluta
n <- length(datosBrutos) # 56L -> 56 datos

# teniendo las dos primeras variables, podíamos crear la tabla de frecuencias mostrada arriba
tabla <- data.frame(datos, frecAbs)
tabla
# se imprime:
#   datos frecAbs
# 1     1      2
# 2     2      4
# 3     3      6
# 4     4      8
# 5     5     10
# 6     6      9
# 7     7      7
# 8     8      5
# 9     9      4
# 10   19      1

# obtenemos los demás datos de la tabla de frecuencias
Valor <- tabla$datos        # no necesario -> es para cambiarle el nombre
FrecAbs <- tabla$frecAbs    # no necesario -> es para cambiarle el nombre
FrecRel <- FrecAbs / n
FrecAbsAcum <- cumsum(FrecAbs)
FrecRelAcum <- cumsum(FrecRel)

# creamos la tabla de frecuencias
tablaFrecuencias <- data.frame(Valor, FrecAbs, FrecRel, FrecAbsAcum, FrecRelAcum)
tablaFrecuencias
# se imprime:
#   Valor FrecAbs FrecRel FrecAbsAcum FrecRelAcum
# 1     1       2 0.03571           2    0.035714
# 2     2       4 0.07143           6    0.107143
# 3     3       6 0.10714          12    0.214286
# 4     4       8 0.14286          20    0.357143
# 5     5      10 0.17857          30    0.535714
# 6     6       9 0.16071          39    0.696429
# 7     7       7 0.12500          46    0.821429
# 8     8       5 0.08929          51    0.910714
# 9     9       4 0.07143          55    0.982143
# 10   19       1 0.01786          56    1.000000
```

<br>

* **Cómo crear una tabla de frecuencias CON CLASES en R**

Se da el siguiente conjunto de datos: 50, 68, 84, 86, 64, 67, 78, 87, 110, 85, 52, 65, 52, 93, 72, 70, 105, 85, 30, 42, 74, 30, 70, 65, 49.

Vamos a ver cómo crear la tabla de frecuencias en R calculando los intervalos:

```r
# guardamos los datos en una variable
datos <- c(50, 68, 84, 86, 64, 67, 78, 87, 110, 85, 52, 65, 52, 93, 72, 70, 105, 85, 30, 42, 74, 30, 70, 65, 49)

# obtenemos la cantidad de datos
n <- length(datos) # 25L -> 25 datos

# intervalos de clase
nIntervalos <- sqrt(n) # 5
amplitudIntervalo <- (max(datos) - min(datos)) / nIntervalos # 16 -> redondeamos a 20

# obtenemos los límites de los intervalos
limites <- c(30, 50, 70, 90, 110, Inf)

# creamos los intervalos
intervalos <- cut(datos, limites, right = FALSE) # para que queden abiertos por la derecha

# creamos la tabla de frecuencias
tabla <- as.data.frame(table(intervalos))

# obtenemos los datos de la tabla de frecuencias
Clases <- tabla$intervalos
FrecAbs <- tabla$Freq
FrecRel <- FrecAbs / n
FrecAbsAcum <- cumsum(FrecAbs)
FrecRelAcum <- cumsum(FrecRel)

# creamos la tabla de frecuencias
tablaFrecuencias <- data.frame(Clases, FrecAbs, FrecRel, FrecAbsAcum, FrecRelAcum)
tablaFrecuencias
# se imprime:
#       Clases FrecAbs FrecRel FrecAbsAcum FrecRelAcum
# 1    [30,50)       4    0.16           4        0.16
# 2    [50,70)       8    0.32          12        0.48
# 3    [70,90)      10    0.40          22        0.88
# 4   [90,100)       1    0.04          23        0.92
# 5  [100,110)       1    0.04          24        0.96
# 6  [110,Inf)       1    0.04          25        1.00
```


<br><hr>
<hr><br>


## Parámetros y estadísticos

<sub>[<< Tablas de frecuencias](#tablas-de-frecuencias) | [Volver al índice](#indice) | [Estadísticos descriptivos >>](#estadísticos-descriptivos)</sub>

Nos interesa saber el parámetro de la población, pero al no tener todos los datos de la misma, se estima el valor a partir de los datos de la muestra. Por ello, tenemos que conocer los estadísticos de la muestra:

* **Parámetro de la población:** es el valor que toma la característica cuando se estudia a la población completa. No suele conocerse este dato.
* **Estadístico de la muestra:** es el valor que toma la característica que queremos estudiar cuando trabajamos con la muestra. También se le llama *estimador de la población*.

<br>

Para explicar esto, vamos a ver un ejemplo:

> Imagina que queremos estudiar la altura de los adultos mayores de 60 años del país.
>   * El **parámetro** en este caso sería la altura media de la población mayor de 60 años.
>
> Es imposible medir a todas las personas mayores de 60 años de un país, por lo que se estudia una muestra de la población, por ejemplo, seleccionando 100 personas mayores de 60 años en cada comunidad autónoma.
>   * El **estadístico** será la media de la muestra de la población mayor de 60 años.


<br><hr>
<hr><br>


## Estadísticos descriptivos

<sub>[<< Parámetros y estadísticos](#parámetros-y-estadísticos) | [Volver al índice](#indice) | [Cambio de escala y origen >>](#cambio-de-escala-y-origen)</sub>

Ya hemos hablado en el apartado anterior sobre qué son los estadísticos, pero existen varios tipos de estadísticos descriptivos. En este apartado se van a explicar cuáles son y cómo se calculan.

Se dividen en 4 tipos:

* **[Estadísticos de tendencia central](#medidas-de-tendencia-central):** son aquellos que indican alrededor de qué valores se distribuyen los datos, es decir, el valor medio o central de la muestra.
    * Media aritmética.
    * Mediana.
    * Moda.
* **[Estadísticos de dispersión](#medidas-de-dispersión):** son aquellos que miden la dispersión de los datos de la muestra respecto a las medidas de tendencia central.
    * Rango.
    * Varianza.
    * Desviación típica.
    * Coeficiente de variación.
* **[Estadísticos de posición](#medidas-de-posición):** tras ordenar la muestra, la divide en partes iguales.
    * Cuartiles.
    * Deciles.
    * Percentiles.
* **[Estadísticos de forma](#medidas-de-forma):** son aquellos que miden la asimetría y curtosis.

<br>

Al final del apartado se verá [cómo calcular los estadísticos descriptivos en R](#estadísticos-descriptivos-en-r). 


<br><hr>


### Medidas de tendencia central

<sub>[<< Estadísticos descriptivos](#estadísticos-descriptivos) | [Volver al índice](#indice) | [Medidas de dispersión >>](#medidas-de-dispersión)</sub>

Son aquellos que se utilizan para encontrar el valor central de la muestra.

Pueden ser:

* Media
* Mediana
* Moda

<br>

#### **Media aritmética: $\overline{x}$**

Se puede obtener de dos formas:

* Conociendo los datos brutos:

    $\overline{x}=\frac{\displaystyle\sum_{i=1}^{n} x_i}{n}$

* Conociendo los datos con sus frecuencias:

    $\overline{x}=\frac{\displaystyle\sum_{i=1}^{k} x_i \times f_i}{n}$

    Siendo $k$ el número de datos que no están repetidos.

<br>

Veamos esto con un ejemplo:

> Tenemos los siguientes datos: [0, 0, 1, 1, 2, 2, 3, 3, 3, 4, 5]
>
> El número de datos es $n=11$.
>
> Con los datos brutos, la media aritmética es:
>
> $\overline{x}=\frac{0+0+1+1+2+2+3+3+3+4+5}{11}=\frac{24}{11}=2.18$
>
> Con los datos con sus frecuencias, la media aritmética es:
>
> $\overline{x}=\frac{0\times2+1\times2+2\times2+3\times3+4\times1+5\times1}{11}=\frac{24}{11}=2.18$

<br>

Existen otros 3 tipos de medias, aunque no son tan conocidas:

* **Media geométrica: $\overline{x}_G$**

    * Conociendo los datos brutos:

        $\overline{x_G}=\sqrt[n]{\displaystyle\prod_{i=1}^{n} x_i}$

    * Conociendo los datos con sus frecuencias:

        $\overline{x_G}=\sqrt[n]{\displaystyle\prod_{i=1}^{k} x_i^{f_i}}$

<br>

* **Media armónica: $\overline{x}_H$**

    $\overline{x_H}=\frac{n}{\displaystyle\sum_{i=1}^{n} \frac{1}{x_i}}=\frac{n}{\displaystyle\sum_{i=1}^{k} \frac{f_i}{x_i}}=\Bigg\lbrack\displaystyle\sum_{i=1}^{k} \frac{f_i}{x_i}\Bigg\rbrack^{-1}$

<br>

* **Media cuadrática: $\overline{x}_Q$**

    * Conociendo los datos brutos:

        $\overline{x_Q}=\frac{1}{n}\displaystyle\sum_{i=1}^{n} {x_i}^2$

    * Conociendo los datos con sus frecuencias:

        $\overline{x_Q}=\frac{1}{n}\displaystyle\sum_{i=1}^{k} f_i{x_i}^2$


<br>


#### **Mediana: $Me$**

Habiendo ordenado los datos, la mediana es el valor para el cual el número de elementos *(datos)* menores y mayores es el mismo (caso discreto).

*Dicho de otra forma:* Es el dato que después de ordenar los datos se sitúa en la mitad de la lista de datos.

Es lo mismo que el **percentil 50**, $P_{50}$, o el **cuartil 2**, $Q_2$.

<br>

Para calcular la mediana, se debe tener en cuenta si se está trabajando con clases o sin ellas. He aquí los pasos a seguir:

* **Sin clases**

    1. Miramos en la tabla de frecuencias si tenemos uno de estos datos:
        * En la *frecuencia absoluta acumulada*: $F_i=\frac{n}{2}$
        * En la *frecuencia relativa acumulada*: $H_i=\frac{1}{2}=0.5$
    2. **Si NO tenemos esos datos**, cogeremos el dato siguiente a ese $F_i$ o $H_i$, y la mediana será el valor de $x_i$ correspondiente a ese dato que hemos cogido.
    3. **Si SÍ tenemos esos datos**, cogemos su valor de $x_i$ correspondiente y aplicamos lo siguiente:

        $Me=\frac{x_i+x_{i+1}}{2}$

<br>

* **Con clases**

    1. Miramos en la tabla de frecuencias si tenemos la *frecuencia absoluta acumulada*: $F_i=\frac{n}{2}$
    2. **Si NO tenemos esos datos**, nos fijamos en el siguiente valor mayor a $F_i$, ese sería nuestro $F_i$ de partida y lo utilizaríamos en la siguiente fórmula:

        $Me=l_i+\frac{\frac{n}{2}-F_{i-1}}{f_i}di$

        Donde $l_i$ es el intervalo inferior correspondiente a la clase de ese $F_i$ de partida y $di$ es el intervalo de esa clase.

    3. **Si SÍ tenemos esos datos**, la mediana será el intervalo superior de la clase correspondiente a ese $F_i=\frac{n}{2}$.

<br>

Veamos esto con un ejemplo:

> Se nos da la siguiente tabla de frecuencias:
>
>   |   Peso   | Marca de clase | $f_i$ | $F_i$ |
>   |:--------:|:--------------:|:-----:|:-----:|
>   | [40, 50) |       45       |   5   |    5  |
>   | [50, 60) |       55       |  10   |   15  |
>   | [60, 70) |       65       |  21   |   36  |
>   | [70, 80) |       75       |  11   |   47  |
>   | [80, 90) |       85       |   5   |   52  |
>   | [90, 100)|       95       |   3   |   55  |
>   | [100,130)|      115       |   3   |   58  |
>
>   El último valor de $F_i$ es 58, por lo que $n=58$.
>
>   Calculamos: $F_i=\frac{n}{2}=\frac{58}{2}=29$
>
>   Buscamos en la tabla de frecuencias el valor de $F_i$ que sea igual a 29 y vemos que no lo tenemos, por lo que escogemos el siguiente valor de $F_i=36$. La fila en la que se sitúa ese dato será la fila de partida para el siguiente paso.
>
>   Ahora, aplicamos la fórmula:
>
>   $Me=l_i+\frac{\frac{n}{2}-F_{i-1}}{f_i}di=60+\frac{\frac{58}{2}-15}{21}10=66.67$


<br>


#### **Moda: $Mo$**

La moda es el valor que más se repite en los datos, es decir, el valor que tiene mayor frecuencia absoluta. Podría haber más de una moda, o ninguna.

<br>

Al igual que ocurría con la mediana, para calcular la moda se debe tener en cuenta si estamos trabajando con o sin clases:

* **Sin clases**

    Se trata de buscar en la tabla de frecuencias el dato $x_i$ que tenga mayor *frecuencia absoluta*, $f_i$. Puede haber más de una moda o ninguna.

<br>

* **Con clases**

    Partiendo de la *frecuencia absoluta* mayor, $f_i$, se aplica la siguiente fórmula:

    $Mo=l_i+\frac{f_{i+1}}{f_{i-1}+{f_{i+1}}}di$

    Donde $l_i$ es el intervalo inferior correspondiente a la clase de ese $f_i$ mayor y $di$ es el intervalo de esa clase.

<br>

Veamos esto con un ejemplo:

> Se nos da la siguiente tabla de frecuencias:
>
>   |   Peso   | Marca de clase | $f_i$ | $F_i$ |
>   |:--------:|:--------------:|:-----:|:-----:|
>   | [40, 50) |       45       |   5   |    5  |
>   | [50, 60) |       55       |  10   |   15  |
>   | [60, 70) |       65       |  21   |   36  |
>   | [70, 80) |       75       |  11   |   47  |
>   | [80, 90) |       85       |   5   |   52  |
>   | [90, 100)|       95       |   3   |   55  |
>   | [100,130)|      115       |   3   |   58  |
>
>   La *frecuencia absoluta* mayor es 21, por lo que la clase correspondiente a ese dato será la clase de partida para el siguiente paso.
>
>   Ahora, aplicamos la fórmula:
>
>   $Mo=l_i+\frac{f_{i+1}}{f_{i-1}+f_{i+1}}di=60+\frac{11}{10+11}10=65.24$


<br><hr>


### Medidas de dispersión

<sub>[<< Estadísticos descriptivos](#estadísticos-descriptivos) | [Volver al índice](#indice) | [Medidas de posición >>](#medidas-de-posición)</sub>

Las medidas de dispersión están relacionadas con la media, la mediana y la moda. Miden la dispersión de los datos de la muestra respecto a las medidas de tendencia central.

En este caso, encontraremos los siguientes datos:

* **Rango de la muestra:** $R=max(x_i)-min(x_i)$
* **Rango intercuartil:** $R_{IC}=Q_3-Q_1$
* **Varianza:** es la media de los errores cuadrados de todos los datos.

    $s^2(x)=\frac{\displaystyle\sum_{i=1}^{k} (x_i - \overline{x})^2 f_i}{n}=\frac{\displaystyle\sum_{i=1}^{k} {x_i}^2 f_i}{n} - \overline{x}^2$

* **Cuasivarianza:** es la varianza pero con la corrección de Bessel.

    $S^2(x)=\frac{\displaystyle\sum_{i=1}^{k} (x_i - \overline{x})^2 f_i}{n-1}$

* **Desviación típica:** es la raíz cuadrada de la varianza.

    $s(x)=\sqrt{s^2(x)}$

* **Coeficiente de variación:** sirve cuando se quieren comparar dos grupos o variables de datos. Cuanto mayor sea el coeficiente de variación, mayor será la dispersión de los datos.

    $CV_x=\frac{s(x)}{\overline{x}}$


<br><hr>


### Medidas de posición

<sub>[<< Estadísticos descriptivos](#estadísticos-descriptivos) | [Volver al índice](#indice) | [Medidas de forma >>](#medidas-de-forma)</sub>

Las medidas de posición dividen la muestra en partes iguales.

Estas pueden ser:

* Percentiles
* Deciles
* Cuartiles

<br>

#### **Percentiles**

Dividen la muestra en 100 partes iguales, dejando el k% de la distribución de los datos por debajo, es decir, a su izquierda.

Por ejemplo:

> El Percentil 45, $P_{45}$ (k=45), es el valor que deja el 45% de los datos por debajo de él.

<br>

A un $P_{k}$ le corresponde en la tabla de frecuencias una *frecuencia relativa acumulada* $H_i=\frac{k}{100}$.

Al igual que con la mediana y la moda, para calcular el percentil se debe tener en cuenta si estamos trabajando con o sin clases:

* **Sin clases**

    * Si **NO tengo** para el $P_k$ que busco la correspondiente $H_i$ en la tabla de frecuencias, cogemos el siguiente $H_i$, y su correspondiente $x_i$ es el percentil que buscamos.

    * Si **SÍ tengo** para el $P_k$ el $H_i=\frac{k}{100}$ en la tabla de frecuencias, aplicamos la fórmula:

        $P_k=\frac{x_i+x_{i+1}}{2}$

<br>

* **Con clases**

    * Si **NO tengo** para el $P_k$ que busco la correspondiente $H_i$ en la tabla de frecuencias, cogemos el siguiente $H_i$ mayor a ese, y tomamos esa fila como fila de partida para aplicar la siguiente fórmula:

        $P_k=l_i+\frac{H_in-F_{i-1}}{f_i}di$

        Donde $l_i$ es el intervalo inferior correspondiente a la clase de ese $f_i$ mayor y $di$ es el intervalo de esa clase.

    * Si **SÍ tengo** para el $P_k$ el $H_i=\frac{k}{100}$ en la tabla de frecuencias, el percentil que buscamos será el intervalo superior de la clase correspondiente a esa $H_i$.


<br>


#### **Deciles**

Dividen la muestra en 10 partes iguales, deja $10\times{k}\%$ de la distribución de los datos por debajo, es decir, a su izquierda.

Por ejemplo:

> El Decil 30, $D_3$ (k=3), es el valor que deja el 30% de los datos por debajo de él.

<br>

A un $D_k$ le corresponde en la tabla de frecuencias una *frecuencia relativa acumulada* $H_i=\frac{k\times{10}}{100}=\frac{k}{10}$.

De nuevo, se debe tener en cuenta si se trabaja con o sin clases:

* **Sin clases**

    * Si **NO tengo** para el $D_k$ que busco la correspondiente $H_i=\frac{k}{10}$ en la tabla de frecuencias, cogemos el siguiente $H_i$, y su correspondiente $x_i$ es el decil que buscamos.

    * Si **SÍ tengo** para el $D_k$ el $H_i=\frac{k}{10}$ en la tabla de frecuencias, aplicamos la fórmula:

        $D_k=\frac{x_i+x_{i+1}}{2}$

<br>

* **Con clases**

    * Si **NO tengo** para el $D_k$ que busco la correspondiente $H_i=\frac{k}{10}$ en la tabla de frecuencias, cogemos el siguiente $H_i$ mayor a ese, y tomamos esa fila como fila de partida para aplicar la siguiente fórmula:

        $D_k=l_i+\frac{\frac{k}{10}n-F_{i-1}}{f_i}di$

        Donde $l_i$ es el intervalo inferior correspondiente a la clase de ese $f_i$ mayor y $di$ es el intervalo de esa clase.

    * Si **SÍ tengo** para el $D_k$ el $H_i=\frac{k}{10}$ en la tabla de frecuencias, el decil que buscamos será el intervalo superior de la clase correspondiente a esa $H_i$.


<br>


#### **Cuartiles**

Dividen la muestra en 4 partes iguales, deja $25\times{k}\%$ de la distribución de los datos por debajo, es decir, a su izquierda.

Por ejemplo:

> El cuartil 3, $Q_3$ (k=3), es el valor que deja el 75% de los datos por debajo de él.

<br>

A un $Q_k$ le corresponde en la tabla de frecuencias una *frecuencia relativa acumulada* $H_i=\frac{k\times{25}}{100}=\frac{k}{4}$.

De nuevo, se debe tener en cuenta si se trabaja con o sin clases:

* **Sin clases**

    * Si **NO tengo** para el $Q_k$ que busco la correspondiente $H_i=\frac{k}{4}$ en la tabla de frecuencias, cogemos el siguiente $H_i$, y su correspondiente $x_i$ es el cuartil que buscamos.

    * Si **SÍ tengo** para el $Q_k$ el $H_i=\frac{k}{4}$ en la tabla de frecuencias, aplicamos la fórmula:

        $Q_k=\frac{x_i+x_{i+1}}{2}$

<br>

* **Con clases**

    * Si **NO tengo** para el $Q_k$ que busco la correspondiente $H_i=\frac{k}{4}$ en la tabla de frecuencias, cogemos el siguiente $H_i$ mayor a ese, y tomamos esa fila como fila de partida para aplicar la siguiente fórmula:

        $Q_k=l_i+\frac{\frac{k}{4}n-F_{i-1}}{f_i}di$

        Donde $l_i$ es el intervalo inferior correspondiente a la clase de ese $f_i$ mayor y $di$ es el intervalo de esa clase.

    * Si **SÍ tengo** para el $Q_k$ el $H_i=\frac{k}{4}$ en la tabla de frecuencias, el cuartil que buscamos será el intervalo superior de la clase correspondiente a esa $H_i$.


<br><hr>


### Medidas de forma

<sub>[<< Estadísticos descriptivos](#estadísticos-descriptivos) | [Volver al índice](#indice) | [Estadísticos descriptivos en R >>](#estadísticos-descriptivos-en-r)</sub>

Las medidas de forma pueden dividirse en dos grupos:

* **Asimetría:** mide la asimetría o sesgo de la distribución de los datos. En R la calcularemos como: `skewness`.
    * **Asimetría positiva:** la cola de la distribución de los datos se extiende hacia la derecha. Esto ocurre cuando: $Mo\leq{Me}\leq{\overline{x}}$.
    * **Asimetría nula:** la cola de la distribución de los datos se extiende hacia la derecha e izquierda. Esto ocurre cuando: $Mo=Me=\overline{x}$.
    * **Asimetría negativa:** la cola de la distribución de los datos se extiende hacia la izquierda. Esto ocurre cuando: $\overline{x}\leq{Me}\leq{Mo}$.

    Se puede calcular con el coeficiente de Pearson:

    $P=\frac{\overline{x}-Mo}{s(x)}=\frac{3(\overline{x}-Me)}{s(x)}$

    Donde $s(x)$ es la desviación típica de la muestra.

* **Curtosis:** mide la concentración de los datos en torno a la media. En R la calcularemos como: `kurtosis`.
    * **Curtosis leptocúrtica:** la distribución de los datos es más concentrada en torno a la media. Esto ocurre cuando: $g_2>0$.
    * **Curtosis mesocúrtica:** la distribución de los datos es normal. Esto ocurre cuando: $g_2=0$.
    * **Curtosis platicúrtica:** la distribución de los datos es menos concentrada en torno a la media. Esto ocurre cuando: $g_2<0$.

    Se puede calcular de la siguiente manera:

    $g_2=\frac{\displaystyle\sum_{i=1}^{k} (x_i - \overline{x})^4 f_i}{n{s(x)}^4}-3$
    
    Donde $s(x)$ es la desviación típica de la muestra.


<br><hr>


### Estadísticos descriptivos en R

<sub>[<< Estadísticos descriptivos](#estadísticos-descriptivos) | [Volver al índice](#indice) | [Cambio de escala y origen >>](#cambio-de-escala-y-origen)</sub>

<sub>[* Ver código](../02-estadistica-descriptiva.R) | [Ver ejercicios](../../../EJERCICIOS/02-estadistica-descriptiva/README.md#enunciados-de-estadística-descriptiva)</sub>

En R se pueden calcular muchísimos datos de forma muy sencilla. En este apartado veremos cuáles son los comandos más importantes para calcular los estadísticos descriptivos.

* **Comandos básicos**

```r
# datos de ejemplo
datos <- c(74, 56, 72, 40, 82, 76, 72, 87, 81, 50, 65, 62)

# comandos básicos
sort(datos) # ordena los datos de menor a mayor
order(datos) # devuelve los índices de los datos si estuvieran ordenados de menor a mayor

sum(datos) # suma los datos -> 817
cumsum(datos) # suma acumulada -> 74 130 202 242 324 400 472 559 640 690 755 817

length(datos) # número de datos -> 12

min(datos) # mínimo -> 40
max(datos) # máximo -> 87
```

<br>

* **Medidas de tendencia central**

```r
# media y mediana
mean(datos) # media -> 68.08333
median(datos) # mediana -> 72

# moda -> 3 formas de calcularla
# moda - forma 1
table(datos) # devuelve la frecuencia de cada dato (si queremos hacerlo de forma visual)
table(datos)[which.max(table(datos))] # devuelve el dato con mayor frecuencia -> 72 (2 veces)

# moda - forma 2
frecAbs <- data.frame(table(datos)) # creamos un data frame con la frecuencia absoluta
modaPosicion <- which.max(frecAbs$Freq) # posición de la moda -> 6
moda <- frecAbs[modaPosicion, 1] # moda -> 72

# moda - forma 3
install.packages("modeest") # instalamos el paquete modeest
library(modeest) # cargamos el paquete modeest
mfv(datos) # moda -> 72
```

<br>

* **Medidas de dispersión**

```r
# rangos -> 2 formas de calcularlos
# rango - forma 1
rango <- max(datos) - min(datos) # rango -> 47

# rango - forma 2
range(datos) # da el mínimo y el máximo -> 40 87
rango <- range(datos)[2] - range(datos)[1] # rango -> 47

# cuasivarianza
cuasivar <- var(datos)

# varianza
varianza <- cuasivar * (length(datos) - 1) / length(datos)

# cuasidesviación típica
sd(datos) # 13.99648

# desviación típica
desvTip <- sqrt(varianza)
```

<br>

* **Medidas de posición**

```r
# cuartiles
quantile(datos) # divide datos en 4 partes iguales
# imprime:
#    0%   25%   50%   75%  100% 
# 40.00 60.50 72.00 77.25 87.00 

# deciles
quantile(datos, prob = seq(0, 1, length = 11)) # divide datos en 10 partes iguales
# imprime:
#   0%  10%  20%  30%  40%  50%  60%  70%  80%  90% 100% 
# 40.0 50.6 57.2 62.9 67.8 72.0 73.2 75.4 80.0 81.9 87.0

# percentiles
quantile(datos, prob = seq(0, 1, length = 101)) # divide datos en 100 partes iguales

# deciles o percentiles concretos
quantile(datos, prob = 0.2) # decil 2 = percentil 20
quantile(datos, prob = 0.65) # percentil 65
```

<br>

* **Medidas de forma**

```r
library(e1071) # cargamos el paquete e1071 -> descargarlo si no está instalado

# asimetría
skewness(datos) # -0.5360495 -> negativa

# curtosis
kurtosis(datos) # -0.935555 -> platicúrtica
```


<br><hr>
<hr><br>


## Cambio de escala y origen

<sub>[<< Estadísticos descriptivos](#estadísticos-descriptivos) | [Volver al índice](#indice) | [Variables tipificadas >>](#variables-tipificadas)</sub>

En este apartado vamos a ver cómo cambian los estadísticos asociados a una variable cuando se cambian la escala y el origen de dicha variable.

Pueden darse los siguientes 3 casos:

* **[Cambio de escala](#cambio-de-escala):** se cambia la escala de la variable, pero no su origen.
* **[Cambio de origen](#cambio-de-origen):** se cambia el origen de la variable, pero no su escala.
* **[Cambio de escala y origen](#cambio-de-ambas):** se cambia tanto la escala como el origen de la variable.


<br><hr>


### Cambio de escala

<sub>[<< Cambio de escala y origen](#cambio-de-escala-y-origen) | [Volver al índice](#indice) | [Cambio de origen >>](#cambio-de-origen)</sub>

Si se tienen las variables X e Y, y se quiere realizar un cambio de escala, se realizará lo siguiente:

$X=k\times{Y}$

Donde $k$ es el factor de cambio de escala. Por ejemplo:

> Si la variable Y es un 30% más grande que la variable X, entonces $k=1.3$.

<br>

¿Cómo afecta este cambio de escala a los estadísticos descriptivos?

* Medidas de tendencia central:
    * **Media:** $\overline{x}=k\times{\overline{y}}$
    * **Mediana:** $Me(x)=k\times{Me(y)}$
    * **Moda:** $Mo(x)=k\times{Mo(y)}$
* Medidas de dispersión: cambian la varianza y la desviaión típica.
    * **Varianza:** $s^2(x)=k^2\times{s^2(y)}$
    * **Desviación típica:** $s(x)=k\times{s(y)}$


<br><hr>


### Cambio de origen

<sub>[<< Cambio de escala y origen](#cambio-de-escala-y-origen) | [Volver al índice](#indice) | [Cambio de ambas >>](#cambio-de-ambas)</sub>

Si se tienen las variables X e Y, y se quiere realizar un cambio de origen, se realizará lo siguiente:

$X=Y+a$

Donde $a$ es el factor de cambio de origen. Por ejemplo:

> Si la variable Y mide la anchura de una pieza, y la X la anchura de otra, y la pieza X es 3 cm más ancha que la pieza Y, entonces $a=3$.

<br>

¿Cómo afecta este cambio de origen a los estadísticos descriptivos?

* Medidas de tendencia central:
    * **Media:** $\overline{x}=\overline{y}+a$
    * **Mediana:** $Me(x)=Me(y)+a$
    * **Moda:** $Mo(x)=Mo(y)+a$
* Medidas de dispersión: no cambian, las de X y las de Y son iguales.


<br><hr>


### Cambio de ambas

<sub>[<< Cambio de escala y origen](#cambio-de-escala-y-origen) | [Volver al índice](#indice) | [Variables tipificadas >>](#variables-tipificadas)</sub>

Si se tienen las variables X e Y, y se quiere realizar un cambio de escala y de origen, se realizará lo siguiente:

$X=k\times{Y}+a$

Donde $k$ es el factor de cambio de escala y $a$ el factor de cambio de origen.

<br>

¿Cómo afecta este cambio de escala y origen a los estadísticos descriptivos?

* Medidas de tendencia central:
    * **Media:** $\overline{x}=k\times{\overline{y}}+a$
    * **Mediana:** $Me(x)=k\times{Me(y)}+a$
    * **Moda:** $Mo(x)=k\times{Mo(y)}+a$
* Medidas de dispersión: cambian la varianza y la desviaión típica, igual que si solo se cambiara la escala:
    * **Varianza:** $s^2(x)=k^2\times{s^2(y)}$
    * **Desviación típica:** $s(x)=k\times{s(y)}$


<br><hr>
<hr><br>


## Variables tipificadas

<sub>[<< Cambio de escala y origen](#cambio-de-escala-y-origen) | [Volver al índice](#indice)</sub>

Las variables tipificadas son aquellas que se han tipificado, es decir, que se han transformado para que tengan una media de 0 y una desviación típica de 1.

Sabiendo esto, la variable tipificada se puede calcular de la siguiente manera:

$Z=\frac{X-\overline{x}}{s(X)}$

<br>

El valor de la variable tipidicada Z mide la distancia entre X y $\overline{x}$. Ésto permite comparar datos o valores de dos variables diferentes si obtenemos la variable tipificada de cada una de ellas.

<br>

Por ejemplo:

> Si tenemos que $Z=1.5$, y conocemos la fórmula: $Z=\frac{X-\overline{x}}{s(X)}$, entonces:
>
> $1.5\times{s(x)}=X-\overline{x}$, es decir, el dato X está 1.5 veces por encima de la media.
>
> <br>
>
> Si tenemos que $Z=-1.5$, entonces, sabremos que el dato X está 1.5 veces por debajo de la media.
>
> <br>
>
> Por último, si tenemos que $Z=0$, entonces, sabremos que el dato X es igual a la media.


<br><hr>
<hr><br>

[Archivo principal](../README.md#analizar-datos) | [2. Combinatoria >>](./02-combinatoria.md#2-combinatoria)

# ENUNCIADOS DE ESTADÍSTICA DESCRIPTIVA

En esta carpeta se encuentran los enunciados de los ejercicios de estadística descriptiva. La estadística descriptiva es una rama de la estadística que se encarga de resumir y analizar datos de una manera concisa. Si se habla de elementos desconocidos para ti, te recomiendo que leas la sección de teoría correspondiente.

<p id="indice">He aquí la lista de los enunciados:</p>

* **#01** - [Tabla de frecuencias](#01---tabla-de-frecuencias)
* **#02** - [Datasets de mtcars](#02---datasets-de-mtcars)
* **#03** - [Importar y analizar](#03---importar-y-analizar)
* **#04** - [Altura de las olas](#04---altura-de-las-olas)
* **#05** - [Consumo de gasolna](#05---consumo-de-gasolina)

<br>

[<< Ejercicios básicos](../01-ejercicios-basicos/README.md#enunciados-de-ejercicios-básicos-de-r) | [TEORÍA](../../TEORIA/) | [Variable aleatoria discreta >>](../03-variable-aleatoria-discreta/README.md#enunciados-variable-aleatoria-discreta)


<br><hr>
<hr><br>


## 01 - Tabla de frecuencias

<sub>[Volver al índice](#indice) | [02 - Datasets de mtcars](#02---datasets-de-mtcars)</sub>

**Agrupa los datos en los siguientes 5 intervalos: [30,50), [50,70), [70,90), [90,110), [100,???) y construye una tabla de frecuencias en las que figuren las siguientes columnas:**

* **intervalos**
* **frecuencia absoluta**
* **frecuencia relativa**
* **frecuencia absoluta acumulada**
* **frecuencia absoluta relativa**

**Datos: 50, 68, 84, 86, 64, 67, 78, 87, 110, 85, 52, 65, 52, 93, 72, 70, 105, 85, 30, 42, 74, 30, 70, 65, 49**

<br>

<details>
<summary>SOLUCIÓN</summary>
<p>

```r
# guardado de datos
datos <- c(50, 68, 84, 86, 64, 67, 78, 87, 110, 85, 52, 65, 52, 93, 72, 70, 105, 85, 30, 42, 74, 30, 70, 65, 49)
n <- length(datos) # 25L (25 elementos, L = integer)

# intervalos
nIntervalos <- sqrt(n) # 5 (se nos daba en el enunciado, comprobamos que es así)
amplitudIntervalos <- (max(datos) - min(datos)) / nIntervalos # 16

# límites
limites <- c(30, 50, 70, 90, 110, 100, Inf)

# creamos los intervalos
intervalos <- cut(datos, limites, right = FALSE)

# tabla de frecuencias
tablaF <- as.data.frame(table(intervalos))

# guardamos los datos en las variables deseadas
intervalos <- tablaF$intervalos
freqAbs <- tablaF$Freq
freqRel <- freqAbs / n
freqAbsAcum <- cumsum(freqAbs)
freqRelAcum <- cumsum(freqRel)

# creamos la tabla de frecuencias
tablaFrecuencias <- data.frame(intervalos, freqAbs, freqRel, freqAbsAcum, freqRelAcum)
tabla_frecuencias
# se imprime:
#   intervalos freqAbs freqRel freqAbsAcum freqRelAcum
# 1    [30,50)       4    0.16           4        0.16
# 2    [50,70)       8    0.32          12        0.48
# 3    [70,90)      10    0.40          22        0.88
# 4   [90,100)       1    0.04          23        0.92
# 5  [100,110)       1    0.04          24        0.96
# 6  [110,Inf)       1    0.04          25        1.00
```

<sub>[Verlo en el repositorio](01-tabla-frecuencia.R)</sub>

</p>
</details>


<br><hr>
<hr><br>


## 02 - Datasets de mtcars

<sub>[01 - Tabla de frecuencias](#01---tabla-de-frecuencias) | [Volver al índice](#indice) | [03 - Importar y analizar](#03---importar-y-analizar)</sub>

**Carga el dataset de mtcars y realiza las siguientes operaciones:**
    
- **Genera una nueva variable llamada "litros100km". Para ello, pasa mpg a litros/100km sabiendo que una milla son 1.609 km y un galón son 3.8 litros.**
- **Crea un data frame nuevo con las variables mpg, qsec y litros100km.**

<br>

<details>
<summary>SOLUCIÓN</summary>
<p>

```r
# 1. cargamos el dataset
library(datasets)
attach(mtcars) # para convertir los datos de mtcars en "variables accesibles"

# 2. generamos la nueva variable
litros100km <- (1 / (mpg * (1.609 / 3.8))) * 100

# 3. creamos el nuevo data frame
tablaNueva <- data.frame(mpg, qsec, litros100km)
tablaNueva
# se imprime:
#     mpg  qsec litros100km
# 1  21.0 16.46   11.246264
# 2  21.0 17.02   11.246264
# 3  22.8 18.61   10.358401
# 4  21.4 19.44   11.036053
# 5  18.7 17.02   12.629494
# 6  18.1 20.22   13.048151
# 7  14.3 15.84   16.515492
# 8  24.4 20.00    9.679161
# 9  22.8 22.90   10.358401
# 10 19.2 18.30   12.300601
# 11 17.8 18.90   13.268064
# 12 16.4 17.40   14.400703
# 13 17.3 17.60   13.651534
# 14 15.2 18.00   15.537601
# 15 10.4 17.98   22.708801
# 16 10.4 17.82   22.708801
# 17 14.7 17.42   16.066091
# 18 32.4 19.47    7.289245
# 19 30.4 18.52    7.768800
# 20 33.9 19.90    6.966712
# 21 21.5 20.01   10.984723
# 22 15.5 16.87   15.236873
# 23 15.2 17.30   15.537601
# 24 13.3 15.41   17.757258
# 25 19.2 17.05   12.300601
# 26 27.3 18.90    8.650972
# 27 26.0 16.70    9.083521
# 28 30.4 16.90    7.768800
# 29 15.8 14.50   14.947566
# 30 19.7 15.50   11.988403
# 31 15.0 14.60   15.744769
# 32 21.4 18.60   11.036053
```

<sub>[Verlo en el repositorio](./02-paquete-datasets-mtcars.R)</sub>

</p>
</details>


<br><hr>
<hr><br>


## 03 - Importar y analizar

<sub>[02 - Datasets de mtcars](#02---datasets-de-mtcars) | [Volver al índice](#indice) | [04 - Altura de las olas](#04---altura-de-las-olas)</sub>

1. **Importa los datos del archivo "oldcars.txt" y hazlo accesible.**

<details>
<summary>SOLUCIÓN</summary>
<p>

```r
setwd("C:/escribe/tu/directorio/aqui") # cambia el directorio de trabajo
oldcars <- read.table("datos-para-importar/oldcars.txt", sep = "\t", dec = ".", header = TRUE)
attach(oldcars)
```

<sub>[Verlo en el repositorio](./03-ejercicio-completo.R)</sub>

</p>
</details>

<br>

2. **Con los datos, construye la tabla de frecuencias de la variabe "qsec" usando tu criterio para los intervalos y la amplitud de los mismos.**

<details>
<summary>SOLUCIÓN</summary>
<p>

```r
# debes haber realizado el apartado 1 para poder ejecutar este código

n <- length(qsec) # número de observaciones

sort(qsec) # min = 14.5, max = 22.9

# intervalos
numIntervalos <- sqrt(n) # 5.6568... -> redondear hacia abajo
numIntervalos <- floor(numIntervalos) # 5

# amplitud
amplitud <- (max(qsec) - min(qsec)) / numIntervalos # 1.68 -> redondear a 2
amplitud <- round(amplitud) # 2

# límites
limites <- c(14, 16, 18, 20, 22, 24)

# intervalos con los límites
intervalos <- cut(qsec, limites, right = FALSE)

# tabla de frecuencias
tabla <- table(intervalos)
tablaVertical <- as.data.frame(tabla)

Clases <- tablaVertical$intervalos
FrecAbs <- tablaVertical$Freq
FrecRel <- FrecAbs / n
FrecAbsAcum <- cumsum(FrecAbs)
FrecRelAcum <- cumsum(FrecRel)

tablaFinal <- data.frame(Clases, FrecAbs, FrecRel, FrecAbsAcum, FrecRelAcum)
tablaFinal
# se imprime:
#    Clases  FrecAbs  FrecRel  FrecAbsAcum  FrecRelAcum
# 1 [14,16)        5  0.15625            5      0.15625
# 2 [16,18)       13  0.40625           18      0.56250
# 3 [18,20)       10  0.31250           28      0.87500
# 4 [20,22)        3  0.09375           31      0.96875
# 5 [22,24)        1  0.03125           32      1.00000
```

<sub>[Verlo en el repositorio](./03-ejercicio-completo.R)</sub>

</p>
</details>

<br>

3. **Haz un gráfico de tallos y hojas para la variable "qsec".**

<details>
<summary>SOLUCIÓN</summary>
<p>

```r
stem(qsec)
# se imprime:
# 14 | 56
# 15 | 458
# 16 | 5799
# 17 | 00134468
# 18 | 00356699
# 19 | 459
# 20 | 002
# 21 | 
# 22 | 9
```

<sub>[Verlo en el repositorio](./03-ejercicio-completo.R)</sub>

</p>
</details>

<br>

4. **Haz un histograma para la variable "qsec" poniendo título, nombre a los ejes y cambiando el tamaño de las etiquetas de los ejes y color de las barras.**

<details>
<summary>SOLUCIÓN</summary>
<p>

```r
hist(qsec,
    main = "Histograma QSEC", cex.main = 1.5, # título y tamaño del título
    xlab = "Tiempo para realizar 1/4 de milla (qsec)", # etiqueta del eje x
    ylab = "Frecuencia absoluta", # etiqueta del eje y
    axes = TRUE, # mostrar los ejes y los valores
    cex.axis = 0.8, # tamaño de los números de los ejes
    cex.lab = 0.8, # tamaño de las etiquetas de los ejes
    col = "red") # color de las barras
```

Este sería el resultado:

![1-histograma-qsec](https://user-images.githubusercontent.com/110897750/209686258-6aeedae6-8c32-45ed-9cc2-bdc00a17ed92.png)

<sub>[Verlo en el repositorio](./03-ejercicio-completo.R)</sub>

</p>
</details>

<br>

5. **Comprueba el tamaño de cualquier otra variable importada. Crea otro objeto con la misma cantidad de datos con números aleatorios continuos y otro con números aleatorios enteros. Escoge cualquier rango de números.**

<details>
<summary>SOLUCIÓN</summary>
<p>

```r
nVar <- length(vs) # 32L
obj1 <- runif(nVar, min = 5, max = 10) # números continuos aleatorios entre el 5 y el 10
obj2 <- sample(0:10, nVar, replace = TRUE) # números enteros aleatorios entre el 0 y el 10
```

<sub>[Verlo en el repositorio](./03-ejercicio-completo.R)</sub>

</p>
</details>

<br>

6. **Crea un data frame uniendo la base de datos oldcar importada y los dos objetos creados en el apartado anterior.**

<details>
<summary>SOLUCIÓN</summary>
<p>

```r
oldcars2 <- data.frame(oldcars, obj1, obj2)
```

<sub>[Verlo en el repositorio](./03-ejercicio-completo.R)</sub>

</p>
</details>

<br>

7. **Crea un data frame seleccionando solo algunas columnas, filas o ambas.**

<details>
<summary>SOLUCIÓN</summary>
<p>

```r
oldcars[1:10, ] # selecciona las 10 primeras filas
oldcars[, 3:4] # selecciona las columnas 3 y 4
oldcars[1:10, 3:4] # selecciona las 10 primeras filas y las columnas 3 y 4
```

<sub>[Verlo en el repositorio](./03-ejercicio-completo.R)</sub>

</p>
</details>

<br>

8. **Calcula las medidas de tendencia central (media, mediana y moda), el cuartil 3, decil 1 y percentil 30 para las variables creadas en el *apartado 5*.**

<details>
<summary>SOLUCIÓN</summary>
<p>

```r
# los valores de obj1 y obj2 son diferentes cada vez que se ejecuta el código
# por lo que los resultados también serán diferentes

obj1
#  [1] 5.159498 7.573441 7.352397 9.478473 7.807918 5.782741 9.173779 8.691947
#  [9] 5.073202 5.627049 7.388944 7.381722 5.668642 5.310765 7.962254 6.367621
# [17] 9.044431 5.101404 6.687713 7.544863 6.189965 5.114226 8.691021 9.921267
# [25] 8.730437 6.426404 5.447736 5.281433 5.789145 6.388087 5.214461 5.274662
obj2
#  [1]  5  6  4  1  5  9  2  9  5  2  1  6  5 10  2  7  9  0  6  8  0  0  6  5  3  7
# [27]  1  2  8  2  4  8

# medias
mean(obj1) # 6.832739
mean(obj2) # 4.625

# medianas
median(obj1) # 6.407245
median(obj2) # 5

# modas
frecAbs1 <- data.frame(table(obj1)) # tabla de frecuencias absolutas
frecAbs1[which.max(frecAbs1$Freq), 1] # 5.07320197415538 -> moda de obj1

frecAbs2 <- data.frame(table(obj2)) # tabla de frecuencias absolutas
frecAbs2[which.max(frecAbs2$Freq), 1] # 2 -> moda de obj2

# cuartil 3
quantile(obj1)[4] # 7.846502
quantile(obj2)[4] # 7

# decil 1
quantile(obj1, prob = seq(0, 1, length(11)))[2] # 9.921267
quantile(obj2, prob = seq(0, 1, length(11)))[2] # 10

# percentil 30
quantile(obj1, prob = 0.3) # 5.639527
quantile(obj2, prob = 0.3) # 2
```

<sub>[Verlo en el repositorio](./03-ejercicio-completo.R)</sub>

</p>
</details>

<br>

9. **Calcula la variabza de las dos variables creadas en el *apartado 5*.**

<details>
<summary>SOLUCIÓN</summary>
<p>

```r
varObj1 <- var(obj1) * (nVar - 1) / nVar # 2.222916
varObj2 <- var(obj2) * (nVar - 1) / nVar # 8.796875
```

<sub>[Verlo en el repositorio](./03-ejercicio-completo.R)</sub>

</p>
</details>

<br>

10. **Calcula el rango intercuartílico de "qsec".**

<details>
<summary>SOLUCIÓN</summary>
<p>

```r
# usando el comando IQR
IQR(qsec) # 2.0075

# aplicando la fórmula
summary(qsec)
qsecQ1 <- summary(qsec)[2] # 16.8925
qsecQ3 <- summary(qsec)[5] # 18.9
qsecQ3 - qsecQ1 # 2.0075
```

<sub>[Verlo en el repositorio](./03-ejercicio-completo.R)</sub>

</p>
</details>

<br>

11. **Calcula la asimetría y curtosis de "qsec".**

<details>
<summary>SOLUCIÓN</summary>
<p>

```r
library(e1071) # para usar skewness y kurtosis

# asimetría
skewness(qsec) # 0.369453 = num positivo -> asimetría a la derecha

# curtosis
kurtosis(qsec) # 0.3351142 = num positivo -> curtosis leptocúrtica
```

<sub>[Verlo en el repositorio](./03-ejercicio-completo.R)</sub>

</p>
</details>

<br>

12. **Haz un diagrama de cajas para "qsec". Determina el valor atípico y elimínalo para hacer otro diagrama de cajas.**

<details>
<summary>SOLUCIÓN</summary>
<p>

```r
# primer diagrama
boxplot(qsec) # hay un valor atípico

# buscar posición del valor atípico
boxplot.stats(qsec) # out = 22.9 -> valor atípico
which(qsec == 22.9) # 9 -> posición del valor atípico
qsecSin <- qsec[-9] # eliminar el valor atípico
sort(qsecSin) # ordenar los valores -> comprobar que no esté el 22.9
# crear el segundo diagrama
boxplot(qsecSin)
```

Este es el resultado **con valor atípico**:

![2-con-valor-atipico](https://user-images.githubusercontent.com/110897750/209688523-bfc79650-58f3-47cf-94e2-8bcb25246130.png)

<br>

Este es el resultado **sin valor atípico**:

![3-sin-valor-atipico](https://user-images.githubusercontent.com/110897750/209688525-21d85c96-8d20-42f0-873c-fadca0f84ff3.png)

<sub>[Verlo en el repositorio](./03-ejercicio-completo.R)</sub>

</p>
</details>


<br><hr>
<hr><br>


## 04 - Altura de las olas

<sub>[03 - Importar y analizar](#03---importar-y-analizar) | [Volver al índice](#indice) | [05 - Consumo de gasolina](#05---consumo-de-gasolina)</sub>

**Se ha realizado un estudio de la altura de las olas. Se tienen los siguientes datos sin agrupar en intervalos de clase:**

* **Altura de olas (metros): 1, 2, 3, 4, 5, 6, 7, 8, 9, 19**
* **Número de observaciones (frec abs): 2, 4, 6, 8, 10, 9, 7, 5, 4, 1**

**Construye la tabla de frecuencias sin clases a partir de la altura de las olas y la frecuencia absoluta.**
**Para la altura de las olas, calcula la media, mediana moda y cuasidesviación típica.**

<details>
<summary>SOLUCIÓN</summary>
<p>

```r
# datos
alturaOlas <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 19)
frecAbs <- c(2, 4, 6, 8, 10, 9, 7, 5, 4, 1)

datos <- rep(alturaOlas, frecAbs) # para obtener los datos brutos
n <- length(datos) # 56L

# tabla de frecuencias
tablaVertical <- data.frame(alturaOlas, frecAbs)

AlturaOlas <- tablaVertical$alturaOlas
FrecAbs <- tablaVertical$frecAbs
FrecRel <- FrecAbs / n
FrecAbsAcum <- cumsum(FrecAbs)
FrecRelAcum <- cumsum(FrecRel)

tablaFrec <- data.frame(AlturaOlas, FrecAbs, FrecRel, FrecAbsAcum, FrecRelAcum)
tablaFrec
# se imprime:
#    AlturaOlas FrecAbsoluta FrecRelativa FrecAbsAcumulada FrecRelAcumulada
# 1           1            2   0.03571429                2       0.03571429
# 2           2            4   0.07142857                6       0.10714286
# 3           3            6   0.10714286               12       0.21428571
# 4           4            8   0.14285714               20       0.35714286
# 5           5           10   0.17857143               30       0.53571429
# 6           6            9   0.16071429               39       0.69642857
# 7           7            7   0.12500000               46       0.82142857
# 8           8            5   0.08928571               51       0.91071429
# 9           9            4   0.07142857               55       0.98214286
# 10         19            1   0.01785714               56       1.00000000

# media
mean(alturaOlas) # 6.4

# mediana
median(alturaOlas) # 5.5

# moda -> miramos en la tabla de frecuencia creada antes
tablaFrec[which.max(FrecAbs), 1] # 5 (valor, no posición) -> moda = 5

# cuasidesviación típica
sd(alturaOlas) # 5.125102
```

[Verlo en el repositorio](./04-ejercicio-completo.R)

</p>
</details>

<br>

**¿Qué porcentaje de olas tiene una altura superior a 5.87m?**

<details>
<summary>SOLUCIÓN</summary>
<p>

```r
(length(which(datos > 5.87)) / n) * 100 # 48.21429%
```

[Verlo en el repositorio](./04-ejercicio-completo.R)

</p>
</details>

<br>

**¿Cuál es la altura máxima que alcanza el 30% de las olas de tamaño inferior?**

<details>
<summary>SOLUCIÓN</summary>
<p>

```r
quantile(datos, prob = 0.3) # 4m
```

[Verlo en el repositorio](./04-ejercicio-completo.R)

</p>
</details>

<br>

**¿Existe algún valor atípico? ¿Cuál? ¿Lo eliminarías?**

<details>
<summary>SOLUCIÓN</summary>
<p>

```r
boxplot.stats(datos)$out # 19 -> dato atípico
```

<br>

El valor atípico es el 19. En comparación con el resto de datos, es un valor muy alejado de la media y de la mediana. Por tanto, sí que lo eliminaría.

[Verlo en el repositorio](./04-ejercicio-completo.R)

</p>
</details>


<br><hr>
<hr><br>


## 05 - Consumo de gasolina

<sub>[04 - Altura de las olas](#04---altura-de-las-olas) | [Volver al índice](#indice)</sub>

**Este es el consumo de gasolina (l/100km) de 27 automóviles:**

|     |     |     |     |     |     |     |     |     |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 2,1 | 3,3 | 4,4 | 3,0 | 4,0 | 5,0 | 2,7 | 2,6 | 4,8 |
| 4,7 | 2,8 | 4,8 | 3,9 | 2,3 | 3,8 | 2,8 | 3,0 | 3,7 |
| 3,3 | 4,4 | 3,1 | 4,0 | 3,7 | 2,5 | 2,7 | 5,1 | 4,7 |

<br>

**Crea un objeto concatenando la lista de los elementos y asignándole el nombre *consumo*.**

<details>
<summary>SOLUCIÓN</summary>
<p>

```r
consumo <- c(2.1, 3.3, 4.4, 3.0, 4.0, 5.0, 2.7, 2.6, 4.8, 4.7, 2.8, 4.8, 3.9, 2.3, 3.8, 2.8, 3.0, 3.7, 3.3, 4.4, 3.1, 4.0, 3.7, 2.5, 2.7, 5.1, 4.7)
```

[Verlo en el repositorio](./05-ejercicio-completo.R)

</p>
</details>

<br>

**Si el precio de la gasolina es de 1.5€, calcula:**

* **Gasto medio por 100km**
* **Varianza del gasto**

<details>
<summary>SOLUCIÓN</summary>
<p>

```r
# gasto medio por 100km
gasto <- consumo * 1.5
mean(gasto) # 5.4

# varianza del gasto
n <- length(gasto) # 27
var(gasto) * (n - 1) / n # 1.788333
```

[Verlo en el repositorio](./05-ejercicio-completo.R)

</p>
</details>


<br><br>


[<< Ejercicios básicos](../01-ejercicios-basicos/README.md#enunciados-de-ejercicios-básicos-de-r) | [TEORÍA](../../TEORIA/) | [Variable aleatoria discreta >>](../03-variable-aleatoria-discreta/README.md#enunciados-variable-aleatoria-discreta)

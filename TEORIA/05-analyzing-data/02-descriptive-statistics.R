# CÁLCULOS ESTADÍSTICOS

# COMANDOS BÁSICOS
datos <- c(74,56,72,40,82,76,72,87,81,50,65,62) # crear vector

# ordenar valores del vector
sort(datos) # 40 50 56 62 65 72 72 74 76 81 82 87

# posiciones que tendrían los datos si estuvieran ordenados de menor a mayor
order(datos) # 4 10  2 12 11  3  7  1  6  9  5  8

# sumatorio de todos los datos
sum(datos) # 817

# acumular la suma
cumsum(datos) # 74 130 202 242 324 400 472 559 640 690 755 817

# longitud del vector
length(datos) # 12

# menor y mayor
min(datos) # 40
max(datos) # 87



# MEDIDAS DE TENDENCIA CENTRAL
# media y mediana
mean(datos) # 68.08333
median(datos) # 72

# moda
# forma 1
table(datos)
# imprime:
# 40 50 56 62 65 72 74 76 81 82 87 
#  1  1  1  1  1  2  1  1  1  1  1 
# se ve que el valor 72 es la moda
# forma 2
freqAbs <- data.frame(table(datos))
freqAbs # el valor con mayor valor en Freq es la moda
modaPos <- which(freqAbs$Freq == max(freqAbs$Freq))
modaPos # posición 6
moda <- freqAbs$datos[6] # 72
# forma 3
install.packages("modeest")
mfv(datos) # 72



# MEDIDAS DE POSICIÓN
# cuartiles -> dividir datos en 4 partes iguales
quantile(datos) # obtenemos cuartiles Q1, Q2 y Q3 (percentiles 25%, 50% y 75%)
# imprime:
#    0%   25%   50%   75%  100% 
# 40.00 60.50 72.00 77.25 87.00 

# deciles -> dividir datos en 10 partes iguales (en %)
quantile(datos, prob = seq(0, 1, length = 11))
# imprime:
#   0%  10%  20%  30%  40%  50%  60%  70%  80%  90% 100% 
# 40.0 50.6 57.2 62.9 67.8 72.0 73.2 75.4 80.0 81.9 87.0

# percentiles -> dividir datos en 100 partes iguales (en %)
quantile(datos, prob = seq(0, 1, length = 101))

# para calcular deciles o percentiles concretos
quantile(datos, prob = 0.2) # decil 2
# imprime:
#  20%
# 57.2
quantile(datos, prob = 0.65) # percentil 65
# imprime:
#  65%
# 74.3



# MEDIDAS DE DISPERSIÓN
# crear rangos
# forma 1
rangoDatos <- max(datos) - min(datos)
rangoDatos # 47
# forma 2
range(datos) # da el mínimo y máximo -> 40 87
rangoDatos2 <- range(datos) # lo guardamos en una variable
print(rangoDatos2[2] - rangoDatos2[1]) # 47

# cuasivarianza
var(datos) # 195.9015

# cuasidesviación típica
sd(datos) # 13.99648



# ASIMETRÍA Y CURTOSIS
# instalar el paquete e1071 usando el comando (abajo) o la ventana inferior derecha
# comando: install.packages(e1071)

# activar la librería
library(e1071)

# ASIMETRÍA
# >0 : a la derecha o positiva
# <0 : a la izquierda o negativa
# =0 : simétrica o normal
datos <- c(74,56,72,40,82,76,72,87,81,50,65,62) # creamos un vector de datos
skewness(datos) # -0.5360495 -> negativa

# CURTOSIS
# >0 : leptocúrtica
# <0 : platicúrtica
# =0 : normal
kurtosis(datos) # -0.935555 -> platicúrtica



# EJEMPLOS SENCILLOS

# ENUNCIADO 1: Calcular:
#   - media
#   - mediana
#   - cuasivarianza y varianza
#   - cuasidesviación típica y desviación típica
#   - cuartiles

# introducción de los datos
datos1 <- c(1,1,1,2,3,3,1,2,2,1,3,1,1)
n1 <- length(datos)

# obtener: mínimo, Q1, mediana (Q2), media, Q3 y máximo
summary(datos1)
# imprime:
#  Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
# 1.000   1.000   1.000   1.692   2.000   3.000
mean(datos1) # 1.692308 -> vemos que da lo mismo que en summary
median(datos1) # 1 -> vemos que da lo mismo que en summary

# cuasivarianza = varianza con corrección de Bessel *n/(n-1)
cuasivarianza1 <- var(datos1)
cuasivarianza1 # 0.7307692

#varianza = cuasivarianza * (n-1)/n
varianza1 <- cuasivarianza1 * (n1 - 1) / n1
varianza1 # 0.6745562

# cuasidesviación típica
cuasidesviacion1 <- sd(datos1)
cuasidesviacion1 # 0.8548504

# desviación típica
desviacion1 <- sqrt(varianza1)
desviacion1 # 0.8213137



# ENUNCIADO 2: dado el conjunto de datos2, calcular:
#   - media
#   - mediana
#   - Q1 y Q3
#   - mínimo y máximo sin quitar valores atípicos
#   - mínimo y máximo quitando valores atípicos

# introducción de los datos
datos2 <- c(115,232,181,161,155,137,165,171,139,130,406)
n2 <- length(datos2)

# media, mediana, Q1, Q3, min y max (sin quitar atípicos)
summary(datos2)
# imprime:
#    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#   115.0   138.0   161.0   181.1   176.0   406.0

# detectar valores atípicos -> boxplot.stats()
boxplot.stats(datos2)
# boxplot es un tipo de diagrama, se explicará en el tema 5

# este diagrama nos ofrece mucha información acerca del posicionamiento de los
# datos introducidos.

# boxplot.stats() muestra los datos de forma numérica. Imprime lo siguiente:
# $stats -> min(o valor inferior del bigote) Q1 Q2(mediana) Q3 max(o valor superior del bigote)
# [1] 115 138 161 176 232
#
# $n -> número de observaciones de la muestra
# [1] 11
#
# $conf -> extremos inferior y superior del intervalo de confianza
# [1] 142.8973 179.1027
#
# $out -> VALORES ATÍPICOS = lo que estamos buscando ahora
# [1] 406

# como hemos visto, el valor atípico en este caso es el "406"
# obtenemos la posición del elemento con valor 406:
atypicalPos <- which(datos2 == 406)

# borramos el valor del vector de datos
datos2sin <- datos2[-11]

# obtenemos min y max sin tener en cuenta valores atípicos
summary(datos2sin)
# imprime:
#    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#   115.0   137.5   158.0   158.6   169.5   232.0 
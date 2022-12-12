# TABLA DE FRECUENCIAS

# Se va a explicar cómo crear una tabla de frecuencias paso a paso a la vez que
# se realiza un ejemplo básico:
# 
# ENUNCIADO: Agrupar los datos en los siguientes 5 intervalos:
#   [20,40), [40,60), [60,80), [80,100), [100,120)
# y construir una tabla de frecuencias en las que figuren las columnas:
#   - Clases
#   - Frecuencia absoluta
#   - Frecuencia relativa
#   - Frecuencia absoluta acumulada
#   - Frecuencia relativa acumulada

# introducción de los datos (se podrían importar, pero en este caso se escriben)
datos<-c(50,68,84,86,64,67,78,87,110,85,52,65,52,93,72,70,105,85,30,42,74,30,70,65,49)
sort(datos) # ordenar los datos para tener mejor idea de su distribución
numDatos <- length(datos) # guardamos la cantidad de datos recogidos (25L)

num_intervalos <- sqrt(numDatos) # 5 -> si no da un entero, se redondea al inferior
amplitud_intervalo <- (max(datos)-min(datos)) / num_intervalos
# la amplitud da 16 -> lo redondeamos a 20 porque lo pide el enunciado

# hacemos 5 intervalos de una amplitud de 20.
# hacemos los límites de tal forma que se engloben todos los datos
sort(datos)
# el valor más pequeño es 30 y el más alto es 110
#   límite posible -> 20 40 80 100 120 (porque engloba a todos los valores)
limites <- c(20, 40, 80, 100, 120)

# creamos intervalos de los datos teniendo en cuenta los límites y que queremos
# que queden abiertos por la derecha, es decir: [dato1, dato2)
intervalos <- cut(datos, limites, right = FALSE)
intervalos

# hacemos la tabla de frecuencia
tabla <- table(intervalos)
tabla
# imprime:
# 
# intervalos
# [20,40)   [40,80)  [80,100) [100,120) 
#       2        15         6         2 

tablaVertical <- as.data.frame(tabla) # guardamos la tabla como un data frame
tablaVertical
# imprime:
# 
#   intervalos Freq
# 1    [20,40)    2
# 2    [40,80)   15
# 3   [80,100)    6
# 4  [100,120)    2

# creamos variables con los datos de las columnas
Clases <- tablaVertical$intervalos
FrecAbsoluta <- tablaVertical$Freq

# creamos los valores que nos faltan:
FrecRelativa <- FrecAbsoluta / 25
FrecAbsAcumulada <- cumsum(FrecAbsoluta)
FrecRelAcumulada <- cumsum(FrecRelativa)

# creamos la tabla de frecuencias
tablaFreq <- data.frame(Clases, FrecAbsoluta, FrecRelativa, FrecAbsAcumulada, FrecRelAcumulada)
tablaFreq

# Exportar tabla de frecuencias en formato .txt y Excel
setwd("C:/Users/larre/Documents/NAIA/programacion/repositorio-R/R-desde-cero/TEORIA/05-analizar-datos/")
# exportar a .txt
write.table(tablaFreq, file = "datos-exportados/01-tabla-de-frecuencias/tablaFreq1.txt", quote = FALSE, sep = "\t", dec = ".", row.names = FALSE, col.names = TRUE)
# exportar a Excel
library(readxl)
library(openxlsx)
write.xlsx(tablaFreq, file = "datos-exportados/01-tabla-de-frecuencias/tablaFreq1.xlsx")

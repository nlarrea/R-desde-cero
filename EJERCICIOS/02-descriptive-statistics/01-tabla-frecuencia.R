# ENUNCIADO 1:
# Agrupar los datos en los siguientes 5 intervalos [30,50), [50,70), [70,90),
# [90,110), [100,???) y construir una tabla de frecuencias en las que figuren
# las columnas:
#   - intervalos
#   - frecuencia absoluta
#   - frecuencia relativa
#   - frecuencia absoluta acumulada
#   - frecuencia relativa acumulada.

datos <- c(50,68,84,86,64,67,78,87,110,85,52,65,52,93,72,70,105,85,30,42,74,30,70,65,49)
n <- length(datos) # 25L

nIntervalos <- sqrt(n) # 5
amplitudIntervalos <- (max(datos) - min(datos)) / nIntervalos # 16

limites <- c(30,50,70,90,110,100,Inf)

intervalos <- cut(datos, limites, right = FALSE)
intervalos

# tabla de frecuencia
tablaF <- as.data.frame(table(intervalos))
tablaF

# guardamos datos en variables deseadas
intervalos <- tablaF$intervalos
freqAbs <- tablaF$Freq
freqRel <- freqAbs / n
freqAbsAcum <- cumsum(freqAbs)
freqRelAcum <- cumsum(freqRel)

# creamos la tabla de frecuencias
tabla_frecuencias <- data.frame(intervalos, freqAbs, freqRel, freqAbsAcum, freqRelAcum)
tabla_frecuencias
# se imprime:
#   intervalos freqAbs freqRel freqAbsAcum freqRelAcum
# 1    [30,50)       4    0.16           4        0.16
# 2    [50,70)       8    0.32          12        0.48
# 3    [70,90)      10    0.40          22        0.88
# 4   [90,100)       1    0.04          23        0.92
# 5  [100,110)       1    0.04          24        0.96
# 6  [110,Inf)       1    0.04          25        1.00
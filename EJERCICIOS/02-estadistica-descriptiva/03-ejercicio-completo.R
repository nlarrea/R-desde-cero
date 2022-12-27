# ENUNCIADO 3
# 1) Importar el archiv "oldcars.txt" y hacerlo accesible
setwd("C:/Users/larre/Documents/NAIA/programacion/repositorio-R/R-desde-cero/EJERCICIOS/02-estadistica-descriptiva/")
oldcars <- read.table(file = "datos-para-importar/oldcars.txt", sep = "\t", dec = ".", header = TRUE)
attach(oldcars)
oldcars



# 2) Construye la tabla de frecuencias de la variable qsec.
# El número de intervalos y amplitud es a tu criterio
n <- length(qsec)

sort(qsec) # minValue = 14.5, maxValue = 22.9

numIntervalos <- sqrt(n) # 5.6568... -> redondear al menos
numIntervalos <- floor(numIntervalos)

amplitud <- (max(qsec) - min(qsec)) / numIntervalos # 1.68 -> redondear a 2
amplitud <- round(amplitud) # 2

limites <- c(14,16,18,20,22,24)

intervalos <- cut(qsec, limites, right = FALSE)
intervalos

tabla <- table(intervalos)
tablaVertical <- as.data.frame(tabla)

Clases <- tablaVertical$intervalos
FrecAbsoluta <- tablaVertical$Freq
FrecRelativa <- FrecAbsoluta / n
FrecAbs_Acumulada <- cumsum(FrecAbsoluta)
FrecRel_Acumulada <- cumsum(FrecRelativa)

tablaFrec <- data.frame(Clases, FrecAbsoluta, FrecRelativa, FrecAbs_Acumulada, FrecRel_Acumulada)
tablaFrec



# 3) Haz un gráfico de tallos y hojas para la variable qsec
stem(qsec)
# imprime:
# 14 | 56
# 15 | 458
# 16 | 5799
# 17 | 00134468
# 18 | 00356699
# 19 | 459
# 20 | 002
# 21 | 
# 22 | 9



# 4) Haz un histograma para qsec poniendo título, nombre a los ejes y cambiando
#el tamaño de las etiquetas de los ejes y color de las barras
hist(qsec,
     main = "Histograma QSEC", cex.main = 1.5, # título y tamaño del título
     xlab = "Tiempo para realizar 1/4 milla (qsec)", # etiqueta eje x
     ylab = "Frecuencia absoluta", # etiqueta eje y
     ylim = c(0,13), # límites del eje y (valores del 0 al 13)
     axes = TRUE, # que ponga los ejes y los valores (por defecto = TRUE)
     cex.axis = 0.8, # tamaño de los números de los ejes
     cex.lab = 0.8, # tamaño de las etiquetas del eje x e y
     col = "red") # color del histograma



# 5) Comprobar el tamaño de cualquier otra variable importada. Crear otro objeto
# con la misma cantidad de datos con números aleatorios continuos y otro con
# números aleatorios enteros (escoger cualquier rango de números)
nVar <- length(vs) # 32L
obj1 <- runif(nVar, 5, 10) # números continuos aleatorios entre el 5 y el 10
obj1
obj2 <- sample(0:10, nVar, replace = TRUE) # números enteros aleatorios entre 0 y 10
obj2



# 6) Crea un data frame uniendo la base de datos oldcars importada y los dos
# objetos creados en el apartado 5)
oldcars2 <- data.frame(oldcars, obj1, obj2)
oldcars2



# 7) Crea un data frame seleccionando solo algunas columnas, filas o ambas
oldcars[1:10, ] # 10 primeras filas
oldcars[ , 3:4] # columnas 3 y 4 
oldcars[1:10, 3:4] # 10 primeras filas, columnas 3 y 4



# 8) Para las variables creadas en el apartado 5), calcula las medidas de
# tendencia central (media, mediana, moda), cuartil 3, decil 1 y percentil 30
# 
# medias
mean(obj1) # 7.515437
mean(obj2) # 5.8125

# medianas
median(obj1) # 7.782834
median(obj2) # 7

# modas
frecAbs1 <- data.frame(table(obj1))
# pedimos que mire cuál es el valor de frecuencia más alto y nos devuelva su
# valor pero de la primera columna
frecAbs1[which.max(frecAbs1$Freq), 1] # 5.0965442112647
frecAbs2 <- data.frame(table(obj2))
# pedimos que mire cuál es el valor de frecuencia más alto y nos devuelva su
# valor pero de la primera columna
frecAbs2[which.max(frecAbs2$Freq), 1] # 7

# Q3
quantile(obj1)[4] # Q3 = 8.527816
quantile(obj2)[4] # Q3 = 9

# decil 1
quantile(obj1, prob = seq(0, 1, length(11)))[2] # decil 1 = 9.596521
quantile(obj2, prob = seq(0, 1, length(11)))[2] # decil 1 = 10

# percentil 30
quantile(obj1, prob = 0.3) # 6.375424
quantile(obj2, prob = 0.3) # 4



# 9) Calcular la varianza de las dos variables creadas en el apartado 5)
varObj1 <- var(obj1) * (nVar-1) / nVar
varObj1 # 2.084202
varObj2 <- var(obj2) * (nVar-1) / nVar
varObj2 # 10.08984



# 10) Calcula el rango intercuartílico para qsec
#   - con el comando IQR
#   - "a mano" obteniendo Q1 y Q3, y restándolos (Q3 - Q1)
# comando
IQR(qsec) # 2.0075

# a mano
summary(qsec)
qsecQ1 <- summary(qsec)[[2]] # 16.8925
qsecQ3 <- summary(qsec)[[5]] # 18.9
qsecQ3 - qsecQ1 # 2.0075



# 11) Medidas de forma. Calcular la asimetría y curtosis de qsec
library(e1071) # activamos la librer?a

# asimetr?a
skewness(qsec) # 0.369453 = num positivo -> asimetría a la derecha

# curtosis
kurtosis(qsec) # 0.3351142 = num positivo -> leptocúrtica



# 12) Haz un diagrama de cajas para qsec. Determina el dato atípico y elimínalo
# para hacer otro diagrama de cajas
boxplot(qsec) # primer diagrama
boxplot.stats(qsec) # out = 22.9 = dato a eliminar -> buscar su posición
which(qsec == 22.9) # 9
qsecSin <- qsec[-9] # qsecSin = qsec sin el valor en la posición 9
sort(qsecSin) # comprobamos que no tenga el valor 22.9
boxplot(qsecSin) # segundo diagrama -> sin datos atípicos

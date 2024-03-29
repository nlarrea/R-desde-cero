# VARIABLE ALEATORIA CONTINUA

# DISTRIBUCIONES
# Uniforme        -> unif
# Exponencial     -> exp
# Normal          -> norm
# 
# 
# 
# PREFIJOS
# Funci�n de probabilidad -> d: halla la probabilidad para un valor puntual de X
# 
# Funci�n de distribuci�n -> p: halla la probabilidad acumulada hasta un valor X
# 
# Generar valores aleatorios que siguen la distribuci�n -> r
# 
# Funci�n cuantil -> q: halla la X (cuantil) para una probabilidad acumulada



# DISTRIBUCI�N UNIFORME
# Funci�n de probabilidad: dunif(x, min=..., max=...)
#   dar�a la probabilidad para ese valor de X
# 
# Funci�n de distribuci�n: punif(x, min=..., max=..., lower.tail=TRUE)
#   *lower.tail=TRUE -> probabilidades acumuladas desde la izquierda (X <= x)
#   *lower.tail=FALSE -> probabilidades acumuladas desde la derecha (X > x)
#   
# Generar valores aleatorios: runif(n, min=..., max=...)
#   calcula una serie de n�meros aleatorios de distribuci�n uniforme
#   *n = n�mero de observaciones
# 
# Funci�n cuantil: qunif(p, min=..., max=..., lower.tail=TRUE)
#   ponemos la probabilidad acumulada (p) y devuelve el cuantil (X)
#   *p = probabilidad acumulada
# 
# EN NINGUNO DE LOS CASOS es necesario escribir "min=" � "max=", puede ponerse
# �nicamente el valor de ambos (ejemplo: "dunif(3, 1, 7)")
# 
# 
# 
# EJEMPLO
# Variable aleatoria sigue distribuci�n uniforme.
# Par�metros: mean=10, sd=40.
# 
# Calcula:
# a) P(X<30)
punif(30, 10, 40) # 0.6666667

# b) P(X>20)
1-punif(20, 10, 40) # 0.6666667
punif(20, 10, 40, lower.tail = F) # 0.6666667 -> son lo mismo

# c) Valor que toma la funci�n de probabilidad en x=30
dunif(30, 10, 40) # 0.3333333



# DISTRIBUCI�N EXPONENCIAL
# Funci�n de probabilidad con tasa 1/B: dexp(x, 1/B)
# 
# Funci�n de distribuci�n con tasa 1/B: pexp(q, 1/B, lower.tail=TRUE)
#   *q = vector de cuantiles
# 
# Generar valores aleatorios: qexp(p, 1/B)
#   *p = vector de probabilidades
# 
# Funci�n cuantil: qexp(p, 1/B, lower.tail=TRUE)
# 
# 
# 
# EJEMPLO
# Variable aleatoria que sigue distribuci�n exponencial.
# Par�metros: B=10
# 
# Calcula:
# a) P(X<=8)
pexp(8, 1/10) # 0.550671

# b) P(2<=X<=8)
pexp(8, 1/10) - pexp(2, 1/10) # 0.3694018



# DISTRIBUCI�N NORMAL
# Funci�n de probabilidad: dnorm(x, mean, sd)
# 
# Funci�n de distribuci�n: pnorm(q, mean, sd, lower.tail=TRUE)
#   *q = vector de cuantiles
# 
# Generar valores aleatorios: rnorm(n, mean, sd)
#   *n = n�mero de observaciones. Si length(n) > 1, se toma length como n
# 
# Funci�n cuantil: qnorm(p, mean, sd, lower.tail=TRUE)
#   *p = vector de probabilidades
#   
# *lower.tail = TRUE -> P(X<=x)
# *lower.tail = FALSE -> P(X>x) -> ser�a lo mismo que hacer: 1-pnorm(q,mean,sd)
# 
# 
# 
# EJEMPLO
# Variable aleatoria sigue distribuci�n normal.
# Par�metros: media = 65.6 y s = 14.74
# 
# Calcula:
# a) P(X<60)
pnorm(60, 65.6, 14.74) # 0.3520029

# b) �Qu� valor de x deja el 12.1% a su derecha?
qnorm(0.121, 65.6, 14.74, lower.tail = FALSE) # 82.84584

# c) P(X>45)
pnorm(45, 65.6, 14.74, lower.tail = FALSE) # 0.918877
1 - pnorm(45, 65.6, 14.74) # 0.918877 -> son lo mismo



# GRAFICAR FUNCIONES DE PROBABILIDAD (DENSIDAD) Y DISTRIBUCI�N
# usar -> curve()
# 
# dentro de curve() se usar� la distribuci�n o probabilidad que se desee
# graficar haciendo uso de los prefijos

# Gr�ficos de distribuci�n uniforme:
curve(dunif(x, 100, 150), from = 0, to = 200) # de probabilidad (densidad)
curve(punif(x, 100, 150), from = 0, to = 200) # de distribuci�n

# Gr�ficos de distribuci�n exponencial:
curve(dexp(x, 1/10), from = 0, to = 10) # de probabilidad (densidad)
curve(pexp(x, 1/10), from = 0, to = 10) # de distribuci�n

curve(dnorm(x, 65.6, 14.74), from = 0, to = 150) # de probabilidad (densidad)
curve(pnorm(x, 65.6, 14.74), from = 0, to = 150) # de distribuci�n
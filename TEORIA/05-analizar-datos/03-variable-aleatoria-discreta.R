# VARIABLE ALEATORIA DISCRETA

# DISTRIBUCIONES
# Binomial            ->    binom
# Hipergeom�trica     ->    hyper
# Poisson             ->    pois
# Binomial negativa   ->    nbinom
# 
# 
# 
# PREFIJOS
# Funci�n de probabilidad -> d: halla la probabilidad para un valor puntual de X
# 
# Funci�n de distribuci�n -> p: halla la probabilidad acumulada hasta un valor X
# 
# Generar valores aleatorios que siguen la distribuci�n -> r
# EJEMPLO: rbinom(10, 100, 200) generar�a 10 valores aleatorios entre 100 y 200
# 
# Funci�n cuantil -> q: halla la X (cuantil) para una probabilidad acumulada



# EJEMPLO
# Variable aleatoria que tiene una distribuci�n binomial.
# Par�metros n=10, p=0.3.
# 
# Calcula:
# a) Probabilidad de que tome el valor 4 (x=4)
# 
# Tomar valor 4 = valor puntual -> prefijo "d"
# Distribuci�n binomial = binom
# prefijo + distribuci�n -> dbinom(x, n, p)
# 
# FORMA 1
x <- 4
n <- 10
p <- 0.3
dbinom(x, n, p) # 0.2001209
# FORMA 2
dbinom(4, 10, 0.3) # 0.2001209

# b) Probabilidad ACUMULADA hasta llegar al valor de 4.
# Probabilidad de que tome un valor igual o menor que 4. Esto es, P(X???4).
# 
# Tomar valor <= 4 -> probabilidad acumulada -> prefijo "p"
# Distribuci�n binomial (igual que antes) -> binom
# prefijo + distribuci�n -> pbinom(x, n, p)
pbinom(x, n, p) # 0.8497317



# CREAR SUCESOS ALEATORIOS
# 
# Para generar sucesos aleatorios -> sample(x, size, replace, prob)
# 
# x = vector con los valores posibles
# size = se indica la cantidad de items a escoger
# replace = TRUE o FALSE -> si se puede repetir un valor que haya salido
# prob = (default: NULL) si existe alguna probabilidad que condicione la salida

# EJEMPLO: Lanzamiento de un dado
dado <- 1:6 # definici�n del dado

sample(dado, 1) # lanzar el dado 1 vez -> 4
sample(dado, 5, replace = TRUE) # lanzar el dado 5 veces -> 5 4 2 3 2

# si el dado estuviera "trucado" y hubiera m�s probabilidad de que salieran
# unos lados que otros, primero, definimos las probabilidades de cada lado:
probDado <- c(0.1, 0.1, 0.1, 0.1, 0.1, 0.5) # m�s probabilidad de sacar 6

sample(dado, 5, replace = TRUE, prob = probDado) # 1 6 6 3 6



# REPRESENTACI�N DE LAS FUNCIONES DE PROBABILIDAD Y DISTRIBUCI�N
# 
# Ejemplo: lanzar 5 dados y que salga 1 � 2. Es decir, X: obtener 1 � 2.
# z = n�mero de resultados posibles:
#   - Que no salga ni 1 ni 2
#   - Que salga un 1 o un 2
#   - Que salga un 1 y un 2
#   - Que salgan dos 1
#   - Que salgan dos 2
z <- 0:5

plot(z, dbinom(z, 5, 2/6), type = "h")
# Es una distribuci�n binomial.
# Probabilidad de obtener 1 � 2 = 1/6 + 1/6 = 2/6
# type = "h" -> para representarlo como diagrama de barras

plot(z, pbinom(z, 5, 2/6), type = "s")

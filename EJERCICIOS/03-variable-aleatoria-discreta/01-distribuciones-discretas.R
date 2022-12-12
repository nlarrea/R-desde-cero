# REPASO DE DISTRIBUCIONES DISCRETAS

# EJERCICIO 1 -> visto en la teoría
# 
# Variable aleatoria que tiene una distribución binomial.
# Parámetros n=10, p=0.3. 
# 
# Calcula:
# a) Probabilidad de que tome el valor 4.

# tomar valor 4 -> x = 4 -> prefijo "d"
# distribución binomial -> dbinom(x, n, p)
dbinom(4, 10, 0.3) # 0.2001209

# b) Probabilidad de que tome un valor igual o menor que 4.

# x <= 4 -> prefijo "p"
# distribución binomial -> pbinom(x, n, p)
pbinom(4, 10, 0.3) # 0.8497317



# EJERCICIO 2
# 
# Variable aleatoria discreta que sigue una distribución de Poisson.
# Parámetro lambda = 3.
# 
# Calcula:
# a) Probabilidad de que tome el valor de 8.

# x = 8 -> prefijo "d"
# distribución de Poisson -> dpois(x, lambda)
dpois(8, 3) # 0.008101512

# b) Probabilidad de que tome un valor igual o menor que 8.

# x <= 8 -> prefijo "p"
# distribución de Poisson -> ppois(x, lambda)
ppois(8, 3) # 0.996197



# EJERCICIO 3
# 
# Variable aleatoria que sigue una distribución hipergeométrica.
# Tenemos 10 bolas en una caja: 6 negras y 4 blancas.
# Sacamos 3 bolas SIN REPOSICIÓN.
# 
# a) ¿Cuál es la probabilidad de obtener 2 bolas blancas?

# x = 2 -> sacar 2 bolas blancas -> prefijo "d"
# N = número total de bolas = 10
# n = número de bolas que sacamos = 3
# r = cantidad de bolas del tipo que queremos sacar (blancas) = 4
# 
# dhyper(x, r, N-r, n)
dhyper(2, 4, 10-4, 3) # 0.3

# ¿Cuál es la probabilidad de obtener como mucho 2 bolas blancas?

# lo mismo que en el apartado a), pero cambiando el prefijo a "p"
phyper(2, 4, 6, 3) # 0.9666667

# EJERCICIO DISTRIBUCIÓN EXPONENCIAL

# Una sustancia radiactiva tiene una distribución exponencial con un tiempo medio
# de vida de 5 minutos (esperanza de vida -> B = 5)

# a) ¿Cuál es la probabilidad de que la sustancia tenga un tiempo de vida entre
# 4 y 6 minutos?
pexp(6, 1/5) - pexp(4, 1/5) # 0.1481348

# b) Sabiendo que el tiempo de vida es por lo menos de 4 minutos, ¿cuál es la
# probabilidad de que el tiempo de vida sea menor de 5 minutos?
# 
# Es una probabilidad condicionada, sabemos que B=5:
# P(X<5|X>=4) = (P(X<5) - P(X<=4)) / (1 - P(X<4))
(pexp(5, 1/5) - pexp(4, 1/5)) / (1 - pexp(4, 1/5)) # 0.1812692

# c) Grafica la función de densidad y de distribución
curve(dexp(x, 1/5), from = 0, to = 200)
curve(pexp(x, 1/5), from = 0, to = 200)

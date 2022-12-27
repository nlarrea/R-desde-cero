# Una variable tiene una distribución normal con media 60 y varianza 1.
# 
# a) ¿Qué valor de la variable aleatoria X deja el 87.9% de la distribución a la
# derecha?
qnorm(0.879, 60, sqrt(1), lower.tail = F) # 58.83 -> forma 1
qnorm(1 - 0.879, 60, sqrt(1)) # 58.83 -> forma 2

# b) ¿Qué valor de la variable aleatoria X deja el 10% de la distribución a la
# izquierda?
qnorm(0.1, 60, sqrt(1)) # 58.71845

# c) Dibuja la función de probabilidad y de distribución
curve(dnorm(x, 60, sqrt(1)), 1, 100)
curve(pnorm(x, 60, sqrt(1)), 1, 100)
# EJERCICIO DE DISTRIBUCIÓN NORMAL

# En una población el peso de los jóvenes de 18 años sigue una distribución
# N(66, 8).
# 
# Calcula:
# a) Probabilidad de pesar más de 80kg
1 - pnorm(80, 66, 8) # 0.04005916 -> forma 1
pnorm(80, 66, 8, lower.tail = F) # 0.04005916 -> forma 2

# b) Probabilidad de pesar menos de 70kg
pnorm(70, 66, 8) # 0.6914625

# c) Probabilidad de pesar más de 50kg y menos de 80kg
pnorm(80, 66, 8) - pnorm(50, 66, 8) # 0.9371907

# d) Dibuja la función de densidad y distribución
curve(dnorm(x, 66, 8), from = 0, to = 100)
curve(pnorm(x, 66, 8), from = 0, to = 100)

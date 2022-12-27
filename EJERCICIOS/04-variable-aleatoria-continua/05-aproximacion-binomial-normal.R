# EJERCICIO LANZAMIENTO DE DADO

# Si lanzamos un dado 200 veces, calcula la probabilidad de que saquemos por lo
# menos 25 veces el valor 1 y como máximo 35 veces.
# 
# Resuélvelo usando la distribución DISCRETA BINOMIAL y realizando una aproximación
# con la DISTRIBUCIÓN NORMAL (corrección 0.5, X=24.5 y X=35.5 para que 25 y 35
# estén dentro)

# P(25<=X<=35) = P(x<=35) - P(x<25) = P(x<=35) - P(x<=24)
# pbinom(x, n, p) -> una cara del dado: p = 1/6
pbinom(35, 200, 1/6) - pbinom(24, 200, 1/6) # 0.6231995

# aproximación con distribución normal:
# media = n * p
# desviación típica = sqrt(n*p*q)
n <- 200; p <- 1/6; q <- 1 - p
media <- n * p
desv <- sqrt(n*p*q)
pnorm(35.5, media, desv) - pnorm(24.5, media, desv) # 0.6126306
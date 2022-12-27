# EJERCICIO "CASA DE CONSEJOS"

# En una casa de consejos al año se da consejo a 1200 personas.
# 
# a) ¿Cuál es la probabilidad de que el año siguiente se de consejo a más de 1085
# personas?
ppois(1085, lambda = 1200, lower.tail = FALSE) # 0.9996035
1 - ppois(1085, lambda = 1200) # 0.9996035 -> son lo mismo

# b) Calcula la probabilidad de dar consejo entre 1085 y 1200, ambos incluidos.
# Calcularlo con una distribución de Poisson y después aproximándolo con una
# distribución normal con corrección de continuidad del 0.5
# 
# P(1085<=X<=1200) = P(X<=1200) - P(X<1085) = P(X<=1200) - P(X<=1084)
ppois(1200, lambda = 1200) - ppois(1084, lambda = 1200) # 0.507321

# aproximación con normal:
# media = lambda
# desviación típica = sqrt(lambda)
media <- 1200
desv <- sqrt(1200)
pnorm(1200, media, desv) - pnorm(1084, media, desv) # 0.4995939
# con corrección de 0.5:
pnorm(1200, media, desv) - pnorm(1084.5, media, desv) # 0.4995723
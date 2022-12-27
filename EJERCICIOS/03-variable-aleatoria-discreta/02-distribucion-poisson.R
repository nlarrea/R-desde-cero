# EJERCICIO DISTRIBUCIÓN DE POISSON

# Variable aleatoria discreta que sigue una distribuci?n de Poisson.
# Par?metro lambda = 3.
# 
# Calcula:
# a) Probabilidad de que tome el valor de 8.

# x = 8 -> prefijo "d"
# distribuci?n de Poisson -> dpois(x, lambda)
dpois(8, 3) # 0.008101512

# b) Probabilidad de que tome un valor igual o menor que 8.

# x <= 8 -> prefijo "p"
# distribuci?n de Poisson -> ppois(x, lambda)
ppois(8, 3) # 0.996197
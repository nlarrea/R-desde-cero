# EJERCICIO DISTRIBUCIÓN BINOMIAL

# *Visto en la teoría
# 
# Variable aleatoria que tiene una distribuci?n binomial.
# Par?metros n=10, p=0.3. 
# 
# Calcula:
# a) Probabilidad de que tome el valor 4.

# tomar valor 4 -> x = 4 -> prefijo "d"
# distribuci?n binomial -> dbinom(x, n, p)
dbinom(4, 10, 0.3) # 0.2001209

# b) Probabilidad de que tome un valor igual o menor que 4.

# x <= 4 -> prefijo "p"
# distribuci?n binomial -> pbinom(x, n, p)
pbinom(4, 10, 0.3) # 0.8497317
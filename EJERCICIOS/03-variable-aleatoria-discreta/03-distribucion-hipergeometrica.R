# EJERCICIO DISTRIBUCIÓN HIPERGEOMÉTRICA

# Variable aleatoria que sigue una distribución hipergeométrica.
# Tenemos 10 bolas en una caja: 6 negras y 4 blancas.
# Sacamos 3 bolas SIN REPOSICI?N.
# 
# a) ?Cu?l es la probabilidad de obtener 2 bolas blancas?

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
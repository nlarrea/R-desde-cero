# EJERCICIO DE DISTRIBUCI?N DISCRETA

# Tenemos 100 piezas, 5 de ellas están defectuosas. Escogemos 10 piezas al azar.
# ¿Cuál es la probabilidad de coger como mucho 1 pieza defectuosa?

# a) Con reposición.

# Obtenemos los parámetros del enunciado:
# N = piezas totales = 100
# n = piezas que cogemos = 10
# r = piezas totales del tipo que queremos analizar (defectuosas) = 5
# x <= 1 -> prefijo "p"
# 
# con reposición -> misma probabilidad para todos los casos -> pbinom(x, n, p)
pbinom(1, 10, 5/100) # 0.9138616

# b) Sin reposici?n.

# Los parámetros del apartado a) se mantienen, pero ahora la probabilidad va
# cambiando -> distribución hipergeométrica -> phyper(x, r, N-r, n)
phyper(1, 5, 100-5, 10) # 0.9231433

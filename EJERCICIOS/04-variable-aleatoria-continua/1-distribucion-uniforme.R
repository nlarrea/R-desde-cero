# EJERCICIO DE DISTRIBUCIÓN UNIFORME

# En una compañía los gastos de teléfono por semana se distribuyen de manera
# uniforme entre 100 y 150 euros.
# 
# a) Calula la media de gasto (en teléfono) por semana y su desviación típica
# sabiendo que f(x) = 1/(b-a)
# 
# Ecuaciones:
#   media: (a + b) / 2
#   desviación típica: ((b - a)^2) / 12
media = (100 + 150) / 2 # 125
desv = sqrt(((150 - 100)^2) / 12) # 14.4337567

# b) ¿Cuál es la probabilidad de que en una semana el gasto sea menor que 120?
punif(120, 100, 150) # 0.4

# c) ¿Y mayor de 140?
# forma 1:
1-punif(140, 100, 150) # 0.2
# forma 2:
punif(140, 100, 150, lower.tail = FALSE) # 0.2

# d) ¿Cuál es la probabilidad de que sea menor que 120 o mayor que 130?
punif(120, 100, 150) # 0.4
punif(130, 100, 150, lower.tail = FALSE) # 0.4 -> son igual de probables

# e) Con "runif" genera valores aleatorios para esta distribución.
# Elige un tamaño de n para que la distribución se aproxime a una distribución
# uniforme comprobándolo con un histograma (hist): > hist(runif(n, 100, 150))
hist(runif(10000, 100, 150)) # usar un valor de n grande = más datos

# f) Grafica la función de densidad y la de distribución
curve(dunif(x, 100, 150), from = 0, to=200)
curve(punif(x, 100, 150), from = 0, to=200)

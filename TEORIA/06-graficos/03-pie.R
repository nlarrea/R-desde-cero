# GRÁFICO DE SECCIONES ("quesitos")

# crear un gráfico básico
x <- c(8,10,42,14)
y <- c("A", "B", "C", "D")
pie(x, labels = y)



# otro ejemplo
# 
# usamos tapply() para agrupar los datos en base a la columna "gear" y aplicar
# la función mean() a la columna "hp"
x <- tapply(mtcars$hp, mtcars$gear, mean)

# obtenemos las etiquetas de los datos utilizando la función names()
labels <- names(x)

# creamos el gráfico
pie(x, labels = labels, main = "Average HP by Gears")
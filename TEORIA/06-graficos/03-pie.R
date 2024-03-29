# GR�FICO DE SECCIONES ("quesitos")

# crear un gr�fico b�sico
x <- c(8,10,42,14)
y <- c("A", "B", "C", "D")
pie(x, labels = y)



# otro ejemplo
# 
# usamos tapply() para agrupar los datos en base a la columna "gear" y aplicar
# la funci�n mean() a la columna "hp"
x <- tapply(mtcars$hp, mtcars$gear, mean)

# obtenemos las etiquetas de los datos utilizando la funci�n names()
labels <- names(x)

# creamos el gr�fico
pie(x, labels = labels, main = "Average HP by Gears")
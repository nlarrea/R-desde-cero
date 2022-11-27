# GRÁFICOS DE BARRAS

# crear un gráfico de barras simple partiendo de una variable de datos
barplot(mtcars$hp)

# podemos usar "names.arg" para establecer los nombres de las etiquetas para
# las barras del gráfico
barplot(mtcars$hp, names.arg = rownames(mtcars))
# rownames(mtcars) se usa para seleccionar los nombres de las filas

# otro ejemplo
data <- c(10,42,8,100)
x <- c("A", "B", "C", "D")
barplot(data, names.arg = x)

# para crear un gráfico de barras horizontal -> parámetro: horiz = TRUE
barplot(mtcars$hp, horiz = TRUE)
barplot(data, names.arg = x, horiz = TRUE, col = "blue")
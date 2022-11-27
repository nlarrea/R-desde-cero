# GRÁFICOS BÁSICOS -> plot()
setwd("C:/Users/larre/Documents/NAIA/programacion/repositorio-R/R-desde-cero/TEORIA/06-plots/")

# crear un plot normal con puntos desde el 1 al 10 en ambos ejes:
# valores de (x, y): (1, 1), (2, 2) ... (10, 10)
plot(1:10, main = "My Chart", xlab = "X-axis", ylab = "Y-axis")

# podemos definir valores concretos a variables e insertar dichos valores a 
# los ejes del gráfico
x <- mtcars$wt
y <- mtcars$drat
plot(x, y, xlab = "weight", ylab = "rear axle ratio")

# crear gráficos con líneas en vez de puntos -> type = "l
plot(1:10, type = "l")

# podemos dibujar varias líneas en un mismo gráfico usando la función lines()
line1 <- c(0,8,14,42)
line2 <- c(2,4,6,8)
plot(line1, type = "l", col = "blue") # col = color
lines(line2, type = "l", col = "red")

# dibujar una "X"
x1 <- c(1, 10)
y1 <- c(1, 10)
x2 <- c(1, 10)
y2 <- c(10, 1)
plot(x1, y1, type = "l")
lines(x2, y2, type = "l")
# esto es un comentario, puedes escribir lo que quieras
# para crear un comentario, usa: '#'

# con la función print() se pueden imprimir los valores por pantalla, aunque
# aquí, en RStudio, puedes ver su valor en la consola con solo escribir el
# nombre de la variable



# VARIABLES
# para crear variables se usa '=' o '<-' (el segundo se usa más en R)
# 
# las variables en R son "case-sensitive", es decir, que "num" y "Num"
# son dos variables distintas



# TIPOS DE DATOS
# numéricos (con comas)
var1 <- 3.14

# integers (numéricos pero sin comas) -> poner un 'L' al final para indicar
# que es integer
var <- 88L

# texto (strings) -> tienen que ir entre comillas dobles (") o simples (')
var3 <- "hola"
var4 <- 'hola'
# si se quieren representar unas comillas: \" y usar cat() para imprimir
print("Esto imprime \"las barras\" y las comillas")
cat("Esto no imprime \"las barras\", solo las comillas")

# booleanos -> o verdadero (TRUE), o falso (FALSE)
verdadero <- TRUE # tambiés se puede usar solo 'T'
verdaderoTambien <- T
falso <- FALSE
falsoTambien <- F



# MATEMÁTICAS BÁSICAS
# variables de ejemplo:
x <- 11
y <- 4

# OPERADORES ARITMÉTICOS
# suma y resta
print(x + y) # 11+4 = 15
print(x - y) # 11-4 = 7

# multiplicación y división
print(x * y) # 11*4 = 44
print(x / y) # 11/4 = 2.75

# potencias -> 2 formas de hacerlo
print(x ^ y) # forma 1: 11^4 = 14641
print(x ** y) # forma 2: 11**4 = 14641

# módulo (resto de la división)
print(x %% y) # 11%%4 = 3

# división de integers (sin comas)
print(x %/% y) # 11%/%4 = 2

# funciones min() y max()
print(min(x, y)) # imprime el pequeño de los dos: 4
print(max(x, y)) # imprime el mayor de los dos: 11

# raíz cuadrada -> sqrt()
print(sqrt(64)) # 8

# repetir un valor X veces
rep(98, 5) # repite "98" 5 veces: 98 98 98 98 98
rep(c("si", "no"), 3) # repite "si" "no" 3 veces: "si" "no" "si" "no" "si" "no"



# RELATIONAL OPERATORS
# > mayor que
# < menor que
# >= mayor o igual que
# <= menor o igual que
# == igual que
# != diferente a
print(4 < 2) # FALSE
print (3 >= 3) # TRUE



# INTRODUCIR DATOS MANUALMENTE / PEDIR DATOS AL USUARIO
# introducir datos separados por ENTER: si se desea dejar de introducir datos,
# se debe dejar el espacio sin escribir y pulsar ENTER de nuevo
input <- scan()
input
# se habrá creado un vector con varios calores
# si quieres acceder al primer elemento de input: input[1]
# si quieres acceder al segundo elemento: input[2] (y así sucesivamente)


# otra forma de introducir datos manualmente es usar readline()
input <- readline(prompt = "Introduce algo: ")
input
# en este caso solo se recoge un único dato en formato "String", es decir, como
# cadena de texto.
# Si se ha introducido un valor numérico y se desea trabajar con él, deberá
# transformarse en un tipo de dato numérico
input <- as.numeric(input)
input

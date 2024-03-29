# esto es un comentario, puedes escribir lo que quieras
# para crear un comentario, usa: '#'

# con la funci�n print() se pueden imprimir los valores por pantalla, aunque
# aqu�, en RStudio, puedes ver su valor en la consola con solo escribir el
# nombre de la variable



# VARIABLES
# para crear variables se usa '=' o '<-' (el segundo se usa m�s en R)
# 
# las variables en R son "case-sensitive", es decir, que "num" y "Num"
# son dos variables distintas



# TIPOS DE DATOS
# num�ricos (con comas)
var1 <- 3.14

# integers (num�ricos pero sin comas) -> poner un 'L' al final para indicar
# que es integer
var <- 88L

# texto (strings) -> tienen que ir entre comillas dobles (") o simples (')
var3 <- "hola"
var4 <- 'hola'
# si se quieren representar unas comillas: \" y usar cat() para imprimir
print("Esto imprime \"las barras\" y las comillas")
cat("Esto no imprime \"las barras\", solo las comillas")

# booleanos -> o verdadero (TRUE), o falso (FALSE)
verdadero <- TRUE # tambi�s se puede usar solo 'T'
verdaderoTambien <- T
falso <- FALSE
falsoTambien <- F



# MATEM�TICAS B�SICAS
# variables de ejemplo:
x <- 11
y <- 4

# OPERADORES ARITM�TICOS
# suma y resta
print(x + y) # 11+4 = 15
print(x - y) # 11-4 = 7

# multiplicaci�n y divisi�n
print(x * y) # 11*4 = 44
print(x / y) # 11/4 = 2.75

# potencias -> 2 formas de hacerlo
print(x ^ y) # forma 1: 11^4 = 14641
print(x ** y) # forma 2: 11**4 = 14641

# m�dulo (resto de la divisi�n)
print(x %% y) # 11%%4 = 3

# divisi�n de integers (sin comas)
print(x %/% y) # 11%/%4 = 2

# funciones min() y max()
print(min(x, y)) # imprime el peque�o de los dos: 4
print(max(x, y)) # imprime el mayor de los dos: 11

# ra�z cuadrada -> sqrt()
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
# se habr� creado un vector con varios calores
# si quieres acceder al primer elemento de input: input[1]
# si quieres acceder al segundo elemento: input[2] (y as� sucesivamente)


# otra forma de introducir datos manualmente es usar readline()
input <- readline(prompt = "Introduce algo: ")
input
# en este caso solo se recoge un �nico dato en formato "String", es decir, como
# cadena de texto.
# Si se ha introducido un valor num�rico y se desea trabajar con �l, deber�
# transformarse en un tipo de dato num�rico
input <- as.numeric(input)
input

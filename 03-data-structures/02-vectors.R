# VECTORES

# CREAR VECTORES
# los vectores se crean usando: c()

# todos los elementos dentro de un vector tienen que ser del mismo tipo de dato
nombres <- c("June", "Naia", "Javi", "Itzi")
numeros <- c(1, 2, 3.14, 42, 2024)

# también se pueden crear índices para los valores:
edades <- c("James"=18, "Amy"=14, "John"=64)



# ACCEDER A VALORES DE UN VECTOR
print(nombres[2]) # imprime: "Naia", porque es el que está en la posición 2
print(nombres[-3]) # imprime: "June" "Naia" "Itzi" (se salta el que esté en la
#posición 3)
print(nombres[1:3]) # imprime: "June" "Naia" "Javi" (indicas posición inicial
#y final)

print(numeros[5]) # imprime: 2024

print(edades["James"]) # imprime: James 18
print(edades[["James"]]) # imprime: 18



# FUNCIONES DE VECTORES
# para saber la longitud de un vector (cuántos elementos tiene): length()
print(length(nombres)) # imprime: 4

# para sumar todos los valores de todos los elementos de un vector: sum()
print(sum(numeros)) # imprime: 2072.14

# para ordenar un vector: sort()
print(sort(numeros)) # imprime: 1.00 2.00 3.14 42.00 2024.00
# para ordenarlo de forma descendente:
print(sort(numeros, decreasing = TRUE)) # imprime: 2024.00 42.00 3.14 2.00 1.00



# CREAR RANGOS
# hemos visto que se pueden crear rangos usando ':', pero también se puede hacer:
x <- seq(1, 10, by=2) # crea un vector desde el 1 hasta el 10 con un paso de 2
print(x) # imprime: 1 3 5 7 9



# ARITMÉTICA CON VECTORES
# se pueden hacer operaciones aritméticas entre dos vectores si tienen la
#misma longitud (sumar, restar, multiplicar, etc.)
v1 <- c(2, 6, 1, 5)
v2 <- c(5, 3, 4, 8)

print(v1 + v2) # suma: 1 9 5 13
print(v1 - v2) # resta: -3 -3 -3 -3
print(v1 * v2) # multiplicación: 10 18 4 40
print(v1 / v2) # división: 0.400 2.000 0.250 0.625



# MEDIA Y MEDIANA
v <- c(2, 6, 1, 5, 42)

# media
print(mean(v)) # 11.2

# mediana
print(median(v)) # 5
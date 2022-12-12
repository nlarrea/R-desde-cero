# MATRICES -> igual que los vectores, pero de dos dimensiones

# CREAR MATRICES
# para crear matrices se usa la función: matrix()
# 
# se especifica o la cantidad de filas, o la cantidad de columnas, o las dos.

m <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3)

print(m)
# imprime:
#      [,1] [,2] [,3]
# [1,]    1    3    5
# [2,]    2    4    6

# los datos se almacenan por columnas primero por defecto
#
# si se da solo el valor de nrow, el valor de ncol se calcula automáticamente (y
# lo mismo pasa cuando es al revés)

# se pueden añadir nombres a las columnas y a las filas:
rownames(m) <- c("R1", "R2") # nombres a las filas
colnames(m) <- c("C1", "C2", "C3") # nombres a las columnas
m # para mostrar el valor
# imprime:
#    C1 C2 C3
# R1  1  3  5
# R2  2  4  6



# ACCEDER A LOS VALORES DE UNA MATRIZ
print(m[1, 3]) # 5 -> fila 1, columna 3
print(m[1, ]) # 1 3 5 -> fila 1
print(m[ , 2]) # 3 4 -> columna 2



# ASIGNAR NUEVOS VALORES
m[1, 1] <- 0
print(m) # cambia el valor de "1" por "0"



# OPERACIONES CON MATRICES
# traspuesta -> t()
print(m)
# imprime:
# 0 3 5
# 2 4 6

print(t(m)) # misma matriz, pero traspuesta
# imprime:
# 0 2
# 3 4
# 5 6

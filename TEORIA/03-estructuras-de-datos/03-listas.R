# LISTAS -> pueden guardar diferentes tipos de datos

# CREAR LISTAS
lista1 <- list("June", "hola", c(1, 2, 3), 52.3)



# ACCEDER A SUS VALORES -> forma similar a los vectores
print(lista1[[3]]) # imprime el vector: 1 2 3

# se puede crear una lista con elementos con nombre, para facilitar el acceso:
lista2 <- list("name"="Naia", "age"=24, "gender"=1, "student"=TRUE)
print(lista2$name) # imprime: "Naia"
print(lista2[[1]]) # imprime: "Naia", son lo mismo



# AÑADIR NUEVOS VALORES A LAS LISTAS
# forma 1:
lista2$country <- "Spain"
print(lista2)
# forma 2:
lista2[["favSport"]] <- "Rugby"
print(lista2)



# CONVERTIR UNA LISTA EN VECTOR -> para poder hacer operaciones aritméticas
nums <- list(2, 4, 6)
numsVector <- unlist(nums)

# ahora se pueden usar las operaciones de los vectores con numsVector:
print(sort(numsVector, decreasing = TRUE)) # 6 4 2
print(mean(numsVector)) # 4

# convertir una lista en vector hace que todos sus valores pasen a ser del mismo
# tipo, porque los vectores solo pueden tener un tipo de dato en su interior
# DATA FRAMES -> para almacenar diferentes tipos de datos en dos dimensiones

# un data frame es una tabla donde cada columna tiene un nombre y puede
# contener cualquier tipo de dato

# CREAR UN DATA FRAME -> data.frame()
people <- data.frame("id"=1:2, "name"=c("Cristina", "Naia"), "age"=c(28, 24))
# hemos creado una tabla con dos filas (dos personas), y 3 columnas



# ACCEDER A LOS DATOS
print(people[[2]]) # la segunda columna: Cristina Naia
print(people[["name"]]) # es lo mismo que antes: Cristina Naia
print(people$name) # lo mismo que antes: Cristina Naia

print(people[2])
# imprime:
#     name
# Cristina
#     Naia

print(people[2, 3]) # fila 2, columna 3 -> imprime: 24
print(people[[2,"age"]]) # lo mismo que antes: 24



# AÑADIR NUEVOS DATOS
people$rugbyTeam <- c("CUDER", "UBR")
print(people)



# FILTRAR DATOS
print(people[people$age > 25, ])
# imprime todos los datos de la que sea mayor de 25 (en este caso solo 1):
# id     name age rugbyTeam
#  1 Cristina  28     CUDER

# es importante añadir la coma para seleccionar la fila entera

# también se puede filtrar usando: subset()
# se le dan el data frame y las condiciones como argumentos:
print(subset(people, age > 25)) # imprime lo mismo de antes:
# id     name age rugbyTeam
#  1 Cristina  28     CUDER

# WHICH()
# la función which() devuelve la posición de los datos que cumplen la condición
people # para ver el data frame
which(people$rugbyTeam == "CUDER") # imprime: 1
which(people$rugbyTeam == "UBR") # imprime: 2



# OPERACIONES CON DATA FRAMES
# como las columnas son vectores, se pueden usar las funciones de los mismos:
print(mean(people$age)) # imprime: 26



# EXAMINAR UN DATA FRAME -> summary(), da como un resumen
summary(people)
#       id             name        age      rugbyTeam        
# Min.   :1.00   Cristina:1   Min.   :24   Length:2          
# 1st Qu.:1.25   Naia    :1   1st Qu.:25   Class :character  
# Median :1.50                Median :26   Mode  :character  
# Mean   :1.50                Mean   :26                     
# 3rd Qu.:1.75                3rd Qu.:27                     
# Max.   :2.00                Max.   :28                    



# FACTORS
# cuando un data frame tiene columnas que son solo texto, R crea "factors", que
# son variables con un limitado número de valores
estaciones <- factor(c("Invierno", "Primavera", "Verano", "Otoño", "Invierno"))
# a cada valor se le llama "level", se puede acceder a ellos con: levels(), y
# no se repiten los valores:
print(levels(estaciones)) # imprime: "Invierno" "Otoño" "Primavera" "Verano"
# cada valor tiene sus números, se puede acceder a ellos usando table()
print(table(estaciones))
# imprime:
# estaciones
# Invierno   Otoño   Primavera   Verano 
#        2       1           1        1 

# AÑADIR FACTORS A UN DATA FRAME
gender <- factor(c("Female", "Female"))
people$gender <- gender
print(people)
# imprime:
#   id     name age rugbyTeam gender
#    1 Cristina  28     CUDER Female
#    2     Naia  24       UBR Female

# los factors son útiles porque almacenan los textos una única vez y guarda
# cuántas veces se repite en forma de vectores
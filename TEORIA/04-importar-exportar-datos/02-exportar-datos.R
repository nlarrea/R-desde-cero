# EXPORTAR DATOS
# RECORDATORIO -> NECESARIO TENER LAS LIBRERÍAS SIGUIENTES ACTIVAS:
#   - readxl
#   - openxlsx
# RECORDATORIO -> PREFERIBLE ESTAR TRABAJANDO EN EL DIRECTORIO DE TRABAJO DONDE
# SE VAN A IMPORTAR / EXPORTAR LOS DATOS
#   - getwd() -> ver en qué directorio estamos
#   - setwd() -> cambiar a otro directorio
setwd("C:/Users/larre/Documents/NAIA/programacion/repositorio-R/R-desde-cero/TEORIA/04-importar-exportar-datos/datos-exportados/")

# se pueden exportar los datos guardados en un data frame tanto a formato .txt,
# como a Excel

# EJEMPLO
# creamos un data frame
# 1. creamos los vectores
num <- 1:10 # es lo mismo que hacer: c(1:10), o: c(1,2,3,4,5,6,7,8,9,10)
num_cuadrado <- num ^ 2
num_cubo <- num ^ 3

# 2. creamos el data frame
numeros <- data.frame(num, num_cuadrado, num_cubo)

# vemos el data frame:
numeros

# como la data frame la ha creado R, no es necesario hacer "attach()" para
# acceder a los datos de forma individual:
num
mean(num_cuadrado)



# EXPORTAR A .txt
write.table(numeros, file = "numeros-exportados.txt", sep = "\t", dec = ".", row.names = FALSE, col.names = TRUE)



# EXPORTAR A Excel
write.xlsx(numeros, file = "numeros-exportados.xlsx")

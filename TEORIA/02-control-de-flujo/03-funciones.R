# FUNCIONES DEFINIDAS POR EL USUARIO
# sintaxis de las funciónes: nombreDeFunción <- function(argumentos){}
# 
# si no se le asigna ningún nombre (o variable) a la función, se dice que es
# una "función anónima"
# 
# para llamar a una función con su nombre, se escribe directamente el nombre de
# esa función seguido de paréntesis en los que van introducidos los parámetros,
# es decir, los argumentos que necesita la función

# definición de la función
pow <- function(x, y){
  print(x ^ y) # la función IMPRIME el valor, no lo devuelve
}
# llamadas a la función:
pow(2, 3) # imprime el valor de 2^3, no devuelve nada
pow(6, 2) # imprime el valor de 6^5, no devuelve nada



# otro ejemplo:
# definir la función: nombreDeFunción <- function(parámetros){}
sum <- function(x, y){
  return(x + y) # la función DEVUELVE el valor, no lo imprime
}
# llamadas a la función:
print(sum(1, 2)) # imprimir el valor devuelto por la función (1+2 = 3)
resultado <- sum(3, 5) # ahora la variable "resultado" guarda el valor 8 (3+5)
print(resultado) # 8 -> como "resultado" es una variable, se puede usar



# ARGUMENTOS POR DEFECTO
# se puede asignar un valor por defecto a una variable
# 
# los argumentos por defecto son útiles cuando la función trabaja con algún valor
# que no es obligatorio aportar
# 
# si no se aporta ningún parámetro a la función, ésta utilizará el valor por
# defecto, pero si se le pasa algún parámetro, lo utilizará

saludar <- function(name="estudiante"){
  print(paste("Hola", name, sep=" "))
}
saludar() # imprime: "Hola estudiante"
saludar("June") # imprime: "Hola June"
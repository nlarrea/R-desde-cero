# FUNCIONES DEFINIDAS POR EL USUARIO
# definición de la función: nombreDeFunción <- function(parámetros){}
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



# PARÁMETROS POR DEFECTO
# se puede asignar un valor por defecto a una variable
saludar <- function(name="estudiante"){
  print(paste("Hola", name, sep=" "))
}
saludar() # imprime: "Hola estudiante"
saludar("June") # imprime: "Hola June"
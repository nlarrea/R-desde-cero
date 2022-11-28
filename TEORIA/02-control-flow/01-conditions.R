# TOMA DE DECISIONES -> if, else if, else
x <- 42
if(x >= 100){
  print("x es mayor o igual que 100")
} else if(x < 100 & x >= 0){
  print("x es menor que 100 y mayor o igual a 0")
} else {
  print("x es un número negativo (menor que 0)")
}

# otro ejemplo
if(x %% 2 == 0){
  print("x es par")
} else {
  print("x es impar")
}



# OPERADORES LÓGICOS -> "and" (&) y "or" (|)
if(x == 3 | x == 2){
  print("x es igual a 3, x es igual a 2")
}
if(x <= 10 & x >= 0){
  print("x es menor o igual que 10, y mayor o igual que 0")
}



# SWITCH
num <- 3
result <- switch(
  num, # variable que se usa para buscar el valor
  # lista de valores posibles:
  "Uno",
  "Dos",
  "Tres",
  "Cuatro"
)
print(result)
# imprime: "Tres", porque es el texto en la tercera posición y num vale 3

# otro ejemplo:
x <- "c"
result <- switch(
  x,
  "a" = "Uno",
  "b" = "Dos",
  "c" = "Tres",
  "d" = "Cuatro"
)
print(result)
# imprime: "Tres", porque hemos dicho que x vale "c", y el valor de "c" es "Tres"
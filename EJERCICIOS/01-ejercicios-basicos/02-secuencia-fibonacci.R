# 02 - FIBONACCI
# 
# Escribe un programa que pida al usuario un número entero positivo
# (N, por ejemplo) y muestre por pantalla los primeros N números de la
# secuencia de Fibonacci, comenzando desde el 0.

fib <- function(i, f1, f2){
  if(i == 0) return(0)
  else if(i == 1) return(1)
  return(f1 + f2)
}

fib1 <- 0
fib2 <- 0
i <- 0

num <- readline(prompt = "Introduce un número entero: ")

while(i < num){
  actualFib <- fib(i, fib1, fib2)
  print(actualFib)

  fib2 <- fib1
  fib1 <- actualFib
  i <- i + 1
}
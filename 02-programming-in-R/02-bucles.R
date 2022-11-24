# BUCLES
# los bucles se repiten mientras las condiciones sean TRUE



# BUCLE WHILE
i <- 1 # valor inicial de i
while(i <= 10){
  # mientras i <= 10 -> se imprime i
  print(i)
  i <- i + 1 # actualiza el valor de i para no crear un bucle infinito
}



# BUCLE FOR
for(x in 1:10){
  print(x)
}
# hace lo mismo que el bucle while de ejemplo
# "1:10" crea un rango de valores de 1 a 10 (ambos incluidos)



# BREAK / NEXT
# estos dos se usan si se quiere salir o saltar un valor concreto en un bucle
for(x in 1:10){
  if(x == 3){
    next
  }
  if(x == 6){
    break
  }
  print(x)
}
# imprime: 1, 2, 4, 5 (se salta el 3, y al llegar al valor 6, sale del bucle)
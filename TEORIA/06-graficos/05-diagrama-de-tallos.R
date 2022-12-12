# DIAGRAMA DE TALLOS Y HOJAS

# es similar a un histograma, nos da las frecuencias de cada valor y decimal

# creamos nuevos datos, algunos con decimales
datos <- c(1.1,1,1.2,2,3,3,1,2,2,2.3,1,3,1,1)

length(datos) # vemos que hay 14 datos

# creamos el diagrama de tallos y hojas
stem(datos)

# se imprime lo siguiente:
# 
# 1 | 0000012 -> que hay 5 datos con valor 1.0, uno con valor 1.1 y otro con 1.2
# 2 | 0003 -> que hay tres datos que valen 2.0 y uno vale 2.3
# 3 | 000 -> que hay tres datos con valor 3.0
# 
# si contamos la cantidad de números que hay situados a la derecha de las barras,
# veremos que hay 14. Este tipo de diagrama muestra el número entero a la
# izquierda y los decimales de dicho número a la derecha, repitiendo cada decimal
# las veces que se repite en el vector de datos



# si creamos el siguiente vector y hacemos su diagrama de hojas
datos2 <- c(2.11, 2.3, 1, 1.4, 3.78, 3.14)
stem(datos2)

# se imprime lo siguiente:
#
# 1 | 04
# 2 | 13
# 3 | 18
# 
# Se puede intuir que solo se imprime un decimal, y que cuando el número que se
# desea representar tiene más de un decimal, éste es redondeado, por lo que este
# tipo de gráfico no serviría para diferenciar números con decimales largos
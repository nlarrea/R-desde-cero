# STRINGS = cadenas de texto

# concatenar o unir cadenas -> paste()
t1 <- "hello"
t2 <- "world"
t3 <- "!"
result <- paste(t1, t2, t3)
print(result) # imprime: "hello world !"

# se puede indicar el tipo de separación (si no se pone nada, es un espacio):
result <- paste(t1, t2, t3, sep="-")
print(result) # imprime: "hello-world-!"



# PONER STRING EN MAYÚSCULA O MINÚSCULA
txt <- "Hola"

txt <- toupper(txt)
print(txt) # imprime: "HOLA"

txt <- tolower(txt)
print(txt) # imprime: "hola"
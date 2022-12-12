# STRINGS = cadenas de texto

# concatenar o unir cadenas -> paste()
t1 <- "hello"
t2 <- "world"
t3 <- "!"
result <- paste(t1, t2, t3)
print(result) # imprime: "hello world !"

# se puede indicar el tipo de separaci�n (si no se pone nada, es un espacio):
result <- paste(t1, t2, t3, sep="-")
print(result) # imprime: "hello-world-!"



# PONER STRING EN MAY�SCULA O MIN�SCULA
txt <- "Hola"

txt <- toupper(txt)
print(txt) # imprime: "HOLA"

txt <- tolower(txt)
print(txt) # imprime: "hola"



# CONVERTIR STRING EN INTEGER
x <- "5"
# si tenemos datos como STRINGS y queremos que sean num�ricos:
x <- as.integer(x)
# ahora s�, puedes usar el dato de 'x' como un n�mero:
print(x * 2)
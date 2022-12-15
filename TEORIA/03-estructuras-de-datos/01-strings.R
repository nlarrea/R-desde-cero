# STRINGS = cadenas de texto

# obtener caracteres o partes del string -> substr()
str <- "Hola mundo"
substr(str, 1, 1) # "H"
substr(str, 6, 10) # "mundo"

# separar en chars / convertir string en vector de caracteres -> strsplit()
strsplit(str, "") # "H" "o" "l" "a" " " "m" "u" "n" "d" "o"
str # "Hola mundo" -> no afecta al string original

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



# CONVERTIR STRING EN INTEGER
x <- "5"
# si tenemos datos como STRINGS y queremos que sean numéricos:
x <- as.integer(x)
# ahora sí, puedes usar el dato de 'x' como un número:
print(x * 2)

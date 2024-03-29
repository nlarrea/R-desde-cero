# IMPORTAR DATOS

# D�NDE ESTAMOS TRABAJANDO
# ver en qu� directorio est� trabajando R
getwd()

# interesante trabajar en el directorio desde el que se van a importar datos
# cambiamos la ubicaci�n en la que est� trabajando R:
setwd("C:/Users/larre/Documents/NAIA/programacion/repositorio-R/R-desde-cero/TEORIA/04-importar-exportar-datos/")
getwd() # para comprobar que se ha cambiado el directorio



# IMPORTAR DATOS DE ARCHIVO .txt CON COMANDOS -> forma 1 (comandos) -> read.table()
# primero cambio el directorio por haber a�adido carpeta para archivos
setwd("C:/Users/larre/Documents/NAIA/programacion/repositorio-R/R-desde-cero/TEORIA/04-importar-exportar-datos/datos-para-importar/")

# guardamos en "dataCostesTxt" los datos importados desde el archivo costes.txt
dataCostesTxt <- read.table(file = "costes.txt", header = TRUE, dec = ".", sep = "\t")

# file = "archivo desde el que leer"
# 
# si no estuvi�ramos trabajando en el directorio donde se encuentra "costes.txt",
# habr�a que haber indicado en "file" el directorio en vez de solo el nombre
# del archivo
# 
# header = TRUE o FALSE. Indica si los datos tienen una cabecera (en este caso, s�)
# dec = con qu� se indican las comas en los n�meros: "." (en este caso), o ","
# sep = con qu� se han separado los datos a importar en el archivo .txt
#     "\t" indica que se ha usado el tabulador

# imprimimos los datos:
dataCostesTxt
# se imprime lo siguiente:
#   costo_unit costo_mat costo_mano_de_obra
# 1      13,59        87                 80
# 2      15,71        78                 95
# 3      15,97        81                106
# 4      20,21        65                115
# 5      24,64        51                120

summary(dataCostesTxt) # podemos ver un "resumen" de lo que se ha importado



# ACCEDER A LOS DATOS DEL ARCHIVO .txt
var(dataCostesTxt$costo_unit) # dar� error -> no es accesible

# vamos a hacer los datos accesibles de forma "global" convirtiendo dataCostesTxt
# en un data frame:
attach(dataCostesTxt)

# imprimir los nombres de las variables creadas
names(dataCostesTxt) # imprime: "costo_unit" "costo_mat" "costo_mano_de_obra" 

# ahora s� se pueden calcular y mostrar valores
print(costo_mat) # imprime: 87 78 81 65 51

mean(costo_mat) # 72.4

# ahora s� va a funcionar
var(costo_mat) # 207.8

# EN VEZ DE USAR ATTACH, se podr�a usar: $
dataCostesTxt$costo_mat # mostrar�a: 87 78 81 65 51

class(costo_mat) # integer



# IMPORTAR DATOS DESDE UN ARCHIVO DE EXCEL CON COMANDOS -> forma 1 (comandos)
# para leer de un archivo Excel, hay que instalar y activar algunos paquetes:

# PASO 1: comprobar librer�as
library() # debemos ver si tenemos "readxl" y "openxlsx" instalados
# los nombres de ambas librer�as deber�an aparecer en la columna izquierda

# si no est�n instalados -> PASO 2
# si est�n instalados -> PASO 3

# PASO 2: instalar las librer�as
# Ir a "Packages" en la ventana inferior derecha de RStudio y clicar en Install
# 
# Escribir primero el nombre de una librer�a (readxl, por ejemplo) y clicar
# en instalar. Repetir con la otra librer�a (openxlsx).

# PASO 3: activar las librer�as
# FORMA 1
# Acceder a "Packages" en la ventana inferior derecha de RStudio.
# Buscar y activar el paquete "readxl" clicando en el checkbox de la izquierda
# Buscar y activar el paquete "openxlsx" de la misma forma
# 
# FORMA 2
library(readxl)
library(openxlsx)

# Ahora s�, se importan los datos con read_excel()
dataCostesXLSX <- read_excel("costes.xlsx")

dataCostesXLSX # visualizar que se haya importado bien
# imprime lo siguiente:
#   costo.unit costo.mat costo.mano.de.obra
#        <dbl>     <dbl>              <dbl>
# 1       13.6        87                 80
# 2       15.7        78                 95
# 3       16.0        81                106
# 4       20.2        65                115
# 5       24.6        51                120



# ACCEDER A LOS DATOS DEL ARCHIVO Excel
# 
# OPCI�N 1: comando attach(), al igual que pasaba con los archivos .txt
# 
# OPCI�N 2: usar el nombre de la variable donde hemos guardado los datos
# y a�adir el s�mbolo de dolar ($) seguido del nombre de la variable a la
# que se quiere acceder
attach(dataCostesXLSX)

dataCostesXLSX$costo.unit



# IMPORTAR ARCHIVOS SIN USAR COMANDOS -> forma 2: panel environment
# Ir a la ventana superior derecha de RStudio y clicar en "Import Dataset"
# Seleccionar:
#   "From Text(base)" para archivos .txt
#   "From Excel" para archivos Excel
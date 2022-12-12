# ENUNCIADO 4:
# Se ha realizado un estudio de la altura de las olas. Se tienen los siguentes
#datos sin agrupar en intervalos de clase
#   - altura de olas (metros): 1, 2, 3, 4, 5, 6, 7, 8, 9, 19
#   - n�mero de observaciones (frec abs): 2, 4, 6, 8, 10, 9, 7, 5, 4, 1

# 1) Construye la tabla de frecuencias sin clases a partir de la altura de la ola
#y la frecuencia absoluta. Para la altura de la ola, calcula la media, mediana,
#moda y cuasidesviaci�n t�pica.
alturaOlas <- c(1,2,3,4,5,6,7,8,9,19) # datos del enunciado
frecAbs <- c(2,4,6,8,10,9,7,5,4,1) # datos del enunciado

datos <- rep(alturaOlas, frecAbs) # para obtener los datos brutos
# rep multiplica cada dato de "alturaOlas" "frecAbs" veces obteniendo todos los
#datos como si se hubieran recogido uno a uno. Esto es �til para calcular la
#cantidad de datos recogidos, por ejemplo
n <- length(datos)

# tabla de frecuencias
# ya tenemos los datos con su frecuencia, nos podemos saltar el paso de
#table(datos) y usar directamente la altura de las olas con su frecAbs para
#crear un data frame
tableVertical <- data.frame(alturaOlas, frecAbs)
tableVertical
AlturaOlas <- tableVertical$alturaOlas
FrecAbsoluta <- tableVertical$frecAbs
FrecRelativa <- FrecAbsoluta / n
FrecAbsAcumulada <- cumsum(FrecAbsoluta)
FrecRelAcumulada <- cumsum(FrecRelativa)
tablaFrec <- data.frame(AlturaOlas, FrecAbsoluta, FrecRelativa, FrecAbsAcumulada, FrecRelAcumulada)
tablaFrec

# media, mediana, moda y cuasidesviaci�n t�pica de la altura de las olas
# media
mean(alturaOlas) # media = 6.4

# mediana
median(alturaOlas) # mediana = 5.5

# moda
# miramos en la tabla de frecuencias creada antes cu�l es el valor de la columna
#numero 1 (altura de las olas) con mayor valor en la frecuencia absoluta
tablaFrec[which.max(FrecAbsoluta), 1] # 5 (valor, no posici�n) -> moda = 5

# cuasidesviaci�n t�pica
sd(alturaOlas) # 5.125102



# 2) �Qu� porcentaje de olas tiene una altura superior a 5.87m?
(length(which(datos > 5.87)) / n) * 100 # 48.21429%



# 3) �Cu�l es la altura m�xima que alcanza el 30% de las olas de tama�o inferior?
quantile(datos, prob = 0.3) # 4



# 4) �Existen datos at�picos en la serie estad�stica? �Cu�l? �Lo eliminar�as?
boxplot.stats(datos) # out = 19
# s� lo eliminar�a. La diferencia con respecto al resto de datos es notable,
#lo que suele significar que la medida tomada es err�nea
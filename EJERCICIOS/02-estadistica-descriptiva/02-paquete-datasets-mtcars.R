# ENUNCIADO 2:
# 1) Cargamos la base de datos mtcars (del paquete datasets) en R
library(datasets)
attach(mtcars) # para convertir los datos de mtcars en "variables accesibles"
mtcars

# 2) Generamos una nueva variable litros100km (litros/100km).
# 
# Para ello, pasamos mpg (millas por gal?n) a litros/100km, sabiendo que
# una milla son 1.609 km, y un gal?n son 3.8 Litros
litros100km <- (1 / (mpg * (1.609344 / 3.78541))) * 100
litros100km

# 3) Creamos un data.frame nuevo con los vectores mpg, qsec y litros100km
tablaNueva <- data.frame(mpg, qsec, litros100km)
tablaNueva

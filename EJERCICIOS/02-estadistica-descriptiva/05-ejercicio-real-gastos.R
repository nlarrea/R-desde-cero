# ENUNCIADO 5:
# Este es el consumo de gasolina (l/100km) de 27 automóviles:
# 2,1 3,3 4,4 3,0 4,0 5,0 2,7 2,6 4,8
# 4,7 2,8 4,8 3,9 2,3 3,8 2,8 3,0 3,7
# 3,3 4,4 3,1 4,0 3,7 2,5 2,7 5,1 4,7

# 1) Crea un objeto concatenando la lista de los elementos y asignándole el
# nombre "consumo"
consumo <- c(2.1,3.3,4.4,3.0,4.0,5.0,2.7,2.6,4.8,4.7,2.8,4.8,3.9,2.3,3.8,2.8,3.0,
             3.7,3.3,4.4,3.1,4.0,3.7,2.5,2.7,5.1,4.7)



# 2) Si el precio de gasolina es 1.5 euros, calcular:
#   - gasto medio por 100km
#   - varianza del gasto

# media del gasto por 100km
gasto <- consumo * 1.5
mean(gasto) # 5.4

n <- length(gasto) # 27 (lo sabíamos porque lo dice el enunciado)
var(gasto) * (n - 1) / n # 1.788333

# 00 - FIZZ BUZZ
# 
# Escribe un programa que muestre por consola (con un print) los n�meros deL
# 1 aL 100 (ambos incluidos y con un salto de l�nea entre cada impresi�n),
# sustituyendo los siguientes:**
# 
# Multiplos de 3 por la palabra "fizz".
# Multiplos de 5 por la palabra "buzz".
# Multiplos de 3 y de 5 a la vez por la palabra "fizzbuzz".

for(i in 1:100){
  if(i %% 3 == 0 & i %% 5 == 0) print("fizzbuzz")
  else if(i %% 3 == 0) print("fizz")
  else if(i %% 5 == 0) print("buzz")
  else print(i)
}
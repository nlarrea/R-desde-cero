# 01 - ES ANAGRAMA
# Escribe una función que reciba dos palabras (String) y retorne verdadero o falso
# (Boolean) según sean o no anagramas.
# 
# Un Anagrama consiste en formar una palabra reordenando TODAS las letras de otra
# palabra inicial.
#   - NO hace falta comprobar que ambas palabras existan.
#   - Dos palabras exactamente iguales no son anagrama.

isAnagram <- function(str1 = "", str2 = ""){
  if(length(str1) != length(str2)) return(FALSE)
  if(tolower(str1) == tolower(str2)) return(FALSE)
  
  # install.packages("gtools")
  library(gtools)
  
  list1 <- c(mixedsort(strsplit(tolower(str1), "")[[1]]))
  list2 <- c(mixedsort(strsplit(tolower(str2), "")[[1]]))
  
  for(i in 1:nchar(str1)){
    if(list1[i] != list2[i]) return(FALSE)
  }
  
  return(TRUE)
}

print(isAnagram("mora", "roma")) # TRUE
print(isAnagram("pose", "rose")) # FALSE
print(isAnagram("hello", "world")) # FALSE
print(isAnagram("hello", "olleh")) # TRUE
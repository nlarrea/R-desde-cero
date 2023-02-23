# IMPORTAR Y EXPORTAR DATOS

En R, es posible importar los datos que se desean analizar desde archivos externos. Así como realizar el análisis de datos necesario y exportar dichos análisis.

En este apartado, se explicará cómo importar y exportar datos desde archivos típicos como blocs de notas (.txt) y Excel (.xlsx).

<p id="indice">He aquí el índice de los temas a tratar en este apartado:</p>

* [Importar datos](#importar-datos)
  * [Importar desde blocs de notas (.txt)](#importar-desde-blocs-de-notas)
  * [Importar desde Excel (.xlsx)](#importar-desde-excel)
  * [Importar sin usar comandos](#importar-sin-usar-comandos)
* [Exportar datos](#exportar-datos)
  * [Exportar a bloc de notas](#exportar-a-bloc-de-notas)
  * [Exportar a Excel](#exportar-a-excel)

<br>

[<< TEMA 3](../03-estructuras-de-datos/README.md#estructuras-de-datos) | [TEMA 5 >>](../05-analizar-datos/README.md#analizar-datos)

<br>

Es importante recordar que para importar y exportar datos **se recomienda trabajar dentro del directorio** donde se encuentra el archivo en cuestión, o al que se desea exportar.

Para ello, existen dos comandos muy útiles:

* **`getwd()`:** muestra el directorio en el que nos encontramos actualmente.
* **`setwd()`:** permite modificar el directorio de trabajo.

<br>

He aquí un ejemplo de cómo utilizarlos:

```r
# ver en qué directorio estamos
getwd()

# cambiar a otro directorio
setwd("C:/Users/larre/Desktop/")
```

<br>

El resultado de dicho código es el propio cambio de directorio.

Esto es lo que se mostraría por consola:

![01-cambio-directorio](https://user-images.githubusercontent.com/110897750/206918196-38310387-6243-4b15-b6a3-bea68b722d9c.jpg)
  

<br><hr>
<hr><br>


## Importar datos

<sub>* [Ver código](01-importar-datos.R)</sub>

Como es evidente, para poder analizar datos, es necesario introducirlos, ya sea de forma manual o mediante algún otro medio.

Por ello, R proporciona estos dos medios para poder importar datos:

* Haciendo uso de comandos
* Desde la ventana *Entorno de trabajo (superior derecha)*, en la pestaña **Environment**.


<br><hr>


### Importar desde blocs de notas

Para importar datos haciendo **uso de comandos** desde archivos .txt se utilizará el comando `read.table()`. **Para trabajar con los datos, se deben guardar en una variable**, de esta forma, se podrán utilizar posteriormente.

Este comando permite especificar ciertos atributos de los datos a importar:

* *`file`:* se indica el archivo a descargar, indicando el nombre del archivo y su extensión, o bien el directorio si no se encuentra en el mismo.
* *`header`:* se debe indicar con un boolean si los datos a importar tienen una cabecera o no.
* *`dec`:* se utiliza para indicar si los decimales están definidos con un punto, `.`, o con coma, `,`.
* *`sep`:* se utiliza para indicar con qué se han separado las columnas o los datos en el archivo .txt.

<br>

He aquí un ejemplo:

```r
# recordar el cambio del directorio de trabajo

# importar los datos y guardarlos en una variable
dataCostesTxt <- read.table(file = "costes.txt", header = TRUE, dec = ".", sep = "\t")

# mostrar los datos importados
dataCostesTxt
```

<br>

Como se puede apreciar en la imagen, a continuación, los datos han sido importados correctamente:

![02-importar-txt](https://user-images.githubusercontent.com/110897750/206918198-ba382cb4-0c05-4b4a-961e-f2e5b465c8e8.jpg)

<br>

Ahora, para **poder acceder y utilizar los datos** que han sido importados como si fueran variables creadas de forma individual dentro del programa, se debe usar el comando `attach()`.

De no querer usarlo, se puede acceder a los valores utilizando el símbolo de dolar `$` y el nombre de la variable donde se han guardado todos los datos.

Siguiendo con el ejemplo:

* ***Usando `attach()`:***

```r
attach(dataCostesTxt)
costo_mat
```

<br>

* ***Sin usar `attach()`:***

```r
dataCostesTxt$costo_mat
```

<br>

Este es el resultado de ambas formas:

![03-acceder-attach](https://user-images.githubusercontent.com/110897750/206918200-c44d921b-6ced-4a82-af71-18f5a1ffcbe7.jpg)

<sub>[Volver al índice](#indice) | [Exportar datos](#exportar-datos)</sub>


<br><hr>


### Importar desde Excel

Para poder trabajar con archivos de Excel es necesario **instalar y activar** una serie de paquetes o **librerías**. Dichas librerías están disponibles desde el propio RStudio.

A continuación, se van a explicar los pasos a seguir de cómo importar los datos.

<br>

#### PASO 1: Comprobar las librerías

En primer lugar, se debe **comprobar** si se ha realizado previamente la instalación de las siguientes librerías:

* readxl
* openxlsx

<br>

Para comprobar si están instaladas, se debe escribir lo siguiente:

```r
library()
```

<br>

Si se ha realizado la instalación, deberán aparecer los nombres de ambas librerías en la columna izquierda del archivo que se haya abierto.

* Si *no están instaladas*, ve al [PASO 2](#paso-2-instalar-las-librerías).
* Si *están instaladas*, puedes avanzar al [PASO 3](#paso-3-activar-las-librerías).

<br>

#### PASO 2: Instalar las librerías

Si no se dispone de las librerías mencionadas en el [PASO 1](#paso-1-comprobar-las-librerías), éstas deben ser instaladas.

Solo **se instalan una vez**, por lo que la próxima vez que se cierre y vuelva a abrir RStudio, no sería necesario instalarlas de nuevo.

Existen dos opciones:

* ***Utilizar el comando `install()`:***

```r
# instalar las librerías
install(readxl)
install(openxlsx)

# comprobar que se han instalado
library()
```

<br>

* ***Instalar desde la ventana de archivos, plots y paquetes (inferior derecha):***

Desde esa ventana, se accede a la pestaña de **Packages**, donde se debe clicar la opción *Install*.

En la ventana recién abierta se deberá **escribir el nombre de una de las librerías y clicar en instalar**. A continuación, *repetir* el proceso *con la siguiente*.

![04-instalar-desde-ventana](https://user-images.githubusercontent.com/110897750/206918202-9c36c632-b89a-4246-b464-e0fb48899f24.jpg)

<br>

#### PASO 3: Activar las librerías

Una vez instaladas, para que funcionen, las **librerías deben estar activadas** en nuestra sesión actual de RStudio.

De nuevo, se nos proporcionan dos formas distintas para poder activar dichas librerías:

* ***Utilizar el comando `library()`:***

Este comando ha sido visto anteriormente, pero esta vez se utilizará escribiendo entre las llaves de la función el nombre de la librería a activar:

```r
library(readxl)
library(openxlsx)
```

<br>

* ***Activar desde la ventana de archivos, plots y paquetes (inferior derecha):***

Acceder a la pestaña **Packages** situada en la ventana inferior derecha y buscar las librerías haciendo scroll por los paquetes instalados.

Cada librería tiene un checkbox delante. Para activarla, se debe **marcar dicha casilla**.

![05-activar-desde-ventana](https://user-images.githubusercontent.com/110897750/206918203-3b0a8c29-a1a0-4a95-8740-6ee354e61269.jpg)

<br>

**Tras haber seguido los 3 pasos**, he aquí un ejemplo:

```r
# recordar el cambio del directorio de trabajo

# importar los datos y guardarlos en una variable
dataCostesXLSX <- read_excel("costes.xlsx")

# mostrar los datos importados
dataCostesXLSX
```

<br>

Este es el resultado del código anterior:

![06-importar-excel](https://user-images.githubusercontent.com/110897750/206918201-9a616ef7-ce3b-4cf9-9b3d-076479444cf0.jpg)

<br>

Al igual que ocurría con los datos importados desde los blocs de notas, para los datos importados desde archivos Excel también se debe utilizar el comando `attach()` para poder trabajar con ellos sin tener que escribir el nombre de la variable cada vez que se quiera acceder a los datos y utilizarlos como si fueran variables creadas por nosotros.

<sub>[Volver al índice](#indice) | [Exportar datos](#exportar-datos)</sub>


<br><hr>


### Importar sin usar comandos

En RStudio cualquier archivo puede ser importado sin la necesidad de escribir un solo comando.

Para ello, se debe acceder a la ventana *superior derecha* y buscar la pestaña **Import Datashet**. Desde ahí, se abrirán varias opciones, donde las que nos interesan son las siguientes:

* ***From text (base):*** para importar desde un bloc de notas (**.txt**).
* ***From Excel:*** para importar datos desde un archivo de **Excel**.

<br>

![07-importar-sin-comandos](https://user-images.githubusercontent.com/110897750/206918204-1156d972-95f4-4e63-96c2-b413ddae3cb4.jpg)

<sub>[Volver al índice](#indice) | [Exportar datos](#exportar-datos)</sub>


<br><hr>
<hr><br>


## Exportar datos

<sub>* [Ver código](02-exportar-datos.R)</sub>

En primer lugar, recordar que se recomienda **conocer y/o modificar el directorio de trabajo** que se está utilizando. Para ello, se utilizan los siguientes comandos:

* **`getwd()`:** para comprobar en qué directorio de trabajo nos encontramos.
* **`setwd()`:** para modificar el directorio de trabajo.

<br>

Recordar también que para exportar a archivos Excel se necesitan las siguientes **librerías**:

* readxl
* openxlsx


<br><hr>


### Exportar a bloc de notas

Una vez se haya creado un *data frame* en nuestro programa de R, éste podrá ser exportado a un bloc de notas con el comando `write.table()`.

He aquí un ejemplo:

```r
# creación del data frame
dataF1 <- data.frame(
    nombre = c("June", "Naia", "Cristina", "Pablo"),
    edad = c(24, 24, 28, 26),
    ciudad = c("Amorebieta", "Amorebieta", "Murcia", "Galdakao")
)

# exportar a .txt
write.table(dataF1, file = "personas.txt", sep = "\t", dec = ".", row.names = FALSE, col.names = TRUE)
```

<br>

Como se puede observar, a la hora de exportar los datos, se han de especificar los siguientes parámetros de la función:

* *la variable:* se indica cuál es el data frame que contiene los datos a exportar.
* *`file`:* se indica el archivo a generar, indicando el nombre del archivo y su extensión, y el directorio si no se encuentra en el mismo.
* *`row.names`:* se debe indicar con un boolean si los datos a importar tienen unnombre en las filas o no.
* *`col.names`:* así como pasaba con las filas, se indica con un boolean si los datos a exportar tienen o no nombre en las columnas.
* *`dec`:* se utiliza para indicar si los decimales estarán definidos con un punto, `.`, o con coma, `,`.
* *`sep`:* se utiliza para indicar con qué se desea que vayan separados las columnas o los datos en el archivo .txt.

Este es el resultado:

![01-exportar-txt](https://user-images.githubusercontent.com/110897750/206918351-69119042-b3f3-497c-972f-7f7f582366f2.jpg)

<sub>[Importar datos](#importar-datos) | [Volver al índice](#indice)</sub>


<br><hr>


### Exportar a Excel

En este caso, el comando a utilizar será `write.xlsx()`.

He aquí un ejemplo:

```r
# creación del data frame
dataF1 <- data.frame(
  nombre = c("June", "Naia", "Cristina", "Pablo"),
  edad = c(24, 24, 28, 26),
  ciudad = c("Amorebieta", "Amorebieta", "Murcia", "Galdakao")
)

# exportar a Excel
write.xlsx(dataF1, file = "personas.xlsx")
```

<br>

A diferencia de lo ocurrido con los blocs de notas, los parámetros necesarios en este caso se reducen a dos:

* *la variable:* se indica cuál es el data frame que contiene los datos a exportar.
* *`file`:* se indica el archivo a generar, indicando el nombre del archivo y su extensión, y el directorio si no se encuentra en el mismo.

![02-exportar-excel](https://user-images.githubusercontent.com/110897750/206918354-4d8154bd-34f0-412d-b814-f2daa8e2ebb2.jpg)

<sub>[Importar datos](#importar-datos) | [Volver al índice](#indice)</sub>


<br><hr>
<hr><br>


[<< TEMA 3](../03-estructuras-de-datos/README.md#estructuras-de-datos) | [TEMA 5 >>](../05-analizar-datos/README.md#analizar-datos)

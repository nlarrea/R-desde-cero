# INTRODUCCIÓN A R

<sub>* [Ver código](introduccion.R)</sub>

[EJERCICIOS](../../EJERCICIOS/) | [TEMA 2 >>](../02-control-de-flujo/README.md#condiciones-bucles-y-funciones)

## ¿Qué es R?

R es un lenguaje de programación para el análisis estadístico de datos. Además:

* Es un **software libre** que está **disponible para Windows, Mac y Linux**.
* Es un lenguaje de programación **interpretado**: no es necesario compilar el código antes de ejecutarlo.
* Es un lenguaje de programación **orientado a objetos y funcional**: los objetos y las funciones son elementos centrales del lenguaje.
* Es un lenguaje de programación **dinámico**: las variables no tienen un tipo de datos fijo.
* Es un lenguaje de programación **de alto nivel**: es relativamente fácil de aprender y usar.


<br><hr><br>


## ¿Cómo comenzar a usar R?

Para comenzar a usar R, necesitamos instalar el software en nuestro ordenador. Para ello, te dejo aquí las siguientes opciones:

**OPCIÓN 1:** tener instalado **R** y **RStudio**. Para poder instalarlos solo debes hacer clic en los respectivos enlaces y seguir los pasos:

* [Instalar R](https://cran.r-project.org/)
* [Instalar RStudio](https://posit.co/download/rstudio-desktop/)

<br>

**OPCIÓN 2:** utilizar **Visual Studio Code** con el *plugin de R* en lugar de **RStudio**.

* [Instalar R](https://cran.r-project.org/)
* [Instalar Visual Studio Code](https://code.visualstudio.com/)
* [Instalar el plugin de R en Visual Studio Code](https://marketplace.visualstudio.com/items?itemName=Ikuyadeu.r)

Te dejo [aquí](https://code.visualstudio.com/docs/languages/r) más información sobre cómo usar R en Visual Studio Code.

La opción que personalmente estoy siguiendo es la **OPCIÓN 1**, por lo que, a continuación, se explicará brevemente cómo funciona RSudio. **Si prefieres utilizar Visual Studio Code, puedes [saltarte este apartado](#glosario).**

<br>

### RStudio

RStudio es un entorno de desarrollo integrado (IDE) para R. Es decir, es un programa que nos permite escribir código R, ejecutarlo y visualizar los resultados. Además, nos permite guardar el código en archivos, cargar archivos de código, etc.

RStudio está compuesto por cuatro partes principales:

* **[Editor de código](#editor-de-código)**: es el espacio donde escribimos el código R.
* **[Consola](#consola)**: es el espacio donde se ejecuta el código R.
* **[Entorno de trabajo](#entorno-de-trabajo)**: es el espacio donde se visualizan los resultados.
* **[Ventana de archivos, plots, paquetes, etc.](#ventana-de-archivos-plots-paquetes-etc)**: como su nombre indica, es el espacio donde se visualizan los archivos del directorio de trabajo, los plots (gráficos, etc.) creados, los paquetes, la pestaña de ayuda, etc.

<br>

![01-rstudio-editado](https://user-images.githubusercontent.com/110897750/204099722-fabe7e59-566b-4ea2-8b9c-35c783700e1a.jpg)

<br>

#### Editor de código

El editor de código es el espacio donde escribimos el código R. En este espacio podemos escribir código R, guardar el código en archivos, cargar archivos de código, etc.

Por defecto, el archivo creado se llamará "Untitled.R", sin embargo, se puede cambiar el nombre del archivo haciendo clic en el nombre del archivo en la parte superior del editor de código.

En esta ventana de scripts (código) se pueden escribir ordenes, comandos y ejecutarlos clicando el icono de "Run" o pulsando "Ctrl+Enter". También se pueden ejecutar todas las ordenes de un script pulsando "Ctrl+Shift+Enter". Si solo se quiere ejecutar una parte del script, se puede seleccionar la parte que se quiere ejecutar y pulsar "Ctrl+Enter" o hacer clic en el icono de "Run".

Si nos fijamos, veremos que cuando se ejecutan las ordenes, se van añadiendo al final de la ventana de la consola, la ventana inferior izquierda.

![02-scripts-ejecutados-editado](https://user-images.githubusercontent.com/110897750/204100278-ceeeb7c3-7149-4ff9-9d78-f7a6f87a4205.jpg)

<br>

#### Consola

A pesar de tener la opción de escribir el código de R en la ventana de scripts, es decir, en la de editor de código (ventana superior izquierda), en la consola también se pueden escribir comandos e ir ejecutándolos uno a uno. La consola es el espacio donde se ejecuta el código R.

Es más cómodo escribir los comandos directamente en el editor de código, aunque se podrían escribir en la consola para comprobar el funcionamiento y posteriormente copiarlos y pegarlos en el editor de código, eliminando siempre el ">" añadido de la consola.

En vez de copiar y pegar, también se puede acceder a la ventana "[Entorno de trabajo](#entorno-de-trabajo)" (ventana superior derecha), entrar en la pestaña "History", seleccionar el código que se quiere copiar y hacer clic en el icono "To Source", lo que transferirá automáticamente el código escrito en la consola al script.

![03-console-to-source-editado](https://user-images.githubusercontent.com/110897750/204100653-3e0513e9-2e9c-4f4b-b090-af65702d67f5.jpg)

<br>

#### Entorno de trabajo

El entorno de trabajo es el espacio donde se visualizan las variables, los objetos y parámetros creados al ejecutar el código, así como el historial de comandos.

Además, también se pueden importar datos desde archivos externos como archivos .txt o Excel, por ejemplo, desde la pestaña "Environment" (entorno de trabajo) haciendo clic en el icono "Import Dataset".

<br>

#### Ventana de archivos, plots, paquetes, etc.

La ventana de archivos, plots, paquetes, etc. es el espacio donde se visualizan los archivos del directorio de trabajo, los plots (gráficos, etc.) creados, los paquetes, la pestaña de ayuda, etc.

Desde aquí se pueden instalar paquetes y cargarlos.

Si se necesita ayuda con alguna función, se puede acceder a la pestaña "Help" y buscar la función que se necesita. Aunque otra forma de acceder a la ayuda es escribiendo "?" seguido del nombre de la función que se necesita ayuda. Por ejemplo, si se necesita ayuda con la función "read.csv", se puede escribir "?read.csv" en la consola y se abrirá la ayuda de la función.


<br>


### Sesiones en RSudio

Cuando se sale de RStudio, se ofrece la posibilidad de guardar la sesión de forma que pueda continuarse el trabajo en diferentes sesiones.

Al iniciar una sesión, por defecto, el programa busca los archivos solicitados en un determinado directorio. Este directorio se llama "Working Directory", se puede obtener la dirección del directorio con `getwd()`. Se aconseja usar diferentes directorios de trabajo para cada proyecto. Para cambiar el directorio de trabajo, se puede usar `setwd("ruta_del_directorio")`.

Para modificar la opción de guardar el espacio de trabajo, se puede acceder a la pestaña "Tools" y seleccionar la opción "Global Options". En la ventana que se abre, se puede seleccionar la opción "Restore .RData into workspace at startup" para que se guarde el espacio de trabajo al salir de RStudio, o desactivar la opción para que no se guarde.

<img src="https://user-images.githubusercontent.com/110897750/204100654-bb3b38de-ed91-40a5-b87b-adb495070133.jpg" alt="04-save-workspace-editado" width="50%">


<br><hr><br>


## Glosario

Datos generales y tipos de datos:

* **Comentarios**: son líneas de código que no se ejecutan, se utilizan para escribir notas sobre el código. En R se escriben con el símbolo `#`.
* **Variables**: son contenedores de información que se pueden utilizar en el código. En R se pueden crear variables con el símbolo `<-` o `=`.
* **Integers**: son números enteros.
* **Numeric o Float**: son números decimales.
* **Strings**: son cadenas de texto.
* **Boolean**: son valores lógicos, es decir, verdadero (`TRUE`) o falso (`FALSE`).
* **Objetos**: son contenedores de información que se pueden utilizar en el código.
* **Vectores**: son objetos de una sola dimensión que contienen una secuencia de valores del mismo tipo.
* **Matrices**: son objetos de dos dimensiones que contienen una secuencia de vectores (tienen filas y columnas).
* **Listas**: son objetos de una sola dimensión que contienen una secuencia de objetos de cualquier tipo.
* **Data frames**: son objetos de dos dimensiones que contienen una secuencia de vectores de la misma longitud.

<br>

Funciones:

* **Paquetes**: son colecciones de funciones, datos, etc. que se pueden utilizar en R.
* **Funciones**: son bloques de código que realizan una tarea específica. En R se pueden crear funciones con la palabra clave `function`.
* **Argumentos**: son los valores que se pasan a una función.
* **Argumentos posicionales**: son los argumentos que se pasan a una función en el orden en el que se han definido en la función.
* **Argumentos nombrados**: son los argumentos que se pasan a una función indicando el nombre del argumento al que se le quiere pasar el valor.
* **Argumentos por defecto**: son los argumentos que se pasan a una función si no se especifica un valor para el argumento.
* **Argumentos opcionales**: son los argumentos que se pasan a una función si se especifica un valor para el argumento.

<br>

Operadores:

* **Operadores**: son símbolos que indican una operación matemática. Por ejemplo:
  * El símbolo `+` indica la suma
  * El símbolo `-` indica la resta
  * El símbolo `*` indica la multiplicación
  * El símbolo `/` indica la división
  * Los símbolos `^` o `**` indican la potencia
  * El símbolo `%%` indica el módulo
  * El símbolo `%/%` indica la división entera (sin decimales)
* **Operadores lógicos**: son símbolos que indican una operación lógica. Por ejemplo:
  * El símbolo `==` indica la igualdad
  * El símbolo `!=` indica la desigualdad
  * El símbolo `>` indica mayor que
  * El símbolo `<` indica menor que
  * El símbolo `>=` indica mayor o igual que
  * El símbolo `<=` indica menor o igual que
  * El símbolo `&` indica la conjunción
  * El símbolo `|` indica la disyunción
  * El símbolo `!` indica la negación
* **Operadores de asignación**: son símbolos que indican una operación de asignación. En R se escriben con el símbolo `<-` o `=`, aunque el primero es el más utilizado.


<br><hr>
<hr><br>


[EJERCICIOS](../../EJERCICIOS/) | [TEMA 2 >>](../02-control-de-flujo/README.md#condiciones-bucles-y-funciones)

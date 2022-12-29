# Analizar datos

En este apartado de teoría vamos a ver cómo analizar datos. Va a ser un tema muy muy largo y quizás algo denso, donde no solo se hablará de cómo usar el programa, sino que se tratará de explicar la parte teórica de la estadística. Por eso, vamos a dividirlo en varios apartados.

<p id="indice">He aquí el índice de teoría estadística a seguir:</p>

1. [Estadística descriptiva](./README-files/01-estadistica-descriptiva.md#1-estadística-descriptiva)
    * [Variables estadísticas](./README-files/01-estadistica-descriptiva.md#variables-estadísticas)
        * [Representación gráfica de variables estadísticas](./README-files/01-estadistica-descriptiva.md#representación-gráfica-de-variables-estadísticas)
    * [Tablas de frecuencias](./README-files/01-estadistica-descriptiva.md#tablas-de-frecuencias)
        * [Tabla de frecuencias sin clases](./README-files/01-estadistica-descriptiva.md#tabla-de-frecuencias-sin-clases)
        * [Tabla de frecuencias con clases](./README-files/01-estadistica-descriptiva.md#tabla-de-frecuencias-con-clases)
        * [Tabla de frecuencias en R](./README-files/01-estadistica-descriptiva.md#tabla-de-frecuencias-en-r)
    * [Parámetros y estadísticos](./README-files/01-estadistica-descriptiva.md#parámetros-y-estadísticos)
    * [Estadísticos descriptivos](./README-files/01-estadistica-descriptiva.md#estadísticos-descriptivos)
        * [Medidas de tendencia central](./README-files/01-estadistica-descriptiva.md#medidas-de-tendencia-central)
        * [Medidas de dispersión](./README-files/01-estadistica-descriptiva.md#medidas-de-dispersión)
        * [Medidas de posición](./README-files/01-estadistica-descriptiva.md#medidas-de-posición)
        * [Medidas de forma](./README-files/01-estadistica-descriptiva.md#medidas-de-forma)
        * [Estadísticos descriptivos en R](./README-files/01-estadistica-descriptiva.md#estadísticos-descriptivos-en-r)
    * [Cambio de escala y origen](./README-files/01-estadistica-descriptiva.md#cambio-de-escala-y-origen)
        * [Cambio de escala](./README-files/01-estadistica-descriptiva.md#cambio-de-escala)
        * [Cambio de origen](./README-files/01-estadistica-descriptiva.md#cambio-de-origen)
        * [Cambio de ambas](./README-files/01-estadistica-descriptiva.md#cambio-de-ambas)
    * [Variables tipificadas](./README-files/01-estadistica-descriptiva.md#variables-tipificadas)
### PRÓXIMAMENTE
2. [Combinatoria](./README-files/02-combinatoria.md#2-combinatoria)
    * [Permutaciones](./README-files/02-combinatoria.md#permutaciones)
    * [Variaciones](./README-files/02-combinatoria.md#variaciones)
    * [Combinaciones](./README-files/02-combinatoria.md#combinaciones)
3. [Probabilidad](./README-files/03-probabilidad#3-probabilidad)
    * [Algebra de conjuntos](./README-files/03-probabilidad#algebra-de-conjuntos)
    * [Probabilidad condicionada](./README-files/03-probabilidad#probabilidad-condicionada)
    * [Probabilidad total y teorema de Bayes](./README-files/03-probabilidad#probabilidad-total-y-teorema-de-bayes)
        * [Probabilidad total](./README-files/03-probabilidad#probabilidad-total)
        * [Teorema de Bayes](./README-files/03-probabilidad#teorema-de-bayes)
4. [Variable aleatoria](./README-files/04-variable-aleatoria#4-variable-aleatoria)
    * [Variable aleatoria discreta](./README-files/04-variable-aleatoria#variable-aleatoria-discreta)
        * [Distribución uniforme](./README-files/04-variable-aleatoria#distribución-uniforme)
        * [Distribución de Bernoulli](./README-files/04-variable-aleatoria#distribución-de-bernoulli)
        * [Distribución binomial](./README-files/04-variable-aleatoria#distribución-binomial)
        * [Distribución hipergeométrica](./README-files/04-variable-aleatoria#distribución-hipergeométrica)
        * [Distribución de Poisson](./README-files/04-variable-aleatoria#distribución-de-poisson)
    * [Variable aleatoria continua](./README-files/04-variable-aleatoria#variable-aleatoria-continua)
        * [Funciones de densidad y distribución](./README-files/04-variable-aleatoria#funciones-de-densidad-y-distribución)
        * [Teorema de Tchebychev](./README-files/04-variable-aleatoria#teorema-de-tchebychev)
        * [Distribución uniforme continua](./README-files/04-variable-aleatoria#distribución-uniforme-continua)
        * [Distribución exponencial](./README-files/04-variable-aleatoria#distribución-exponencial)
        * [Distribución normal](./README-files/04-variable-aleatoria#distribución-normal)
        * [Convergencia entre distribuciones](./README-files/04-variable-aleatoria#convergencia-entre-distribuciones-1)
5. [Estimaciones](./README-files/05-estimaciones#5-estimaciones)
6. [Contraste de hipótesis](./README-files/06-contraste-de-hipotesis#6-contraste-de-hipótesis)

<br>

[<< TEMA 4](../04-importar-exportar-datos/README.md#importar-y-exportar-datos) | [TEMA 6 >>](../06-graficos/README.md#gráficos)


<br><hr>
<hr><br>


# Contacto

Si tienes alguna duda o sugerencia acerca del contenido de este documento o cualquier otro asunto, no dudes en contactar conmigo:

<div align="center">
&emsp;<a href="https://twitter.com/nloust_"><img width="16" alt="twitter_logo" src="https://user-images.githubusercontent.com/110897750/195668304-54d1fbb3-bea1-4f9d-9ee7-7e494bd79013.png"> @nloust_</a> <!-- twitter: -->
&emsp;<a href="https://www.instagram.com/n.loust/"><img width="16" alt="instagram_logo" src="https://seeklogo.com/images/I/instagram-new-2016-logo-4773FE3F99-seeklogo.com.png"> @n.loust</a> <!-- instagram: -->
&emsp;<a href="https://www.linkedin.com/in/naia-larrea/"><img width="16" alt="linkedin_logo" src="https://user-images.githubusercontent.com/110897750/195669519-30e44b5d-4bef-47d3-9e37-81cff0ee5e55.png"> Naia Larrea</a> <!-- linkedin: -->
</div>
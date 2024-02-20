# ENUNCIADOS VARIABLE ALEATORIA CONTINUA

En este apartado se encuentran los ejercicios que tratan la *variable aleatoria continua* y sus distribuciones correspondientes.

<p id=indice>He aquí un índice de los ejercicios a realizar:</p>

* **#01** - [Distribución uniforme](#01---distribución-uniforme)
* **#02** - [Distribución exponencial](#02---distribución-exponencial)
* **#03** - [Distribución normal](#03---distribución-normal)
* **#04** - [Distribución normal - valores de X](#04---distribución-normal---valores-de-x)
* **#05** - [Aproximación binomial a la normal](#05---aproximación-binomial-normal)
* **#06** - [Aproximación Poisson a la normal](#06---aproximación-poisson-normal)

<br>

[<< Variable aleatoria discreta](../03-variable-aleatoria-discreta/README.md#enunciados-variable-aleatoria-discreta) | [TEORÍA](../../TEORIA)


<br><hr>
<hr><br>


## 01 - Distribución uniforme

<sub>[Volver al índice](#indice) | [02 - Exponencial](#02---distribución-exponencial)</sub>

**En una compañía los gastos de teléfono por semana se distribuyen de manera uniforme entre 100 y 150 euros.**

**a) Calcula la media de gasto (en teléfono) por semana y su desviación típica.**

<details>
<summary>SOLUCIÓN</summary>
<p>

```r
# media -> (a + b) / 2
(100 + 150) / 2 # 125

# desviación típica -> sqrt((b - a)^2 / 12)
sqrt((150 - 100)^2 / 12) # 14.4337567
```

<sub>[Verlo en el repositorio](./01-distribucion-uniforme.R)</sub>

</p>
</details>

<br>

**b) ¿Cuál es la probabilidad de que el gasto sea menor de 120 euros?**

<details>
<summary>SOLUCIÓN</summary>
<p>

```r
# x < 120 -> X = 120
# distribución uniforme -> punif(X, min, max)

punif(120, 100, 150) # 0.4
```

<sub>[Verlo en el repositorio](./01-distribucion-uniforme.R)</sub>

</p>
</details>

<br>

**c) ¿Cuál es la probabilidad de que el gasto sea mayor de 140 euros?**

<details>
<summary>SOLUCIÓN</summary>
<p>

```r
# forma 1
punif(140, 100, 150, lower.tail = FALSE) # 0.2

# forma 2
1 - punif(140, 100, 150) # 0.2
```

<sub>[Verlo en el repositorio](./01-distribucion-uniforme.R)</sub>

</p>
</details>

<br>

**d) ¿Cuál es la probabilidad de que el gasto sea menor que 120 euros? ¿Y mayor que 130?**

<details>
<summary>SOLUCIÓN</summary>
<p>

```r
# menor que 120
punif(120, 100, 150) # 0.4

# mayor que 130
punif(130, 100, 150, lower.tail = FALSE) # 0.4
```

<sub>[Verlo en el repositorio](./01-distribucion-uniforme.R)</sub>

</p>
</details>

<br>

**e) Con "runif" genera valores aleatorios para esta distribución. Elige un tamaño de n para que la distribución se aproxime a una distribución uniforme comprobándolo con un histograma.**

<details>
<summary>SOLUCIÓN</summary>
<p>

```r
# runif(n, min, max)

hist(runif(10000, 100, 150)) # usar valor de n grande -> se aproxima a distribución uniforme
```

Este sería el histograma que se obtendría:

![1-histograma](https://user-images.githubusercontent.com/110897750/209708164-c9276072-b29d-41d7-9023-2a7fd503793f.png)

<sub>[Verlo en el repositorio](./01-distribucion-uniforme.R)</sub>

</p>
</details>

<br>

**f) Grafica la función de densidad y la de distribución.**

<details>
<summary>SOLUCIÓN</summary>
<p>

```r
# densidad -> dunif(x, min, max)
curve(dunif(x, 100, 150), from = 0, to = 200)

# distribución -> punif(x, min, max)
curve(punif(x, 100, 150), from = 0, to = 200)
```

Estos serían los gráficos que se obtendrían:

* Función de densidad:

![2-curve-dunif](https://user-images.githubusercontent.com/110897750/209708168-90607ad4-30c2-499c-b738-0c7fe92badd0.png)

<br>

* Función de distribución:

![3-curve-punif](https://user-images.githubusercontent.com/110897750/209708172-08314381-7e82-4f68-a91b-e77aa8e9f204.png)

<sub>[Verlo en el repositorio](./01-distribucion-uniforme.R)</sub>

</p>
</details>


<br><hr>
<hr><br>


## 02 - Distribución exponencial

<sub>[01 - Uniforme](#01---distribución-uniforme) | [Volver al índice](#indice) | [03 - Normal](#03---distribución-normal)</sub>

**Una sustancia radiactiva tiene una distribución exponencial con un tiempo medio de vida de 5 minutos (esperanza de vida: β = 5).**

**a) ¿Cuál es la probabilidad de que la sustancia tenga un tiempo de vida entre 4 y 6 minutos?**

<details>
<summary>SOLUCIÓN</summary>
<p>

```r
pexp(6, 1/5) - pexp(4, 1/5) # 0.1481348
```

<sub>[Verlo en el repositorio](./02-distribucion-exponencial.R)</sub>

</p>
</details>

<br>

**b) Sabiendo que el tiempo de vida es por lo menos de 4 minutos, ¿cuál es la probabilidad de que el tiempo de vida sea menor de 5 minutos?**

<details>
<summary>SOLUCIÓN</summary>
<p>

```r
# probabilidad condicionada:
# P(X<5 | X>4) = (P(X<5) - P(X<=4)) / (1 - P(X<4))

(pexp(5, 1/5) - pexp(4, 1/5)) / (1 - pexp(4, 1/5)) # 0.1812692
```

<sub>[Verlo en el repositorio](./02-distribucion-exponencial.R)</sub>

</p>
</details>

<br>

**c) Grafica la función de densidad y la de distribución.**

<details>
<summary>SOLUCIÓN</summary>
<p>

```r
# densidad -> dexp(x, 1/5)
curve(dexp(x, 1/5), from = 0, to = 200)

# distribución -> pexp(x, 1/5)
curve(pexp(x, 1/5), from = 0, to = 200)
```

Estos serían los gráficos que se obtendrían:

* Función de densidad:

![4-curve-dexp](https://user-images.githubusercontent.com/110897750/209708174-f0a8211a-2a73-402f-9e06-ec19f367c71e.png)

<br>

* Función de distribución:

![5-curve-pexp](https://user-images.githubusercontent.com/110897750/209708175-88780f2e-0353-4e37-ab5c-419085f20501.png)

<sub>[Verlo en el repositorio](./02-distribucion-exponencial.R)</sub>

</p>
</details>


<br><hr>
<hr><br>


## 03 - Distribución normal

<sub>[02 - Exponencial](#02---distribución-exponencial) | [Volver al índice](#indice) | [04 - Normal - valores de X](#04---distribución-normal---valores-de-x)</sub>

**En una población, el peso de los jóvenes de 18 años sigue la siguiente distribución: N(66, 8).**

**a) Calcula la probabilidad de que alguno pese más de 80kg.**

<details>
<summary>SOLUCIÓN</summary>
<p>

```r
# pnorm(x, mean, sd)

# forma 1
1 - pnorm(80, 66, 8) # 0.04005916

# forma 2
pnorm(80, 66, 8, lower.tail = FALSE) # 0.04005916
```

<sub>[Verlo en el repositorio](./03-distribucion-normal.R)</sub>

</p>
</details>

<br>

**b) Calcula la probabilidad de que alguno pese menos de 70kg.**

<details>
<summary>SOLUCIÓN</summary>
<p>

```r
pnorm(70, 66, 8) # 0.6914625
```

<sub>[Verlo en el repositorio](./03-distribucion-normal.R)</sub>

</p>
</details>

<br>

**c) Calcula la probabilidad de que alguno pese más de 50kg y menos de 80kg.**

<details>
<summary>SOLUCIÓN</summary>
<p>

```r
pnorm(80, 66, 8) - pnorm(50, 66, 8) # 0.9371907
```

<sub>[Verlo en el repositorio](./03-distribucion-normal.R)</sub>

</p>
</details>

<br>

**d) Dibuja la función de densidad y la de distribución.**

<details>
<summary>SOLUCIÓN</summary>
<p>

```r
# densidad -> dnorm(x, mean, sd)
curve(dnorm(x, 66, 8), from = 0, to = 100)

# distribución -> pnorm(x, mean, sd)
curve(pnorm(x, 66, 8), from = 0, to = 100)
```

Estos serían los gráficos que se obtendrían:

* Función de densidad:

![6-curve-dnorm](https://user-images.githubusercontent.com/110897750/209708176-fed123a2-b5d7-447a-a897-164f98876693.png)

<br>

* Función de distribución:

![7-curve-pnorm](https://user-images.githubusercontent.com/110897750/209708779-c100c318-9657-4513-94c2-efdadd891b12.png)

<sub>[Verlo en el repositorio](./03-distribucion-normal.R)</sub>

</p>
</details>


<br><hr>
<hr><br>


## 04 - Distribución normal - valores de X

<sub>[03 - Normal](#03---distribución-normal) | [Volver al índice](#indice) | [05 - Aproximación binomial-normal](#05---aproximación-binomial-normal)</sub>

**Una variable tiene una distribución normal con media 60 y varianza 1.**

**a) ¿Qué valor de X deja el 87.9% de la distribución a la derecha?**

<details>
<summary>SOLUCIÓN</summary>
<p>

```r
# qnorm(p, mean, sd)

#forma 1
qnorm(0.879, 60, sqrt(1), lower.tail = FALSE) # 58.83

#forma 2
qnorm(1 - 0.879, 60, sqrt(1)) # 58.83
```

<sub>[Verlo en el repositorio](./04-distribucion-normal-valores-de-x.R)</sub>

</p>
</details>

<br>

**b) ¿Qué valor de X deja el 10% de la distribución a la izquierda?**

<details>
<summary>SOLUCIÓN</summary>
<p>

```r
qnorm(0.1, 60, sqrt(1)) # 58.71845
```

<sub>[Verlo en el repositorio](./04-distribucion-normal-valores-de-x.R)</sub>

</p>
</details>

<br>

**c) Dibuja la función de densidad y la de distribución.**

<details>
<summary>SOLUCIÓN</summary>
<p>

```r
# densidad -> dnorm(x, mean, sd)
curve(dnorm(x, 60, sqrt(1)), from = 0, to = 100)

# distribución -> pnorm(x, mean, sd)
curve(pnorm(x, 60, sqrt(1)), from = 0, to = 100)
```

Estos serían los gráficos que se obtendrían:

* Función de densidad:

![8-curve-dnorm-60-sqrt1](https://user-images.githubusercontent.com/110897750/209708588-dd072e89-3a9d-406b-a2e9-55f771e6bd14.png)

<br>

* Función de distribución:

![9-curve-pnorm-60-sqrt1](https://user-images.githubusercontent.com/110897750/209708590-e4d26d3e-3480-4707-bff5-3184d94887b1.png)

<sub>[Verlo en el repositorio](./04-distribucion-normal-valores-de-x.R)</sub>

</p>
</details>


<br><hr>
<hr><br>


## 05 - Aproximación binomial-normal

<sub>[04 - Normal - valores de X](#04---distribución-normal---valores-de-x) | [Volver al índice](#indice) | [06 - Aproximación Poisson-normal](#06---aproximación-poisson-normal)</sub>

**Si lanzamos un dado 200 veces, calcula la probabilidad de que saquemos por lo menos 25 veces el valor 1 y como máximo 35 veces. Resuélvelo usando la distribución DISCRETA BINOMIAL y realizando una aproximación con la distribución NORMAL (corrección 0.5).**

<details>
<summary>SOLUCIÓN</summary>
<p>

```r
# binomial
# P(25<=x<=35) = P(x<=35) - P(x<25) = P(x<=35) - P(x<=24)
# pbinom(x, n, p) -> 1 cara del dado: p = 1/6
pbinom(35, 200, 1/6) - pbinom(24, 200, 1/6) # 0.6231995

# aproximación con la normal
# media = n * p
# desviación típica = sqrt(n * p * (1 - p))
n <- 200; p <- 1/6; q <- 1 - p
media <- n * p
desv_tipica <- sqrt(n * p * q)
pnorm(35.5, media, desv_tipica) - pnorm(24.5, media, desv_tipica) # 0.6126306
```

<sub>[Verlo en el repositorio](./05-aproximacion-binomial-normal.R)</sub>

</p>
</details>


<br><hr>
<hr><br>


## 06 - Aproximación Poisson-normal

<sub>[05 - Aproximación binomial-normal](#05---aproximación-binomial-normal) | [Volver al índice](#indice)

**En una *casa de consejos* al año se da consejo a 1200 personas.**

**a) ¿Cuál es la probabilidad de que el año siguiente se de consejo a más de 1085 personas?**

<details>
<summary>SOLUCIÓN</summary>
<p>

```r
# poisson
# ppois(x, lambda)

# forma 1
ppois(1085, lambda = 1200, lower.tail = FALSE) # 0.9996035

# forma 2
1 - ppois(1085, lambda = 1200) # 0.9996035
```

<sub>[Verlo en el repositorio](./06-aproximacion-poisson-normal.R)</sub>

</p>
</details>

<br>

**b) Calcula la probabilidad de dar consejo a entre 1085 y 1200 personas, ambos incluidos. Calcularlo con una distribución de POISSON y después aproximándolo con una distribución NORMAL, con una corrección de 0.5.**

<details>
<summary>SOLUCIÓN</summary>
<p>

```r
# poisson
# ppois(x, lambda)
# P(1085<=x<=1200) = P(x<=1200) - P(x<1085) = P(x<=1200) - P(x<=1084)
ppois(1200, lambda = 1200) - ppois(1084, lambda = 1200) # 0.0.507321

# aproximación con la normal
# media = lambda
# desviación típica = sqrt(lambda)
media <- 1200
desv_tipica <- sqrt(1200)
pnorm(1200, media, desv_tipica) - pnorm(1084.5, media, desv_tipica) # 0.4995723
```

<sub>[Verlo en el repositorio](./06-aproximacion-poisson-normal.R)</sub>

</p>
</details>


<br><br>


[<< Variable aleatoria discreta](../03-variable-aleatoria-discreta/README.md#enunciados-variable-aleatoria-discreta) | [TEORÍA](../../TEORIA)

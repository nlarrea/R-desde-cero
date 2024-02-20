# ENUNCIADOS VARIABLE ALEATORIA DISCRETA

En este apartado se encuentran los ejercicios que tratan la *variable aleatoria discreta* y sus distribuciones correspondientes.

<p id=indice>He aquí un índice de los ejercicios a realizar:</p>

* **#01** - [Distribución binomial](#01---distribución-binomial)
* **#02** - [Distribución de Poisson](#02---distribución-de-poisson)
* **#03** - [Distribución hipergeométrica](#03---distribución-hipergeométrica)
* **#04** - [Con o sin reposición](#04---con-o-sin-reposición)

<br>

[<< Estadística descriptiva](../02-estadistica-descriptiva/README.md#enunciados-estadística-descriptiva) | [TEORÍA](../../TEORIA) | [Variable aleatoria continua >>](../04-variable-aleatoria-continua)


<br><hr>
<hr><br>


## 01 - Distribución binomial

<sub>[Volver al índice](#indice) | [02 - De Poisson](#02---distribución-de-poisson)</sub>

**Una variable aleatoria tiene una distribución binomial.**
**Estos son los parámetros:**
* **n = 10**
* **p = 0.3**

<br>

**a) Calcula la probabilidad de que tome el valor 4**

<details>
<summary>SOLUCIÓN</summary>
<p>

```r
# tomar el valor 4 -> x = 4 -> prefijo: d
# distribución binomial -> dbinom(x, n, p)
dbinom(4, 10, 0.3) # 0.2001209
```

<sub>[Verlo en el repositorio](./01-distribucion-binomial.R)</sub>

</p>
</details>

<br>

**b) Calcula la probabilidad de que tome un valor igual o menor que 4**

<details>
<summary>SOLUCIÓN</summary>
<p>

```r
# tomar valor igual o menor que 4 -> x <= 4 -> prefijo: p
# distribución binomial -> pbinom(x, n, p)
pbinom(4, 10, 0.3) # 0.8497317
```

<sub>[Verlo en el repositorio](./01-distribucion-binomial.R)</sub>

</p>
</details>


<br><hr>
<hr><br>


## 02 - Distribución de Poisson

<sub>[01 - Binomial](#01---distribución-binomial) | [Volver al índice](#indice) | [03 - Hipergeométrica](#03---distribución-hipergeométrica)</sub>

**Una variable aleatoria discreta sigue una distribución de Poisson.**
**Tiene este parámetro:**
* **λ = 3**

<br>

**a) Calcula la probabilidad de que tome el valor 8**

<details>
<summary>SOLUCIÓN</summary>
<p>

```r
# x = 8 -> prefijo: d
# Poisson -> dpois(x, lambda)
dpois(8, 3) # 0.008101512
```

<sub>[Verlo en el repositorio](./02-distribucion-poisson.R)</sub>

</p>
</details>

<br>

**b) Calcula la probabilidad de que tome un valor igual o menor a 8**

<details>
<summary>SOLUCIÓN</summary>
<p>

```r
# x <= 8 -> prefijo: p
# Poisson -> ppois(x, lambda)
ppois(8, 3) # 0.996197
```

<sub>[Verlo en el repositorio](./02-distribucion-poisson.R)</sub>

</p>
</details>


<br><hr>
<hr><br>


## 03 - Distribución hipergeométrica

<sub>[02 - De Poisson](#02---distribución-de-poisson) | [Volver al índice](#indice) | [04 - Con o sin reposición](#04---con-o-sin-reposición)</sub>

**Se tiene una variable aleatoria que sigue una distribución hipergeométrica.**
**Hay 10 bolas en una caja: 6 negras y 4 blancas. Sacamos 3 bolas *sin reposición.***

**a) ¿Cuál es la probabilidad de que salgan 2 blancas?**

<details>
<summary>SOLUCIÓN</summary>
<p>

```r
# sin reposición -> la probabilidad cambia cada vez que se saca una bola

# x = 2 -> prefijo: d
# distribución hipergeométrica -> dhyper(x, r, N-r, n)

# N = número total de bolas = 10
# n = número de bolas que se sacan = 3
# r = cantidad de bolas del tipo a analizar (blancas) = 4

dhyper(2, 4, 10-4, 3) # 0.3
```

<sub>[Verlo en el repositorio](./03-distribucion-hipergeometrica.R)</sub>

</p>
</details>

<br>

**b) ¿Cuál es la probabilidad de que salgan como mucho 2 bolas blancas?**

<details>
<summary>SOLUCIÓN</summary>
<p>

```r
# sin reposición -> la probabilidad cambia cada vez que se saca una bola

# x <= 2 -> prefijo: p
# distribución hipergeométrica -> phyper(x, r, N-r, n)

# N = número total de bolas = 10
# n = número de bolas que se sacan = 3
# r = cantidad de bolas del tipo a analizar (blancas) = 4

phyper(2, 4, 10-4, 3) # 0.9666667
```

<sub>[Verlo en el repositorio](./03-distribucion-hipergeometrica.R)</sub>

</p>
</details>


<br><hr>
<hr><br>


## 04 - Con o sin reposición

<sub>[03 - Hipergeométrica](#03---distribución-hipergeométrica) | [Volver al índice](#indice)</sub>

**Se tienen 100 piezas, donde 5 de ellas están defectuosas. Se cogen 10 de esas piezas al azar.**
**¿Cuál es la probabilidad de coger como mucho 1 pieza defectuosa?**

**a) Con reposición**

<details>
<summary>SOLUCIÓN</summary>
<p>

```r
# con reposición -> misma probabilidad cada vez que se coge una bola

# distribución BINOMIAL
# x <= 1 -> prefijo: p
# pbinom(x, n, p)

# N = piezas totales = 100
# n = piezas que cogemos = 10
# r = piezas totales del tipo que se quiere analizar (defectuosas) = 5

pbinom(1, 10, 5/100) # 0.9138616
```

<sub>[Ver en el repositorio](./04-con-o-sin-reposicion.R)</sub>

</p>
</details>

<br>

**b) Sin reposición**

<details>
<summary>SOLUCIÓN</summary>
<p>

```r
# sin reposición -> cada vez que se coge una bola, cambia la probabilidad de la siguiente

# distribución HIPERGEOMÉTRICA
# x <= 1 -> prefijo: p
# phyper(x, r, N-r, n)

# N = piezas totales = 100
# n = piezas que cogemos = 10
# r = piezas totales del tipo que se quiere analizar (defectuosas) = 5

phyper(1, 5, 95, 10) # 0.9231433
```

<sub>[Ver en el repositorio](./04-con-o-sin-reposicion.R)</sub>

</p>
</details>


<br><br>


[<< Estadística descriptiva](../02-estadistica-descriptiva/README.md#enunciados-estadística-descriptiva) | [TEORÍA](../../TEORIA) | [Variable aleatoria continua >>](../04-variable-aleatoria-continua)

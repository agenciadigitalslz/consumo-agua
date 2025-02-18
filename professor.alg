Algoritmo "Consumo de água"

// Disciplina   : [Algoritmos]
// Professor   : Pedro Brandão Neto 
// Data atual  : 01/12/2024

Var

  consumo: vetor[1..10, 1..12] de real // armazena o consumo mensal

  l, c: inteiro // l é o indíce do ano e já c o índice dos meses

inicio

   // Os dados do consumo são gerados de forma aleatória escreval("Gerando dados de consumo mensal de água para os últimos 10 anos...")

   para l de 1 ate 10 faca

      para c de 1 ate 12 faca

         consumo[l, c] <- 80 + randi(620)// Consumo entre 80 e 700

      fimPara

   fimPara

   // Exibição dos dados de consumo

   escreval("Registro dos últimos 10 anos:")

   para l de 1 ate 10 faca

      escreval("Ano ", l, ":")

      para c de 1 ate 12 faca

         escreval("Mês ", c, ": ", consumo[l, c])

      fimPara

      escreval()

   fimPara

fimalgoritmo
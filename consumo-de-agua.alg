Algoritmo "Consumo de água aprimorado"
// Disciplina  : [Algoritmo e Programação]
// Professor   : Pedro Brandão Neto 
// Descrição   : Registro de consumo de água
// Autor(a)    : André da Silva Lopes e Andressa Souza
// Data atual  : 28/01/2025
// Versão      : 1.0

Var
   consumo: vetor[1..10, 1..12] de real // armazena o consumo mensal
   media_anual: vetor[1..10] de real   // armazena o consumo médio anual de cada ano
   variacao: vetor[1..9] de real       // armazena a variação percentual entre anos consecutivos
   l, c: inteiro                       // l é o índice do ano e c o índice dos meses
   soma, soma_total, media_total: real // variáveis auxiliares para somar o consumo anual e total
inicio
   // Saudação inicial aprimorada
   escreval("==============================================")
   escreval("Bem-vindo ao Sistema de Registro de Consumo de Água")
   escreval("==============================================")
   escreval("Gerando dados de consumo mensal de água para os últimos 10 anos...")
   escreval("==============================================")

   // Gerando dados de consumo aleatórios para os últimos 10 anos
   para l de 1 ate 10 faca
      para c de 1 ate 12 faca
         consumo[l, c] <- 80 + randi(620) // Consumo entre 80 e 700
      fimPara
   fimPara

   // Calculando o consumo médio anual
   para l de 1 ate 10 faca
      soma <- 0
      para c de 1 ate 12 faca
         soma <- soma + consumo[l, c]
      fimPara
      media_anual[l] <- soma / 12
   fimPara

   // Exibindo os dados de consumo
   escreval("Registro dos últimos 10 anos:")
   escreval()
   para l de 1 ate 10 faca
      escreval("==============================================")
      escreval("Ano ", l, ": Veja abaixo.")
      escreval("==============================================")
      para c de 1 ate 12 faca
         escreval("   Mês ", c, ": ", consumo[l, c]:6:2, " litros")
      fimPara
      escreval("==============================================")
      escreval("Média anual: ", media_anual[l]:6:2, " litros")
      escreval()
   fimPara

   // Calculando a média de todos os anos
   soma_total <- 0
   para l de 1 ate 10 faca
      soma_total <- soma_total + media_anual[l]
   fimPara
   media_total <- soma_total / 10

   escreval("==============================================")
   escreval("Média de consumo por ano:")
   para l de 1 ate 10 faca
      escreval("Média ano ", l, ": ", media_anual[l]:6:2, " litros")
   fimPara
   escreval("==============================================")
   escreval("Média de consumo de todos os anos: ", media_total:6:2, " litros")
   escreval("==============================================")
   escreval()

   // Funcionalidade adicional: Comparação de consumo entre anos consecutivos
   escreval("Variação percentual de consumo entre anos consecutivos:")
   escreval("==============================================")
   para l de 1 ate 9 faca
      variacao[l] <- ((media_anual[l+1] - media_anual[l]) / media_anual[l]) * 100
      escreval("   Do Ano ", l, " para o Ano ", l+1, ": ", variacao[l]:6:2, "%")
   fimPara
   escreval("==============================================")
   escreval()

   // Destaque para variações significativas
   escreval("Variações significativas (maiores que 10% ou menores que -10%):")
   escreval("==============================================")
   para l de 1 ate 9 faca
      se variacao[l] > 10 entao
         escreval("   Aumento significativo do Ano ", l, " para o Ano ", l+1, ": ", variacao[l]:6:2, "%")
      senao
         se variacao[l] < -10 entao
            escreval("   Redução significativa do Ano ", l, " para o Ano ", l+1, ": ", variacao[l]:6:2, "%")
         fimSe
      fimSe
   fimPara
   escreval("==============================================")
   escreval()

   // Saudação final
   escreval("Obrigado por utilizar o Sistema de Registro de Consumo de Água!")
   escreval("==============================================")
fimalgoritmo

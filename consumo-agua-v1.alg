Algoritmo "Consumo de água"
// Disciplina  : [Algoritmo e Programação]
// Professor   : Pedro Brandão Neto 
// Descrição   : Registro de funcionários
// Autor(a)    : André, Andressa e Augusto
// Data atual  : 15/01/2025
Var
    consumo: vetor[1..10, 1..12] de real // armazena o consumo mensal
    consumoAnual: vetor[1..10] de real // armazena o consumo anual
    mediaAnual: vetor[1..10] de real // armazena a média anual
    variacao: vetor[1..9] de real // armazena a variação entre anos consecutivos
    l, c: inteiro // o índice do ano e c o índice dos meses
inicio
    // Inicialização das variáveis
    para l de 1 ate 10 faca
        consumoAnual[l] <- 0
        mediaAnual[l] <- 0
    fimPara
    para l de 1 ate 9 faca
        variacao[l] <- 0
    fimPara

    // Geração e armazenamento dos dados de consumo
    escreval("Gerando dados de consumo mensal de água para os últimos 10 anos...")
    para l de 1 ate 10 faca
        para c de 1 ate 12 faca
            consumo[l, c] <- 80 + randi(620) // Consumo entre 80 e 700
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

    // Cálculo do consumo médio anual de cada ano
    para l de 1 ate 10 faca
        para c de 1 ate 12 faca
            consumoAnual[l] <- consumoAnual[l] + consumo[l, c]
        fimPara
        mediaAnual[l] <- consumoAnual[l] / 12
    fimPara

    // Exibição do consumo médio anual de cada ano
    escreval("Consumo médio anual:")
    para l de 1 ate 10 faca
        escreval("Ano ", l, ": ", mediaAnual[l]:0:2)
    fimPara

    // Comparação de consumo entre anos consecutivos
    para l de 1 ate 9 faca
        variacao[l] <- consumoAnual[l+1] - consumoAnual[l]
    fimPara

    // Exibição da variacão de consumo entre anos consecutivos
    escreval("Variação de consumo entre anos consecutivos:")
    para l de 1 ate 9 faca
        escreval("Ano ", l, " para Ano ", l+1, ": ", variacao[l]:0:2)
    fimPara
fimalgoritmo
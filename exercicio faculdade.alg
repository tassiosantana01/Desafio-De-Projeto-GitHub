algoritmo "Exercício"

procedimento  instrucao()
inicio
Escreval ("Desenvolva um algoritmo de acordo com os requisitos abaixo.")
Escreval ("")
Escreval ("Menu principal")
Escreval (" 1- Adicionar valores no vetor")
Escreval (" 2- Remover um valor especifico")
Escreval (" 3- Rotinas especiais")
Escreval (" 4- Exibir os elementos")
Escreval ("")
Escreval ("Menu Rotinas Especiais")
Escreval (" 1- Mostrar o maior elemento do vetor")
Escreval (" 2- Mostrar o menor elemento do vetor")
Escreval (" 3- Exibir a soma total dos elementos")
Escreval (" 4- Exibir a media dos elementos")
Escreval (" 5- Retornar ao menu principal")
Escreval ("")
fimprocedimento

procedimento recebenumeros()
inicio
Escreval ("                          <><> Menu Principal <><>")
Escreval("")
Escreval("Digite quatro números.")
Escreval("")
posicao <-1
para posicao de 0 ate 3 faca
Escreval("Digite um valor:")
leia(valor[posicao])
fimpara
Escreval("")
fimprocedimento

procedimento removenumero()
inicio

Escreval("Escolha um valor digitado e remova:")
Escreval("Digite 1 para remover o valor:", valor[0])
Escreval("Digite 2 para remover o valor:", valor[1])
Escreval("Digite 3 para remover o valor:", valor[2])
Escreval("Digite 4 para remover o valor:", valor[3])
Escreval("")
leia(remover)
escolha (remover)

caso 1
valor[0] <- 0
caso 2
valor[1] <- 0
caso 3
valor[2] <- 0
caso 4
valor[3] <- 0
fimescolha

enquanto (remover > 4) faca
Escreval("Valor invalido, digite outro valor:")
leia(remover)
escolha (remover)

caso 1
valor[0] <- 0
caso 2
valor[1] <- 0
caso 3
valor[2] <- 0
caso 4
valor[3] <- 0

fimescolha
fimenquanto
fimprocedimento

procedimento valormaioremenor()
inicio
Escreval ("                          <><> Menu Rotinas Especiais <><>")
Escreval ("")
posicao <- 1
para posicao de 0 ate 3 faca
se valor[posicao] > valor[maior] entao
maior <- posicao
fimse
se valor[posicao] < valor[menor] entao
menor <- posicao
fimse
fimpara
Escreval ("O maior valor é:", valor[maior]," e o menor valor é:", valor[menor])
fimprocedimento

procedimento somadosnumeros()
inicio
posicao <- 1
para posicao de 0 ate 3 faca
soma <- soma + valor[posicao]
fimpara
Escreval ("O valor total dos numeros é:", soma)
Escreval ("A media dos valor é:", soma/4)
Escreval("")

fimprocedimento

procedimento retornarmenu()
inicio
Escreval ("Digite 1 para retornar ao menu principal")
leia(volta)
limpatela
escolha(volta)

caso 1
recebenumeros()
removenumero()
valormaioremenor()
somadosnumeros()
retornarmenu()

outrocaso
Escreval ("O maior valor é:", valor[maior]," e o menor valor é:", valor[menor])
Escreval ("O valor total dos numeros é:", soma)
Escreval ("A media dos valor é:", soma/4)
fimescolha

fimprocedimento

var
valor : vetor[0..3] de inteiro
posicao : inteiro
volta, soma, maior, menor, remover : inteiro

inicio
instrucao()
recebenumeros()
removenumero()
limpatela
valormaioremenor()
somadosnumeros()
retornarmenu()

fimalgoritmo

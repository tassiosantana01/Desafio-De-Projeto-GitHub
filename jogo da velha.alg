algoritmo "jogo da velha"

// ---------------------------------------------------
 procedimento inserirMatriz()
 inicio
 para i de 1 ate 3 faca
     para j de 1 ate 3 faca
         cont <- cont + 1
         jogo [i,j] <- numpcarac(cont)
     fimpara
 fimpara
 
 fimprocedimento
// -------------------------------------------------
 procedimento velha()
 inicio
 
       escreval("===================")
       escreval("   Jogo Da Velha")
       escreval("+-----+-----+-----+")
       para i de 1 ate 3 faca
            para j de 1 ate 3 faca
                escreva("| ")
                escreva(jogo[i,j]:4)
            fimpara
            escreva("|")
            escreval()
            escreval("+-----+-----+-----+")
       fimpara
       escreval("===================")
 fimprocedimento
// --------------------------------------------------
procedimento jogar()
inicio
  x <- "X"
  vencedor <- falso
  vez <-0
  par <- 1
repita
  escreval("Digite um numero para ",x,": ")
  leia(op)
  se (op >0) e (op <10) entao
// --------------------------------------------------
  se (op >0) e (op <4) entao
      L <- 1
  se (jogo[L,op] = "x") ou (jogo[L,op] = "0") entao
  escreval ("Local invalido")
  escreval("Aperte enter")
  leia(a)
  senao
      jogo[L,op] <- x
      codRepetido()
    fimse
  senao
// --------------------------------------------------
   se (op >3) e (op <7) entao
      L <- 2
      se (jogo[L,op-3] = "x") ou (jogo[L,op-3] = "0") entao
  escreval ("Local invalido")
  escreval("Aperte enter")
  leia(a)
  senao
      jogo[L,op-3] <- x
      codRepetido()
  fimse
// --------------------------------------------------
   senao
      L <- 3
      se (jogo[L,op-6] = "x") ou (jogo[L,op-6] = "0") entao
  escreval ("Local invalido")
  escreval("Aperte enter")
  leia(a)
  senao
      jogo[L,op-6] <- x
      codRepetido()
  fimse
  
   fimse
  fimse
// --------------------------------------------------
  senao
  escreval("Opção invalida")
  escreval("Aperte enter")
  leia(a)
  fimse
    limpatela
    velha()
ate(vencedor = verdadeiro) ou (vez = 9)
se(vencedor = verdadeiro) entao
  escreval("O jogador ",x," venceu")
  senao
  escreval("Deu Velha")
  
  fimse
  
  
fimprocedimento
// --------------------------------------------------
procedimento codRepetido()
inicio
vencedor <- verificarVencedor()
      vez <- vez + 1
        se(vencedor = falso) entao
        se(par % 2 <> 0) entao
      x <- "0"
        senao
      x <- "x"
       fimse
      par <- par +1
      fimse
fimprocedimento
// --------------------------------------------------
 funcao verificarVencedor() : logico
 var
 venceu : logico
 inicio
 venceu <- falso
 
 para i de 1 ate 3 faca
 se ((jogo[i,1] = jogo[i,2]) e (jogo[i,2] = jogo[i,3])) entao
 venceu <- verdadeiro
 fimse
 fimpara
 
  para i de 1 ate 3 faca
 se ((jogo[1,i] = jogo[2,i]) e (jogo[2,i] = jogo[3,i])) entao
 venceu <- verdadeiro
 fimse
 fimpara
 
 se ((jogo[1,1] = jogo[2,2]) e (jogo[2,2] = jogo[3,3])) entao
venceu <- verdadeiro
fimse

se ((jogo[1,3] = jogo[2,2]) e (jogo[2,2] = jogo[3,1])) entao
venceu <- verdadeiro
fimse

retorne venceu
 

 fimfuncao
// --------------------------------------------------
var
i, j, cont : inteiro
jogo : vetor[1..3,1..3] de caractere
x : caractere
L, op : inteiro
vencedor : logico
vez : inteiro
par : inteiro
a : caractere

inicio
cont <- 0
inserirMatriz()
velha()
jogar()
fimalgoritmo

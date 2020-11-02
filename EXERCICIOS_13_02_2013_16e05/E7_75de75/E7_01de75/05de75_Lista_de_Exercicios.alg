algoritmo "List_Ex_05de75"
//arquivo "C:\Users\WILLIAM\Desktop\05_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//5. Escreva um algoritmo que leia um vetor de 13 elementos inteiros,
// que é o Gabarito de um teste da loteria esportiva,
//contendo os valores 1(coluna 1), 2 (coluna 2) e 3 (coluna do meio).
//Leia, a seguir, para cada apostador, o número do seu cartão
//e um vetor de Respostas de 13 posições.
//Verifique para cada apostador os números de acertos,
//comparando o vetor de Gabarito com o vetor de Respostas.
//Escreva o número do apostador e o número de acertos.
// Se o apostador tiver 13 acertos, mostrar a mensagem "Ganhador".
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Seção de Declarações
var
gabarito:vetor[1..13] de inteiro
resposta:vetor[1..13] de inteiro
i,acerto,numero:inteiro
resp:caracter
inicio

//lendo gabarito
para i de 1 ate 13 faca
   repita
      escreva("Informe o a resposta para o elemento do gabarito[",i,"] .: ")
      leia(gabarito[i])
   ate (gabarito[i]>=1)E(gabarito[i]<=3)
fimpara

repita
   escreval
   escreva("Informe seu numero do seu cartao .: ")
   leia(numero)

   para i de 1 ate 13 faca
      repita
         escreva("Informe a resposta do apostador para o elemento[",i,"] .: ")
         leia(resposta[i])
      ate (resposta[i]>=1)E(resposta[i]<=3)
   fimpara

   acerto:=0
   para i de 1 ate 13 faca
      se (gabarito[i]=resposta[i]) entao
         acerto:=acerto+1
      fimse
   fimpara

   escreval("O cartao de numero ",numero ," teve ",acerto," acertos")

   escreva("Deseja continuar ? (S/N) .: ")
   leia(resp)

ate resp="N"
fimalgoritmo

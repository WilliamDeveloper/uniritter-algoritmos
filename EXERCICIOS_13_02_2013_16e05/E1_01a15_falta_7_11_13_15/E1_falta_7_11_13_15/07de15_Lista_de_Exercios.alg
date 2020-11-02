algoritmo "List_Ex_07de15"
// usando leitura apartir do txt
//arquivo "C:\Users\alu201220210\Desktop\ex07.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex07.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
// 7) Escrever um algoritmo que leia um vetor S(25) e
// compacte este vetor, retirando dele todos os valores
// repetidos. Imprimir o vetor antes de ser compactado e após a
// compactação.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var
s:vetor[1..25] de inteiro
sc:vetor[1..25] de inteiro
i,j,k,ca,cl,aux:inteiro
tam:inteiro
limpa:inteiro

inicio
tam:=25
ca:=0
cl:=0
limpa:=99999999

//entrada de dados
para i de 1 ate tam faca
   escreva("Informe um valor : ")
   leia(S[i])
fimpara

escreval("=============================================")
escreval("!!!!!!!!!!!VETOR SEM COMPACTACAO!!!!!!!!!!!!!")
escreval("=============================================")
//imprimir vetor antes da compactacao
para i de 1 ate tam faca
   escreval("S[",i,"]=",s[i])

   //descobrir se tem algum numero digitado igual a variavel limpa
   se (s[i]=limpa) entao
      cl:=1
   fimse

fimpara

//compactando
para i de 1 ate tam faca
   para j de 1 ate tam faca
      Se  (s[i]=s[j]) E (i <> j) entao
         s[j]:=limpa
      fimse
   fimpara
fimpara

//ordenar para facilitar
para i de 1 ate tam-1 faca
   para j de i ate tam faca
      se (s[i]>s[j]) entao
         aux:=s[i]
         s[i]:=s[j]
         s[j]:=aux
      fimse
   fimpara
fimpara

//contando o numero de elementos limpados
para i de 1 ate tam faca
   se (s[i]=limpa) entao
      ca:=ca+1
   fimse
fimpara



escreval("=============================================")
escreval("!!!!!!!!!!!VETOR COMPACTADO!!!!!!!!!!!!!!!!!!")
escreval("=============================================")
para i de 1 ate tam-ca+cl faca
   escreval("S[",i,"]=",s[i])
fimpara


fimalgoritmo


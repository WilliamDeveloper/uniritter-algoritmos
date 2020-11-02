algoritmo "List_Ex_27de75"
//arquivo "C:\Users\WILLIAM\Desktop\27_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//27. Faça um algoritmo para ler um valor N qualquer
//(que será o tamanho dos vetores). Após, ler dois
//vetores A e B (de tamanho N cada um) e depois armazenar
//em um terceiro vetor Soma a soma dos elementos do vetor A
//com os do vetor B (respeitando as mesmas posições)
//e escrever o vetor Soma.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Seção de Declarações
var
A: vetor[1..100] de inteiro
B: vetor[1..100] de inteiro
soma: vetor[1..100] de inteiro
n,i: inteiro
inicio
Escreval("Informe o tamanho do vetor (Max: 100) .:")
Leia(n)

Para i de 1 ate n faca
   Escreval("Digite o número da posição a[", i, "] .: ")
   Leia(A[i])
fimpara
escreval("--------------------------------------------")
Para i de 1 ate n faca
   Escreval("Digite o número da posição B[", i, "] .: ")
   Leia(B[i])
fimpara
escreval("--------------------------------------------")
escreval("      !!! GERANDO RESULTADO DA SOMA !!!")
escreval("--------------------------------------------")
Para i de 1 ate n faca
   soma[i]:=a[i]+b[i]
   escreval(a[i]," + ",b[i]," = ",soma[i])
fimpara
escreval("--------------------------------------------")


fimalgoritmo

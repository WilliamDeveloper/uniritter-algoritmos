algoritmo "List_Ex_65de75"
//arquivo "C:\Users\WILLIAM\Desktop\65_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//65. Escreva um módulo que a partir de uma palavra recebida,
// exiba sua abreviação usando suas três primeiras letras em 
//caracteres maiúsculos. Exibir um traço (-) antes e outro 
//depois da abreviação. Exemplos: Para a palavra Domingo,
// mostrar –DOM–. Para a palavra Agosto, mostrar –AGO–.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Seção de Declarações
var
abreviatura,palavra1,palavra2,palavra3:caracter
tamanho,i:inteiro


inicio
escreval("informe uma palavra .: ")
leia(palavra1)

 para i de 1 ate 3 passo 1 faca
   palavra2:=copia(palavra1,i,1)
   palavra3:=palavra3+palavra2
fimpara
abreviatura:="-"+palavra3+"-"
abreviatura:=maiusc(abreviatura)
escreval
escreval("------------------------------")
escreval("a abreviatura da palavra ",palavra1," é .: ", abreviatura)


fimalgoritmo

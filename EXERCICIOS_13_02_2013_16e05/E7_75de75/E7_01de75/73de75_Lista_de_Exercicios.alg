algoritmo "List_Ex_73de75"
//arquivo "C:\Users\WILLIAM\Desktop\73_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//73. Escreva um m�dulo recursivo que ele um n�mero inteiro
// qualquer a uma pot�ncia.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Se��o de Declara��es
var
base, expo : inteiro

FUNCAO potencia(base, expoente: inteiro) : inteiro
var
result : inteiro
inicio
Se (Expoente = 0) Entao
   result := 1
Senao
   result := base * potencia(base, expoente-1)
FimSe

retorne result
FIMFUNCAO

inicio
// Se��o de Comandos
Escreva("Digite a base: ")
Leia(base)
Escreva("Digite o expoente: ")
Leia(expo)

Escreva(base, " elevado na ", expo, " a. potencia: ", potencia(base, expo))
fimalgoritmo

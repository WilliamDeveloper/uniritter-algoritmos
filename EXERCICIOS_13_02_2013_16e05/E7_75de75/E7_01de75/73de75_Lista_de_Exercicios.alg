algoritmo "List_Ex_73de75"
//arquivo "C:\Users\WILLIAM\Desktop\73_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//73. Escreva um módulo recursivo que ele um número inteiro
// qualquer a uma potência.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Seção de Declarações
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
// Seção de Comandos
Escreva("Digite a base: ")
Leia(base)
Escreva("Digite o expoente: ")
Leia(expo)

Escreva(base, " elevado na ", expo, " a. potencia: ", potencia(base, expo))
fimalgoritmo

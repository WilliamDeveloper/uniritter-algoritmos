algoritmo "List_Ex_09de86"
//arquivo "C:\Users\WILLIAM\Desktop\09_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//9. Dadas as notas de um trabalho de grupo, de um projeto
//e de uma prova de um aluno,fazer o algoritmo para calcular
// sua média final sabendo que a mesma é igual a média do
//trabalho de grupo com o projeto, com peso 3 e a prova com peso 7.
// Imprimir a média final.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var
MF,TG,PROJ,PA:REAL

inicio
LEIA (TG)
LEIA (PROJ)
LEIA (PA)

MF:= (((((TG+PROJ)/2)*3)+(PA*7))/10)

ESCREVAL("MEDIA FINAL= ",MF)
fimalgoritmo

algoritmo "List_Ex_06de86"
//arquivo "C:\Users\WILLIAM\Desktop\06_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//6. Ler 3 valores
//a) Somar os 3 valores e armazenar o resultado na variável Soma
//b) Multiplicar o valor da variável Soma por 2 e armazenar na variável Resultado
//c) Dividir o valor da variável Resultado por 4 e armazenar na mesma variável
//d) Imprimir o conteúdo das variáveis Soma e Resultado
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var
A,B,C:INTEIRO
SOMA:INTEIRO
RESULTADO:REAL
inicio
ESCREVAL("INFORME OS VALORES DE A B C :")
LEIA(A,B,C)
SOMA:=A+B+C
RESULTADO:=SOMA*2
RESULTADO:=RESULTADO/4
ESCREVAL("SOMA= ",SOMA," RESULTADO= ",RESULTADO)

fimalgoritmo

algoritmo "List_Ex_34de86"
//arquivo "C:\Users\WILLIAM\Desktop\34_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//34. Dadas as notas de um trabalho de grupo, de um projeto
// e da prova, de um aluno, fazer o algoritmo para calcular
// sua m�dia final sabendo que essa � igual a m�dia do trabalho de
//grupo com o projeto, com peso 3 e a prova com peso 7.
//Se a m�dia for maior ou igual a 7 (imprimir "aprovado por media"
//caso contrario calcular o que � preciso no exame para ser
//necess�rio para ser aprovado.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Se��o de Declara��es
var

media,mf,preciso,tg,proj,palun:real

inicio

escreval("Informe a nota do trabalho de grupo: ")
leia(tg)
escreval("Informe a nota do projeto : ")
leia(proj)
escreval("Informe a nota da prova de um aluno : ")
leia(palun)


media:=(tg+proj)/2
mf:=(media*3+palun*7)/10

escreval("-------------------------")
escreval("A media final � : ",mf)

se (mf>=7) entao
   escreval("Aprovado por media.")
senao
   preciso:=7-mf
   escreval("Preciso de ",preciso," no exame para ser Aprovado")
fimse
fimalgoritmo

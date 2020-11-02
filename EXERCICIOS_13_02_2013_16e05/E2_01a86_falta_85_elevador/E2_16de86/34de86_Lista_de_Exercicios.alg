algoritmo "List_Ex_34de86"
//arquivo "C:\Users\WILLIAM\Desktop\34_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//34. Dadas as notas de um trabalho de grupo, de um projeto
// e da prova, de um aluno, fazer o algoritmo para calcular
// sua média final sabendo que essa é igual a média do trabalho de
//grupo com o projeto, com peso 3 e a prova com peso 7.
//Se a média for maior ou igual a 7 (imprimir "aprovado por media"
//caso contrario calcular o que é preciso no exame para ser
//necessário para ser aprovado.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
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
escreval("A media final é : ",mf)

se (mf>=7) entao
   escreval("Aprovado por media.")
senao
   preciso:=7-mf
   escreval("Preciso de ",preciso," no exame para ser Aprovado")
fimse
fimalgoritmo

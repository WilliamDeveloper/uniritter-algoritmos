algoritmo "List_Ex_74de86"
//arquivo "C:\Users\WILLIAM\Desktop\74_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//74. Escrever um algoritmo que realize uma pesquisa com
//30 alunos de um curso superior de Inform�tica. Os alunos
// responderam as seguintes informa��es:
//idade;
//n�mero de semestres j� cursados;
//tipo de curso (1 Bacharelado, 2 Tecnol�gico);
//conceito atribu�do ao curso (1 �timo, 2 Muito Bom, 3 Bom e 4 Regular).
//Ao final da pesquisa, escrever:
//a m�dia de idade dos pesquisados;
//o n�mero de alunos que j� cursou no m�nimo 4 semestres;
//o n�mero de alunos de Bacharelado e Tecnol�gico, separadamente;
//o n�mero de alunos que atribuiu os conceitos �timo, Muito Bom, Bom e Regular,
//separadamente.
//Obs.: Na entrada do tipo de curso (1 ou 2) e do conceito (1, 2, 3 ou 4),
//deve ser realizada a valida��o dos dados
//(Dica: utilize o comando Faca...Enquanto).
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Se��o de Declara��es
var

aluno,i,cs,ct,cb,cco,ccmb,ccb,ccr:inteiro
idade,aidade:inteiro
curso:inteiro
conceito:inteiro
semestre:inteiro
media:real

inicio
cs:=0
cb:=0
ct:=0
cco:=0
ccmb:=0
ccb:=0
ccr:=0

aluno:=4

para i de 1 ate aluno faca

   escreval
   escreval("---------------------------------------------------------")

   escreva("Informe a idade do aluno: ")
   leia(idade)
   aidade:=aidade+idade   //acumulador de idade
   escreva("Informe o semestre do aluno: ")
   leia(semestre)

   repita    //validacao curso
      escreva("Informe o tipo de curso (1 Bacharelado, 2 Tecnol�gico) : ")
      leia(curso)
   ate (curso=1)ou(curso=2)

   repita    //validacao conceito
      escreva("Atribua um conceito ao curso [1 �timo, 2 Muito Bom, 3 Bom ou 4 Regular)]: ")
      leia(conceito)
   ate (conceito=1)ou(conceito=2)ou(conceito=3)ou(conceito=4)


   se (semestre>=4) entao   //contador semestre maior ou igual a 4
      cs:=cs+1
   fimse

   escolha (curso) //escolha curso contador
   caso 1
      cb:=cb+1
   caso 2
      ct:=ct+1
   fimescolha

   escolha (conceito) //escolha conceito contador
   caso 1
      cco:=cco+1
   caso 2
      ccmb:=ccmb+1
   caso 3
      ccb:=ccb+1
   caso 4
      ccr:=ccr+1
   fimescolha




fimpara

media:=aidade/aluno

escreval
escreval("----------------------------------------------------------------")
escreval("A media de idade dos pesquisados � :",media)
escreval("O numero de alunos que ja cursou no minimo 4 Semestres � : ",cs)
escreval("O numero de alunos no Curso de Bacharelado � : ",cb)
escreval("O numero de alunos no Curso Tecnologo � : ",ct)
escreval("O numero de alunos que atribuiu conceito OTIMO : ",cco)
escreval("O numero de alunos que atribuiu conceito MUITO BOM : ",ccmb)
escreval("O numero de alunos que atribuiu conceito BOM : ",ccb)
escreval("O numero de alunos que atribuiu conceito REGULAR : ",ccr)


fimalgoritmo

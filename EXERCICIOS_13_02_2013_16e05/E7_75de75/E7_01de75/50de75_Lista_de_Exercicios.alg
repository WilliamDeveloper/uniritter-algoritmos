algoritmo "List_Ex_50de75"
//arquivo "C:\Users\WILLIAM\Desktop\50_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//50. Tendo um registro contendo a matrícula do aluno,
//tipo de participação (A, B, C ou D) e Sócio da SBC (S-sim ou N-não),
// desenvolver um algoritmo para calcular o valor que cada aluno
// vai pagar para participar da semana de informática, sabendo-se que:
//
//Tipo de Participação	Valor a pagar
//A – 1 curso				R$30,00
//B – 2 cursos			R$60,00
//C – 3 cursos			R$90,00
//D – outros				R$100,00
//
//Para os sócios da SBC o valor terá um desconto de 50%.
// O algoritmo deverá permitir a entrada de vários registros (máximo 1000)
// até que uma condição de finalização seja satisfeita. Calcular e exibir
// também o total geral arrecadado com o evento e quantos alunos se
// matricularam em cada um dos tipos de participação.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Seção de Declarações
//
//TIPO CADASTRO=registro
//   matricula:caracter
//   participacao:caracter
//   sbc:caracater
//
//Fimregistro
//
//
//

var
matricula:vetor[1..10] de caracter
participacao:vetor[1..10] de caracter
sbc:vetor[1..10] de caracter
i,j,cont:inteiro
contd,contc,contb,conta:inteiro
resp:caracter
acum,valor:real




inicio
i:=0
contd:=contc:=contb:=conta:=0
cont:=0
acum:=0
repita
   i:=i+1
   cont:=cont+1

   escreva("Informe o numero da matricula do aluno[",i,"] .: ")
   leia(matricula[i])

   repita
      escreva("Informe o codigo de participacao[A B C ou D] do aluno[",i,"] .: ")
      leia(participacao[i])
   ate (participacao[i]="A")OU(participacao[i]="B")OU(participacao[i]="C")OU(participacao[i]="D")

   repita
      escreva("Informe o sbc do aluno[",i,"] .: ")
      leia(sbc[i])
   ate (sbc[i]="S")ou(sbc[i]="N")

   se (participacao[i]="D") entao
      valor:=100.00
      contd:=contd+1
   senao
      se (participacao[i]="C") entao
         valor:=90.00
         contc:=contc+1
      senao
         se (participacao[i]="B") entao
            valor:=60.00
            contb:=contb+1
         senao
            se (participacao[i]="A") entao
               valor:=30.00
               conta:=conta+1

            fimse
         fimse
      fimse
   fimse

   se (sbc[i]="S") entao
      valor:=valor*0.50
   fimse
   acum:=acum+valor


   repita
      escreval("Deseja cadastrar mais ? (S/N) .: ")
      leia(resp)
   ate (resp="S")OU(resp="N")
   escreval("----------------------------------------------------------------")
ate resp="N"

escreval
escreval("---------------------------------------")
escreval(" Total arrecadado .: ",acum)
escreval(" Tipo de participacao A .: ",conta)
escreval(" Tipo de participacao B .: ",contb)
escreval(" Tipo de participacao C .: ",contc)
escreval(" Tipo de participacao D .: ",contd)
escreval("---------------------------------------")
escreval



fimalgoritmo

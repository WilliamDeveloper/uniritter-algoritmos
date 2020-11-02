algoritmo "Faculdade_Blablabla"
//arquivo "C:\Users\alu201220210\Desktop\Trabalho_Blablabla.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// Autores : Eron Pereira Barbosa
// Autores : Paulo Cesar Alves Junior
// Autores : William Goulart Pacheco
// Data : 26/09/2012
// Seção de Declarações
var

//DECLARACOES DE VARIAVEIS
nc:caracter //Nome do curso
nd:caracter //Nome da disciplina
np:caracter //Nome do professor
qa:inteiro//Quantidade de alunos
qp:inteiro//Quantidade de provas
qt:inteiro//Quantidade de trabalhos
mad:real//Media para aprovacao direta
mar:real//Media para aprovacao em Recuperacao
qas:inteiro//Quantidade de aulas no semestre
pmpa:real//Percentual minimo de presenca para aprovacao
n:caracter //Nome do Aluno
ncudp:real//Nota de cada uma das provas
ncudt:real//Nota de cada um dos trabalhos
qdp:inteiro//Quantidade de presencas
mdpdr:real//Média das provas de recuperação
mgf:real//Média geral final
pmdpdt:real//Percentual médio de presença da turma
pdaa:real//Percentual de alunos aprovados
pdar:real//Percentual de alunos reprovados
pdarpm:real//Percentual de alunos reprovados por média
pdarpf:real//Percentual de alunos reprovados por falta


//VARIAVEIS EXTRAS
contX:inteiro //contador principal do laço
cont:inteiro  //contador
ca:inteiro //contador de aprovados
car:inteiro //contador de reprovados
carpm:inteiro //contador de reprovado por media
carpf:inteiro //contador de reprovado por falta
contpg:inteiro //contador de provas  geral
contpi:inteiro //contador de prova individual
contpr:inteiro //contador de prova de recuperacao
conttg:inteiro //contador de trabalhos geral
contti:inteiro //contador de trabalhos individual
somapg:real //acumulador de notas de provas geral
somapi:real //acumulador de notas de prova individual
somatg:real //acumulador de notas de trabalhos geral
somati:real // acumulador de trabalhos individual
mt:real//media dos trabalhos
mp:real//media das provas
media:real //media do aluno
nmedia:real//nova media do aluno
AcumMedia:real// acumulador de media
pmdi:real //percentual de presenca individual
spmdi:real//acumulador de percentual de presença individual
nr:real //nota da prova de recuperacao
acumnr:real // acumulador de notas de recuperacao
contnr:inteiro //contador de notas de recuperacao

inicio

//A-Leitura de todas as informações da turma (0,5 ponto)
Escreva("Informe Nome do curso: ")
Leia(nc)  //nc:caracter(Nome do curso)
Escreva("Informe Nome da disciplina: ")
Leia(nd)  //nd:caracter (Nome da disciplina)
Escreva("Informe Nome do professor: ")
Leia(np)  //np:caracter (Nome do professor)
Escreva("Informe Quantidade de alunos: ")
Leia(qa)  //qa:inteiro (Quantidade de alunos)
Escreva("Informe Quantidade de provas: ")
Leia(qp)  //qp:inteiro (Quantidade de provas)
Escreva("Informe a Quantidade de trabalhos: ")
Leia(qt)  //qt:inteiro (Quantidade de trabalhos)
Escreva("Informe a Media para aprovacao direta: ")
Leia(mad)  //mad:real (Media para aprovacao direta)

//VALIDACAO DE MEDIA PARA APROVACAO DIRETA - PONTO EXTRA !!!!
//OBS.. DEVE TER UM ESPACO ENTRE ENQUANTO E O PARENTESES
Enquanto (mad<0) OU (mad>10) FACA
   Escreval("-------------------------------------------- ")
   Escreval("!!!VOCE DIGITOU UM VALOR INVALIDO!!! ")
   Escreval("-------------------------------------------- ")
   Escreval("   !!!DIGITE UM VALOR DE 0 a 10!!! ")
   Escreval("-------------------------------------------- ")
   Leia(mad)  //mad:real (Media para aprovacao direta)
Fimenquanto

Escreva("Informe a Media para aprovacao em Recuperacao: ")
Leia(mar)  //mar:real (Media para aprovacao em Recuperacao)

//VALIDACAO DE MEDIA PARA APROVACAO EM RECUPERACAO - PONTO EXTRA !!!!
//OBS.. DEVE TER UM ESPACO ENTRE ENQUANTO E O PARENTESES
Enquanto (mar<0) OU (mar>10) FACA
   Escreval("-------------------------------------------- ")
   Escreval("!!!VOCE DIGITOU UM VALOR INVALIDO!!! ")
   Escreval("-------------------------------------------- ")
   Escreval("   !!!DIGITE UM VALOR DE 0 a 10!!! ")
   Escreval("-------------------------------------------- ")
   Leia(mar)  //mar:real (Media para aprovacao em Recuperacao)
Fimenquanto

Escreva("Informe a Quantidade de aulas no semestre: ")
Leia(qas)  //qas:inteiro (Quantidade de aulas no semestre)
Escreva("Informe a Percentual minimo de presenca para aprovacao: ")
Leia(pmpa)  //pmpa:real (Percentual minimo de presenca para aprovacao)

//VALIDACAO DE PERCENTUAL MINIMO DE PRESENCA PARA APROVACAO - PONTO EXTRA !!!!
//OBS.. DEVE TER UM ESPACO ENTRE ENQUANTO E O PARENTESES
Enquanto (pmpa<0) OU (pmpa>100) FACA
   Escreval("------------------------------------------- ")
   Escreval("!!!VOCE DIGITOU UM VALOR INVALIDO!!! ")
   Escreval("------------------------------------------- ")
   Escreval("   !!!DIGITE UM NUMERO DE 0 a 100!!! ")
   Escreval("------------------------------------------- ")
   Leia(pmpa)  //pmpa:real (Percentual minimo de presenca para aprovacao)
Fimenquanto

//inicializacao de variaveis
contpg:=0 //contador de provas geral
contpi:=0 //contador de provas individual**
contpr:=0 //contador de prova de recuperacao
conttg:=0 //contador de trabalhos geral
contti:=0 //contador de trabalhos individual**
somapg:=0 //acumulador de prova geral
somapi:=0 //acumulador de prova individual**
somatg:=0 //acumulador de trabalho geral
somati:=0 // acumulador de trabalho individual **
ca:=0 //contador de aprovados
car:=0 // contador de reprovados
carpm:=0  //contador de alunos reprovados por media
carpf:=0 // contador de alunos reprovados por faltas
contnr:=0 //contador de prova de recuperacao
acumnr:=0 //acumulador notas de prova de recuperacao
AcumMedia:=0  //acumulador de media dos alunos
pmdpdt:=0 //Percentual médio de presença da turma
//se acontecer de nao haver nenhum aluno em Recuperacao
//deve-se deve-se zerar a variavel de resultado antes para
//zerar o valor do resultado
//B-Leitura dos dados de todos os alunos da turma (1,0 ponto)
Para contX de 1 ate qa FACA
   Escreval("---------------------------------------------------")
   Escreva("Informe o Nome: ")
   Leia(n)  //n:caracter (Nome)

   //leitura das notas da prova
   Para cont de 1 ate qp FACA
      Se(cont=1)entao    // zerar variaveis se o contador for 1
         somapi:=0   //acumulador de prova individual
         contpi:=0   //contador de prova individual
      Fimse
      Escreva("Informe uma Nota para a prova ",cont," : ")
      Leia(ncudp)  //ncudp:real (Nota de cada uma das provas)

      //VALIDACAO DE ENTRADA PARA NOTA DA PROVA - PONTO EXTRA !!!!
      //OBS.. DEVE TER UM ESPACO ENTRE ENQUANTO E O PARENTESES
      Enquanto (ncudp<0) OU (ncudp>10) FACA
         Escreval("-------------------------------------------- ")
         Escreval("!!!VOCE DIGITOU UM VALOR INVALIDO!!! ")
         Escreval("-------------------------------------------- ")
         Escreval("   !!!DIGITE UM VALOR DE 0 a 10!!! ")
         Escreval("-------------------------------------------- ")
         Leia(ncudp)  //ncudp:real (Nota de cada uma das provas)
      Fimenquanto

      somapi:=somapi+ncudp         //acumulador de nota das provas individual
      somapg:=somapg+ncudp      //acumulador de nota das provas geral
      contpg:=contpg+1          //contador de provas geral
      contpi:=contpi+1          //contador de provas individual
   Fimpara

   //leitura das notas dos trabalhos
   Para cont de 1 ate qt FACA
      Se(cont=1)entao      // zerar variaveis se o contador for 1
         somati:=0         //acumulador de trabalho individual
         contti:=0         //contador de trabalho individual
      Fimse
      Escreva("Informe a Nota de cada um dos trabalhos: ")
      Leia(ncudt)  //ncudt:real (Nota de cada um dos trabalhos)

      //VALIDACAO DE ENTRADA PARA NOTA DE TRABALHO - PONTO EXTRA !!!!
      //OBS.. DEVE TER UM ESPACO ENTRE ENQUANTO E O PARENTESES
      Enquanto (ncudt<0) OU (ncudt>10) FACA
         Escreval("-------------------------------------------- ")
         Escreval("!!!VOCE DIGITOU UM VALOR INVALIDO!!! ")
         Escreval("-------------------------------------------- ")
         Escreval("   !!!DIGITE UM VALOR DE 0 a 10!!! ")
         Escreval("-------------------------------------------- ")
         Leia(ncudt)  //ncudt:real (Nota de cada um dos trabalhos)
      Fimenquanto

      somatg:=somatg+ncudt        //acumulador de notas de trabalho geral
      somati:=somati+ncudt        //acumulador de notas de trabalho individual
      conttg:=conttg+1          //contador de notas de trabalho geral
      contti:=contti+1          //contador de notas de trabalho individual

   Fimpara
   Escreva("Informe Quantidade de presencas (em nº de aulas): ")
   Leia(qdp)  //qdp:inteiro (Quantidade de presencas)

   //VALIDACAO DE ENTRADA PARA QUANTIDADE DE PRESENCAS - PONTO EXTRA !!!!
   Enquanto (qdp<0) OU (qdp>qas) FACA
      Escreval("----------------------------------------------------- ")
      Escreval("         !!!VOCE DIGITOU UM VALOR INVALIDO!!! ")
      Escreval("----------------------------------------------------- ")
      Escreval("!!!DIGITE UM VALOR MAIOR QUE (ZERO) E MENOR OU IGUAL a",qas," !!!")
      Escreval("----------------------------------------------------- ")
      Leia(qdp)  //qdp:inteiro (Quantidade de presencas)
   Fimenquanto



   pmdi:=qdp*100/qas // encontrar percentual de presença individual
   spmdi:=spmdi+pmdi  //acumulador de percentual de presença
   media:=(somapi+somati)/(contpi+contti) //media do aluno individualmente
   //AcumMedia+=media
   //condicao se !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
   Se(media<mad) E (pmdi<pmpa) ENTAO   //reprovado por media e falta
      carpf:=carpf+1   //contador de alunos reprovados por falta
      car:=car+1       //contador de alunos reprovados
   fimse

   Se(media>=mad) E (pmdi>=pmpa) ENTAO  //aprovado
      ca:=ca+1 //cont aprovados

   Senao
      Se(media>=mad) E (pmdi<pmpa) ENTAO //aprovado media e reprovado por falta
         carpf:=carpf+1    //contador de reprovado por falta
         car:=car+1 //contador de reprovado

      Senao
         Se(media<mad) E (pmdi>=pmpa) ENTAO //condicao da recuperacao

            Escreval("O aluno deve fazer a prova de recuperacao!!! ")
            Escreva("Informe a Nota que o aluno tirou na prova de Recuperacao: ")
            Leia(nr)
            //VALIDACAO DE ENTRADA PARA NOTA DA PROVA DA RECUPERACAO - PONTO EXTRA !!!!
            Enquanto (nr<0) OU (nr>10) FACA

               Escreval("-------------------------------------------- ")
               Escreval("!!!VOCE DIGITOU UMA NOTA INVALIDA!!! ")
               Escreval("-------------------------------------------- ")
               Escreval("   !!!DIGITE UM VALOR DE 0 a 10!!! ")
               Escreval("-------------------------------------------- ")
               Leia(nr)  //nr:real  -nota da prova de recuperacao
            Fimenquanto
            acumnr:=acumnr+nr //acumulador de notas de recuperacao
            contnr:=contnr+1  // contador de provas de recuperacao
            nmedia:=(media+nr)/2   //nova media do aluno
            media:=nmedia          //media do aluno
            //
            Se(media>=mar) ENTAO  //verificando se nova media aprova o aluno
               ca:=ca+1            //contador de alunos aprovados

            Senao
               carpm:=carpm+1       //contador de alunos reprovados por media
               car:=car+1           //contador de alunos reprovados

            Fimse
         Fimse
      Fimse
   Fimse

   AcumMedia:=AcumMedia+media //acumulador de media

Fimpara

//calculos



//C - Média das provas (0,5 ponto)
mp:=somapg/contpg

//D - Média dos trabalhos (0,5 ponto)
mt:=somatg/conttg

//E - Média das provas de recuperação (0,5 ponto)
Se (contnr>0) Entao //se nao tiver nenhuma contagem da erro de ponto flutuante
   mdpdr:=acumnr/contnr
Fimse

//F - Média geral final (0,5 ponto)
mgf:=AcumMedia/qa  //mgf=(somapg+somatg)/(contpg+conttg)

//G - Percentual médio de presença da turma (0,5 ponto)
pmdpdt:=spmdi/qa        //pmdpdt:real (Percentual médio de presença da turma)

//H - Percentual de alunos aprovados (1,0 ponto)
pdaa:=ca*100/qa      //pdaa:real (Percentual de alunos aprovados)

//I - Percentual de alunos reprovados (1,0 ponto)
pdar:=car*100/qa //pdar:real (Percentual de alunos reprovados)

//J - Percentual de alunos reprovados por média (0,5 ponto)
pdarpm:=carpm*100/qa //pdarpm:real (Percentual de alunos reprovados por média)

//K - Percentual de alunos reprovados por falta (0,5 ponto)
pdarpf:=carpf*100/qa  //pdarpf:real (Percentual de alunos reprovados por falta)




//Respostas
Escreval("================================================================== ")
Escreval("O nome do curso: ",nc)
Escreval("O nome da disciplina: ",nd)
Escreval("O nome do professor eh: ",np)
Escreval("A quantidade de Aluno da turma: ",qa)
Escreval("------------------------------------------------------------------ ")
Escreval("Media das provas: ",mp:3:2)
Escreval("Media dos Trabalhos: ",mt:3:2)
Escreval("Media das provas de recuperaçao: ",mdpdr:3:2)
Escreval("Media Geral final: ",mgf:3:2)
Escreval("------------------------------------------------------------------ ")
Escreval("Percentual médio de presença da turma : ",pmdpdt:3:2," % .")
Escreval("Percentual de Alunos Aprovados: ",pdaa:3:2," % .")
Escreval("Percentual de Alunos Reprovados : ",pdar:3:2," % .")
Escreval("Percentual de Alunos Reprovados por media: ",pdarpm:3:2," % .")
Escreval("Percentual de Alunos Reprovados por falta: ",pdarpf:3:2," % .")


fimalgoritmo


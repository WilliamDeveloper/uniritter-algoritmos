#include <stdio.h>
#include <stdlib.h>
main(){

//declaração de variaveis
char nc;//Nome do curso
char nd;//Nome da disciplina
char np;//Nome do professor
int qa;//Quantidade de alunos
int qp;//Quantidade de provas
int qt;//Quantidade de trabalhos
float mad;//Media para aprovacao direta
float mar;//Media para aprovacao em Recuperacao
int qas;//Quantidade de aulas no semestre
float pmpa;//Percentual minimo de presenca para aprovacao
char n;//Nome
float ncudp;//Nota de cada uma das provas
float ncudt;//Nota de cada um dos trabalhos
int qdp;//Quantidade de presencas
//variaveis extras

int cont;


//Leitura de dados
for(cont=0;cont<1;cont++)
{
printf("Informe Nome do curso:\n");
scanf("%s",&nc); //char nc;//Nome do curso
printf("Informe Nome da disciplina:\n");
scanf("%s",&nd); //char nd;//Nome da disciplina
printf("Informe Nome do professor:\n");
scanf("%s",&np); //char np;//Nome do professor
printf("Informe Quantidade de alunos:\n");
scanf("%d",&qa); //int qa;//Quantidade de alunos
printf("Informe Quantidade de provas:\n");
scanf("%d",&qp); //int qp;//Quantidade de provas
printf("Informe a Quantidade de trabalhos:\n");
scanf("%d",&qt); //int qt;//Quantidade de trabalhos
printf("Informe a Media para aprovacao direta:\n");
scanf("%f",&mad); //float mad;//Media para aprovacao direta
printf("Informe a Media para aprovacao em Recuperacao:\n");
scanf("%f",&mar); //float mar;//Media para aprovacao em Recuperacao
printf("Informe a Quantidade de aulas no semestre:\n");
scanf("%d",&qas); //int qas;//Quantidade de aulas no semestre
printf("Informe a Percentual minimo de presenca para aprovacao:\n");
scanf("%f",&pmpa); //float pmpa;//Percentual minimo de presenca para aprovacao
printf("Informe o Nome:\n");
}
scanf("%s",&n); //char n;//Nome
printf("Informe a Nota de cada uma das provas:\n");
scanf("%f",&ncudp); //float ncudp;//Nota de cada uma das provas
printf("Informe a Nota de cada um dos trabalhos:\n");
scanf("%f",&ncudt); //float ncudt;//Nota de cada um dos trabalhos
printf("Informe Quantidade de presencas:\n");
scanf("%d",&qdp); //int qdp;//Quantidade de presencas




























//Respostas
printf("O nome do curso:\n");
printf("O nome da disciplina:\n");
printf("O nome do professor eh:\n");
printf("A quantidade de Aluno da turma:\n");
printf("Media das provas:\n");
printf("Media dos Trabalhos:\n");
printf("Media das provas de recuperaçao:\n");
printf("Media Geral final:\n");
printf("Percentual de Alunos Aprovados:\n");
printf("Percentual de Alunos Reprovado\n");
printf("Percentual de Alunos Reprovados por media:\n");
printf("Percentual de Alunos Reprovados por falta:\n");

//pausa
system("pause");
}

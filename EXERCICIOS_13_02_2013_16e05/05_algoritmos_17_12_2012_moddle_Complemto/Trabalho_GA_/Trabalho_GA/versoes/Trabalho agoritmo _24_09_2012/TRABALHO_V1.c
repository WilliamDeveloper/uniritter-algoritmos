 #include <stdio.h>
#include <stdlib.h>
#include <conio.h>
#include <string.h>
main(){

//declaração de variaveis
char nc[100];//Nome do curso
char nd[100];//Nome da disciplina
char np[100];//Nome do professor
int qa;//Quantidade de alunos
int qp;//Quantidade de provas
int qt;//Quantidade de trabalhos
float mad;//Media para aprovacao direta
float mar;//Media para aprovacao em Recuperacao
int qas;//Quantidade de aulas no semestre
float pmpa;//Percentual minimo de presenca para aprovacao
char n[100];//Nome do Aluno
float ncudp;//Nota de cada uma das provas
float ncudt;//Nota de cada um dos trabalhos
int qdp;//Quantidade de presencas
float mdp;//Média das provas
float mdt;//Média dos trabalhos
float mdpdr;//Média das provas de recuperação
float mgf;//Média geral final
float pmdpdt;//Percentual médio de presença da turma
float pdaa;//Percentual de alunos aprovados
float pdar;//Percentual de alunos reprovados
float pdarpm;//Percentual de alunos reprovados por média
float pdarpf;//Percentual de alunos reprovados por falta


//variaveis extras

int contX; //contador principal do laço
int cont;
int ca; //contador de aprovados
int car; //contador de reprovados
int carpm; //contador de reprovado por media
int carpf; //contador de reprovado por falta
int contpg; //contador de provas
int contpi; //contador de prova individual
int contpr; //contador de prova de recuperacao
int conttg; //contador de trabalhos
int contti; //contador de trabalhos individual
float somapg; //acumulador de notas de provas
float somapi; //acumulador individual de nota de prova individual
float somatg; //acumulador de trabalhos
float somati; // acumulador de trabalhos individual
float mt;//media trabalho um aluno
float mp;//media trabalho um aluno
float media; //media.....
float nmedia;//nova media....
float pmdi; //percentual de presenca individual...
float spmdi;//acumulador de percentual de presença individual..
float nr; //nota da prova de recuperacao
float acumnr; // acumulador de notas de recuperacao
float contnr; //contador de notas de recuperacao



//A-Leitura de todas as informações da turma (0,5 ponto);
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
       while(pmpa<0 || pmpa>100)
       {
       printf("-------------------------------------------\n");
       printf("!!!VOCE DIGITOU UM VALOR INVALIDO!!!\n");
       printf("-------------------------------------------\n");
       printf("   !!!DIGITE UM NUMERO DE 0 a 100!!!\n");
       printf("-------------------------------------------\n"); 
       scanf("%f",&pmpa); //float pmpa;//Percentual minimo de presenca para aprovacao  
       }

//inicializacao de variaveis
contpg=0;//contador de provas geral
contpi=0;//contador de provas individual
contpr=0;//contador de prova de recuperacao
conttg=0;//contador de trabalhos geral
contti=0;//contador de trabalhos individual**
somapg=0;//acumulador de prova geral
somapi=0;//acumulador de prova individual**
somatg=0;//acumulador de prova geral
somati=0;// acumulador de trabalho individual **
ca=0;//conta de aprovados
car=0;// contador de reprovados
carpm=0; //contador de alunos reprovados por media
carpf=0;// contador de alunos reprovados por faltas
contnr=0;//cont prova de recuperacao
acumnr=0;//acumulador nr



//B-Leitura dos dados de todos os alunos da turma (1,0 ponto);
for (contX=0;contX<qa;contX++)
{
  printf("Informe o Nome:\n");
  scanf("%s",&n); //char n;//Nome
    
  //leitura das notas da prova  
  for (cont=0;cont<qp;cont++)
  {   
     if(cont==0){somapi=contpi=0;}   
  printf("Informe uma Nota para a prova %d :\n",cont+1);
  scanf("%f",&ncudp); //float ncudp;//Nota de cada uma das provas
      //VALIDACAO DE ENTRADA PARA NOTA DA PROVA - PONTO EXTRA !!!!
      while(ncudp<0 || ncudp>10)
      {
       printf("--------------------------------------------\n");
       printf("!!!VOCE DIGITOU UMA NOTA INVALIDA!!!\n");
       printf("--------------------------------------------\n");
       printf("   !!!DIGITE UM VALOR DE 0 a 10!!!\n");
       printf("--------------------------------------------\n"); 
       scanf("%f",&ncudp); //float ncudp;//Nota de cada uma das provas
      }
  somapi+=ncudp;
  somapg+=ncudp;
  contpg++;
  contpi++;
  printf("%.2f %.2f %d %d \n",somapi,somapg,contpg,contpi);//TEST
  }
  
  //leitura das notas dos trabalhos
  for(cont=0;cont<qt;cont++)
  {
     if(cont==0){somati=contti=0;}   
   printf("Informe a Nota de cada um dos trabalhos:\n");
   scanf("%f",&ncudt); //float ncudt;//Nota de cada um dos trabalhos
        //VALIDACAO DE ENTRADA PARA NOTA DE TRABALHO - PONTO EXTRA !!!!
         while(ncudt<0 || ncudt>10)
         {
         printf("--------------------------------------------\n");
         printf("!!!VOCE DIGITOU UMA NOTA INVALIDA!!!\n");
         printf("--------------------------------------------\n");
         printf("   !!!DIGITE UM VALOR DE 0 a 10!!!\n");
         printf("--------------------------------------------\n"); 
         scanf("%f",&ncudt); //float ncudt;//Nota de cada um dos trabalhos
         }
         
   somatg+=ncudt;
   somati+=ncudt;
   conttg++;
   contti++;
   printf("%.2f %.2f %d %d \n",somati,somatg,conttg,contti);//TEST
  }
printf("Informe Quantidade de presencas:\n");
scanf("%d",&qdp); //int qdp;//Quantidade de presencas
           //VALIDACAO DE ENTRADA PARA QUANTIDADE DE PRESENCAS - PONTO EXTRA !!!!
           while(qdp<0 || qdp>qas)
           {
                printf("-----------------------------------------------------\n");
                printf("         !!!VOCE DIGITOU UM VALOR INVALIDO!!!\n");
                printf("-----------------------------------------------------\n");
                printf("!!!DIGITE UM VALOR MAIOR QUE (ZERO) E MENOR OU IGUAL a %d!!!\n",qas);
                printf("-----------------------------------------------------\n");             
                scanf("%d",&qdp); //int qdp;//Quantidade de presencas
           }




   pmdi=(float)qdp*100/qas;// encontrar percentual de presença individual
   spmdi+=pmdi;
   media=(somapi+somati)/(contpi+contti);
   //condicao se
   if(media>=mad && pmdi>=pmpa)
   {//cont aprovados
     ca++;
     printf("%d \n",ca);//test
   }
    if(pmdi<pmpa)
    {
     printf("O aluno foi reprovado por falta.\n");
    cr++; //obeservar contador
    }
    else{//repensar sobre if de frequencias e media.....!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
        printf("O aluno deve fazer a prova de reperacao..\n");
        printf("informe a Nota que o aluno tirou na prova de Recuperacao: \n");
        scanf("%f"),&nr;
        //VALIDACAO DE ENTRADA PARA NOTA DA PROVA DA RECUPERACAO - PONTO EXTRA !!!!
         while(nr<0 || nr>10)
         {
         printf("--------------------------------------------\n");
         printf("!!!VOCE DIGITOU UMA NOTA INVALIDA!!!\n");
         printf("--------------------------------------------\n");
         printf("   !!!DIGITE UM VALOR DE 0 a 10!!!\n");
         printf("--------------------------------------------\n"); 
         scanf("%f",&nr); //float nr; //nota da prova de recuperacao
         }
         acumnr+=nr;//acumula notas de recuperacao
         contnr++; // conta provas de recuperacao
         nmedia=media+nr;
         media=nmedia;
         
         if(media>=mad && pmdi>=pmpa)
         {//cont aprovados
         ca++;
         printf("%d \n",ca);//test
         }
          
              
        if(media<mad || pmdi<pmpa)
        {
        if(media<mad && pmdi>=pmpa){carpm++;}
        if(media>=mad && pmdi<pmpa){carpf++;}//estranho
        car++;
        }
        printf("%d %d %d \n",car,carpm,carpf);//test
        
        }

}

//calculos



//C - Média das provas (0,5 ponto);
mp=(float)somapg/contpg;
//D - Média dos trabalhos (0,5 ponto);
mt=(float)somatg/conttg;
//E - Média das provas de recuperação (0,5 ponto);
pmdpdt=acumnr/contnr;
//F - Média geral final (0,5 ponto);
mgf=(somapg+somatg)/(contpg+conttg);
//G - Percentual médio de presença da turma (0,5 ponto);
pmdpdt=(float)spmdi/qa;       //float pmdpdt;//Percentual médio de presença da turma
//H - Percentual de alunos aprovados (1,0 ponto);
pdaa=(float)ca*100/qa;     //float pdaa;//Percentual de alunos aprovados
//I - Percentual de alunos reprovados (1,0 ponto);
pdar=(float)car*100/qa;//float pdar;//Percentual de alunos reprovados
//J - Percentual de alunos reprovados por média (0,5 ponto);
pdarpm=(float)carpm*100/qa;//float pdarpm;//Percentual de alunos reprovados por média
//K - Percentual de alunos reprovados por falta (0,5 ponto);
pdarpf=(float)carpf*100/qa; //float pdarpf;//Percentual de alunos reprovados por falta




//Respostas
printf("==================================================================\n");
printf("O nome do curso: %s .\n",nc);
printf("O nome da disciplina: %s .\n",nd);
printf("O nome do professor eh: %s .\n",np);
printf("A quantidade de Aluno da turma: %d .\n",qa);
printf("Media das provas: %.2f .\n",mp);//observar se ta certo
printf("Media dos Trabalhos: %.2f .\n",mt);//observar se ta certo
printf("Media das provas de recuperaçao: %.2f .\n",pmdpdt); 
printf("Media Geral final: %.2f .\n",mgf);
printf("Percentual médio de presença da turma :%.2f %% \n",pmdpdt);//observar se ta certo
printf("Percentual de Alunos Aprovados: %.2f  %% .\n",pdaa);
printf("Percentual de Alunos Reprovado %.2f  %% .\n",pdar);
printf("Percentual de Alunos Reprovados por media: %.2f %% .\n",pdarpm);
printf("Percentual de Alunos Reprovados por falta: %.2f %% .\n",pdarpf);

//pausa
system("pause");
}

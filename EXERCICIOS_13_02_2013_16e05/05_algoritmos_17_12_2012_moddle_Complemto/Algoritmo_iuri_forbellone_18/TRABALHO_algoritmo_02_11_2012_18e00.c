//1º Semestre do curso Superior de 
//Bacharelado em Sistemas de Informação em UniRitter - Campus Porto Alegre
//-SIS_0149_Algoritmos - (Fernando Henrique Cardoso) - fernando_cardoso@uniritter.edu.br
//William Goulart Pacheco
//Iuri Vilk
#include <stdio.h> //standard Input e Output ou seja entradas e saidas padroes
#include <stdlib.h> //prepara o programa para o uso do system("pause")
#include <math.h> // raiz e calculos
#define limiteserie 3
#define limiteturma 2
#define anoatual 2012
#define TAM 5 // tamanho do vetor
struct organiza{
    int serie;//vai armazenar tudo aki dentro
    int turma;
    char nome[50];
   
       
};
       
struct faculdade{
    int nm;//numero de matricula
    struct organiza org;//vai conter serie turma e nome
    char sexo;
    float media;
    char aprovado;
    int an;//ano de nascimento
    char naturalidade;
    int idade;
    
};

main(){
 
//declaracao de variavel
struct faculdade v[TAM];
int vt[limiteturma];
int vs[limiteserie];


int i,x;
int cap,crp,m1,m2,t1,t2,s1,s2;
int cf,cm,contgeral;
float porcap1,porcrp1,porcestra,media;
float porcap2,porcrp2;
float porcsm1,porcsm2,porcsf1,porcsf2;
int ctm1,ctm2,ctf1,ctf2;
int acumidade1,acumidade2;
int cestra,cta1,cta2,ctr1,ctr2;
float mediat1,mediat2;

acumidade1=acumidade2=0;
cta1=cta2=0;
ctr1=ctr2=0;
cap=crp=0;
contgeral=cestra=0;
mediat1=mediat2=0;
ctm1=ctm2=ctf1=ctf2=s1=s2=0;
porcsm1=porcsm2=porcsf1=porcsf2=0;
m1=m2=t1=t2=0;

for(i=0;i<TAM;i++){
vt[i]=0;
vs[i]=0;

}

for(i=0;i<TAM;i++){
    printf("Informe o numero de matricula : \n");                   
    scanf("%d",&v[i].nm);
    printf("Informe seu nome : \n");
    scanf("%s",&v[i].org.nome);
    
    do{//repita ateh que serie seja maior que zero e menor que o limite..
    printf("Informe sua serie 1 a 3 : \n");
    scanf("%d",&v[i].org.serie);
    }while(!(v[i].org.serie>0 && v[i].org.serie<=limiteserie));
    
    do{//repita ateh que turma seja maior que zero e menor que o limite..
    printf("Informe sua turma 1 ou 2 : \n");
    scanf("%d",&v[i].org.turma);
     }while(!(v[i].org.turma>0 && v[i].org.turma<=limiteturma));
    x=v[i].org.turma;//variavel usada para facilitar
    vt[x]=vt[x]+1;
    printf("%d \n",vt[x]);//teste
    
    
    printf("Informe o sexo (F|M) : \n");
    v[i].sexo=getche(); v[i].sexo=tolower(v[i].sexo); printf("\n"); 
    printf("%c \n",v[i].sexo);//teste
    
    printf("Informe sua media : \n");
    scanf("%f",&v[i].media);
   printf("%f \n",v[i].media);//teste
    
    printf("Aprovado ? (S|N) : \n");
    v[i].aprovado=getche(); v[i].aprovado=tolower(v[i].aprovado); printf("\n"); 
    printf("%c \n",v[i].aprovado);//teste
    
    printf("Informe o ano de nascimento : \n");
    scanf("%d",&v[i].an);
    printf("%d \n",v[i].an);//teste
    
    printf("Estrangeiro (S|N) : \n");
    v[i].naturalidade=getche(); v[i].naturalidade=tolower(v[i].naturalidade); printf("\n"); 
    v[i].idade=(anoatual-v[i].an);
    
    if(v[i].org.turma==1){    acumidade1=acumidade1+v[i].idade; m1++;   }
    else{    acumidade2=acumidade2+v[i].idade; m2++; } 
    
    printf("%d \n",v[i].idade);//teste
    printf("%d \n",acumidade1);//teste
    printf("%d \n",acumidade2);//teste
    
    //turma serie nome
    if(v[i].aprovado=='s'){
        if(v[i].org.turma==1){    cta1++;  t1++;  }
        else{    cta2++; t2++; }
    }
    
    else {
         if(v[i].org.turma==1){    ctr1++;  t1++;  }
         else{    ctr2++; t2++;  }
         }
    
    
 
    
    if(v[i].sexo=='f'){  
        if(v[i].org.turma==1){    ctf1++;  s1++;  }
        else{    ctf2++; s2++; } 
    }
    else{  
        if(v[i].org.turma==1){    ctm1++;   s1++; }
        else{    ctm2++; s2++; } 
    }

              
    if(v[i].naturalidade='s'){   cestra++;        }
    
    
    contgeral++;
}


porcap1=cta1*100/t1;
porcap2=cta2*100/t2;

porcrp1=ctr1*100/t1;
porcrp2=ctr2*100/t2;



porcsf1=ctf1*100/s1;
porcsf2=ctf2*100/s2;

porcsm1=ctm1*100/s1;
porcsm2=ctm2*100/s2;

mediat1=acumidade1/m1;
mediat2=acumidade2/m2;

porcestra=cestra*100/contgeral;

printf("A porcentagem de aprovados na turma 1 foi %.2f %%: \n",porcap1);
printf("A porcentagem de reprovados na turma 1 foi %.2f %%: \n",porcrp1);

printf("A porcentagem de aprovados na turma 2 foi %.2f %%: \n",porcap2);
printf("A porcentagem de reprovados na turma 2 foi %.2f %%: \n",porcrp2);



printf("A porcentagem de sexo masculino na turma 1 foi %.2f %%: \n",porcsm1);
printf("A porcentagem de sexo feminino na turma 1 foi %.2f %%: \n",porcsf1);

printf("A porcentagem de sexo masculino na turma 2 foi %.2f %%: \n",porcsm2);
printf("A porcentagem de sexo feminino na turma 2 foi %.2f %%: \n",porcsf2);


printf("Media de idades turma 1 foi %.2f %% \n",mediat1);
printf("Media de idades turma 2 foi %.2f  %%\n",mediat2);

printf("Porcentagem de alunos estrangeiros na escola %.2f %%\n",porcestra);

printf("Porcentagem de alunos repetentes na turma 1 foi %.2f : %%\n",porcrp1);
printf("Porcentagem de alunos repetentes na turma 2 foi %.2f : %%\n",porcrp2);

printf("Cinco melhores alunos de cada serie em ordem crescente ?\n");
//sei o que tem que fazer mas nao sei como explicar ao computador kkk








   	//pause
   	system("pause");  	
   	}

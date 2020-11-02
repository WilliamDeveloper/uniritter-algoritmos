//1º Semestre do curso Superior de 
//Bacharelado em Sistemas de Informação em UniRitter - Campus Porto Alegre
//-SIS_0150_Programacao_I - (ISABEL) - Isabel@uniritter.edu.br
//William Goulart Pacheco
#include <stdio.h> //standard Input e Output ou seja entradas e saidas padroes
#include <stdlib.h> //prepara o programa para o uso do system("pause")  	

void tminutos(int w,int x,int y,int z){

int h,m,tm; 
//zera horas se hora for igual e minuto inicial menor que o final
if(w==y &&x<z){ h=0; } 
//se hora inicial for menor que a final , subtrai final menos inicial
else if(w<y){ h=y-w; }
//se a hora inicial for maior que a final subtrai a dif do entre eles de 24h
else{ h=w-y; h=(24-h);  }

if(x<z){ m=z-x; }
//se o minuto inicial for maior que o final diminui uma hora das horas final
else{ m=x-z; m=(60-m); h=h-1; }

h=h*60;//converter horas em minutos
tm=h+m; //somar horas em  minutos com minutos    

printf("O jogo Durou %d minutos. \n\n\n",tm);

}


main(){
int i,vh[2],vm[2];
int hi,mi,hf,mf;
char resp,flag[7];

for(i=0;i<2;i++){
                 
    do{//usando vetor para economizar linhas
        if(i==0){ strcpy(flag,"INICIO"); }
        else{ strcpy(flag,"FIM"); }
        printf("=============================================\n");
        printf("Informe a hora de %s do jogo: \n",flag);
        
        do{//validacao
            printf("HH:"); scanf("%d",&vh[i]); 
        }while(vh[i]<0 || vh[i]>23);
        
        do{//validacao
            printf("MM:"); scanf("%d",&vm[i]); 
        }while(vm[i]<0 || vm[i]>59);
        
        printf("Voce digitou %d : %d , esta correto ? (S/N)\n",vh[i],vm[i]);
        resp=getche(resp); resp=tolower(resp); printf("\n");
    
    }while(!(resp!='n'));
    
    if(i==0){ hi=vh[i]; mi=vm[i]; } //atribuindo  valor do vetor variaveis ainda dentro do laço
    else { hf=vh[i]; mf=vm[i]; } //atribuindo  valor do vetor variaveis ainda dentro do laço

}

printf("=============================================\n");
tminutos(hi,mi,hf,mf);
       
//pause
system("pause");  	
}

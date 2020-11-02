#include <stdio.h> // habilita a bliblioteca de entrada e saida padrao
#include <stdlib.h>// habilita o uso para o comando System("pause")
#include <string.h>//habilita o uso de funçoes de string
#include <conio.h> // habilita o uso do comando getche
#include <ctype.h> //habilita o uso do comando tolower toupper ( minuscula e maiuscula)
#include <locale.h> //habilita exibicao de acentos
#include <math.h>
//-------------------------------------------------------------------------
/*

02 Construa um módulo que informe a quantidade de horas,
minutos e segundos de um quantidade de segundos
informada.

*/
int Fhoras(int a){
int b;
b=a/3600;
return b;

}

int Fminutos(int a,int c){
int b;
b=(a-(3600*c))/60;
return b;
}

int Fsegundos(int a,int c,int d){
int b;
b=(a-(3600*c)-(d*60));

return b;
}





int main(void){
int horas,minutos,isegundos,segundos;
printf("informe os segundos : \n");
scanf("%d",&isegundos);

horas=Fhoras(isegundos);
minutos=Fminutos(isegundos,horas);
segundos=Fsegundos(isegundos,horas,minutos);



printf("%d segundos equivalem  a : \n",isegundos);
printf("%d horas %d minutos %d segundos  a : ",horas,minutos,segundos);
system("pause");
 return 0;
}

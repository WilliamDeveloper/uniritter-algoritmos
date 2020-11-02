#include <stdio.h> // habilita a bliblioteca de entrada e saida padrao
#include <stdlib.h>// habilita o uso para o comando System("pause")
#include <string.h>//habilita o uso de funçoes de string
#include <conio.h> // habilita o uso do comando getche
#include <ctype.h> //habilita o uso do comando tolower toupper ( minuscula e maiuscula)
#include <locale.h> //habilita exibicao de acentos
#include <math.h>
//-------------------------------------------------------------------------
/*
01 Construa um módulo que obtenha a raiz quadrada inteira
de um número inteiro qualquer.

*/

int raizinteira(int a){
    int b;
    b=sqrt(a);
return b;
}

int main(void){
    int raiz,numero;
    printf("informe um numero : \n");
    scanf("%d",&numero);
    raiz=raizinteira(numero);
    printf("A raiz inteira de %d  eh : %d \n\n",numero,raiz);
    system("pause");
    return 0;
}

// SEMESTRE :  1º Semestre
// CURSO : Superior de Bacharelado em Sistemas de Informação em UniRitter
// DISCIPLINA : SIS_0149_Algoritmos - (Fernando Henrique Cardoso)
//=======================================================
// GRUPO_02_[COMPONENTES]
// Autores : Eron Pereira Barbosa
// Autores : Iuri Vilk da Silva Seleri
// Autores : Paulo Cesar Alves Junior
// Autores : Nicholas Vasconcelos Ricciolini
// Autores : William Goulart Pacheco
//=====================================================
// Empresa : VOE FÁCIL LINHAS AÉREAS INTELIGENTES.
//=====================================================
//INCLUSAO DE CABECALHOS
#include <stdio.h> // habilita a bliblioteca de entrada e saida padrao
#include <stdlib.h>// habilita o uso para o comando System("pause")
#include <string.h>//habilita o uso de funçoes de string
#include <conio.h> // habilita o uso do comando getche
#include <ctype.h> //habilita o uso do comando tolower toupper ( minuscula e maiuscula)
#include <locale.h> //habilita exibicao de acentos
#define TAM 500

//-------------------------------------------------------------------------

//-------------------------------------------------------------------------
typedef struct Tdados{
    int dia;
    int mes;
    int ano;
    char nome[50];
    int data;
    int origem;
    int destino;
    char lista[16][50]; //se der certo ignora as de baixo
}Tdados;// registro de dados


Tdados IniciaTdados(){
    int i;
    Tdados aux;
    aux.dia=0;
    aux.mes=0;
    aux.ano=0;
    strcpy(aux.nome,"");
    aux.data=0;
    aux.origem=0;
    aux.destino=0;

    for(i=0;i<16;i++){
    strcpy(aux.lista[i],"");
    }
    return aux;
}



void logotipo(){ // logotipo
    printf("\n\n\n\n\n\n");
    printf("=======================================================\n");
    printf("-------------------- SEJA BEM VINDO -------------------\n");
    printf("------------------------- A ---------------------------\n");
    printf("-------- VOE FÁCIL LINHAS AÉREAS INTELIGENTES ---------\n");
    printf("=======================================================\n\n");
}

void menu3(Tdados voo[TAM],Tdados *aux){
(*aux).data=50;
voo[0].data=50;
}

void menu2(Tdados voo[TAM],Tdados *aux){
(*aux).destino=69;
voo[0].destino=69;
menu3(voo,aux);
}

void menu(Tdados voo[TAM],Tdados *aux){
(*aux).origem=20;
voo[0].origem=20;
menu2(voo,aux);

}



int main(void){
setlocale(LC_ALL, "Portuguese"); //acentua as palavras corretamente
int flag,i;
flag=1;



Tdados voo[TAM];
Tdados aux;

//aux=IniciaTdados();

/*for(i=1;i<TAM;i++){//inicia zerado
    voo[i]=IniciaTdados();
}
*/
voo[0].origem=1;
voo[0].destino=2;
voo[0].data=3;
strcpy(voo[0].lista[4],"e ai meu ..");
strcpy(voo[0].lista[10],"e ai meu amigo");

while(flag==1){//enquanto for verdadeiro
system("pause");
printf("%d",aux.origem);
printf("%d",aux.destino);
printf("%d",aux.data);

printf("\n");

printf("%d",voo[0].origem);
printf("%d",voo[0].destino);
printf("%d",voo[0].data);

system("pause");
menu(voo,&aux);
//aux.origem=13;
system("pause");
printf("%d",aux.origem);
printf("%d",aux.destino);
printf("%d",aux.data);

printf("\n");

printf("%d",voo[0].origem);
printf("%d",voo[0].destino);
printf("%d",voo[0].data);


system("pause");
//aux=inserirpass();

system("cls");//pausa do loop
}}

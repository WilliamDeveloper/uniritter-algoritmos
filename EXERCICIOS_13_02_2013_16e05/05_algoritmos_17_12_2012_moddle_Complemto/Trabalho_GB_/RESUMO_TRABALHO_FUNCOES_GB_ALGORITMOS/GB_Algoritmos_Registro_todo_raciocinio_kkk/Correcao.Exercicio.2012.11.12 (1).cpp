
#include <stdio.h>
#include <conio.h>
#include <stdlib.h>
#include <string.h>

typedef struct regAluno {
  char mat[10], nome[50], naturalidade[50], turma[5];
  int serie, ano;
  char sexo;
  char aprov;
  float media;
};

typedef struct regTurma {
  char turma[5];
  regAluno alunos[50];
};

regAluno iniciaRegAluno() {
  regAluno aux;
  strcpy(aux.mat, "");
  strcpy(aux.nome, "");
  strcpy(aux.naturalidade, "");
  strcpy(aux.turma, "");
  aux.serie = aux.ano = 0;
  aux.sexo = aux.aprov = ' ';
  aux.media = 0;

  return aux;
}

regTurma iniciaRegTurma() {
  regTurma aux;
  strcpy(aux.turma, "");

  for (int i=0; i<50; i++) {
    aux.alunos[i] = iniciaRegAluno();//xama funcao de zerar campo do aluno para cada um
  }

  return aux;
}

int getRegTurma(regTurma turmas[], char turma[]) {
  int pos = -1;//posicao neutra
  int i = 0;//começo do registro

  while (pos == -1 && i < 50) {
    if (strcmp(turmas[i].turma, turma) == 0) { //procura se existe a turma digitada em alguma posicao e armazena
      pos = i;
    }
    else {
      i++;
    }
  }

  return pos;//devolve uma posicao diferente de -1 se foi encontrada a turma digitada..
}

int getPosLivreTurma(regTurma turmas[]) {
  int pos = -1;
  int i = 0;

  while (pos == -1 && i < 50) {
    if (strlen(turmas[i].turma) == 0) {//procura uma posicao livre para registrar a turma
      pos = i;
    }
    else {
      i++;
    }
  }

  return pos;//devolve um valor diferente de -1 caso houver uma posicao livre
}

int getPosLivreAluno(regTurma turma) {
  int pos = -1;
  int i = 0;

  while (pos == -1 && i < 50) {
    if (strlen(turma.alunos[i].nome) == 0) {//procura uma posicao livre para cadastrar o aluno
      pos = i;
    }
    else {
      i++;
    }
  }

  return pos; // devolve um valor diferente de -1 para cadastrar o aluno caso houver
}

int main() {
  regAluno aux;
  regTurma turma[50];
  char resp;

  for (int i=0; i<50; i++)
    turma[i] = iniciaRegTurma();

  do {
    printf("\nMatricula....: ");
    fflush(stdin);
    scanf("%s", &aux.mat);
    printf("\nNome.........: ");
    fflush(stdin);
    scanf("%s", &aux.nome);
    printf("\nSerie........: ");
    fflush(stdin);
    scanf("%d", &aux.serie);
    printf("\nTurma........: ");
    fflush(stdin);
    scanf("%s", &aux.turma);
    printf("\nSexo.........: ");
    fflush(stdin);
    scanf("%c", &aux.sexo);
    printf("\nMedia........: ");
    fflush(stdin);
    scanf("%f", &aux.media);
    printf("\nAprovado.....: ");
    fflush(stdin);
    scanf("%c", &aux.aprov);
    printf("\nNascimento...: ");
    fflush(stdin);
    scanf("%d", &aux.ano);
    printf("\nNaturalidade.: ");
    fflush(stdin);
    scanf("%s", &aux.naturalidade);

    int t = getRegTurma(turma, aux.turma);//existe alguma turma igual a essa registrada nesse vetor ?

    if (t == -1 ) {//se nao existe nenhuma turma registrada ...
      int plt = getPosLivreTurma(turma);//verifica qual a posicao livre que eu posso cadastrar

      if (plt != -1) {// se tiver possicao livre cadastre...
        strcpy(turma[plt].turma, aux.turma);//recebe no indice da turma
        turma[plt].alunos[0] = aux;//recebe no vetor do aluno no zero ja que foi a primeira posicao de uma turma zerada
      }
      else
        printf("Todas as posições das turmas estão ocupadas!");
    }
    else {// se ja existir cadastrada a turma entao verifica qual a posicao eu tenho livre para cadastrar o aluno
      int pla = getPosLivreAluno(turma[t]);

      if (pla != -1) {// se nao encontrar possicao livre entao...
        turma[t].alunos[pla] = aux;//recebe apenas no vetor de aluno ja que a turma ja ta cadastrada
      }
      else
        printf("Todas as posições dos alunos da turma estão ocupadas!");
    }

    printf("\n\nDeseja inserir novo registro? (s/n) ");
    resp = getch();

  } while (resp != 'n');//enquanto for diferente de n o laço se repete...

  for (int x=0; x<5; x++) {
    printf("\n\nTurma: %s", turma[x].turma);//imprime primeiro a turma e depois imprime a lista de alunos

    for (int y=0; y<5; y++) {
      printf("\nNome: %s", turma[x].alunos[y].nome);
    }
    getch();
  }

  getch();
}















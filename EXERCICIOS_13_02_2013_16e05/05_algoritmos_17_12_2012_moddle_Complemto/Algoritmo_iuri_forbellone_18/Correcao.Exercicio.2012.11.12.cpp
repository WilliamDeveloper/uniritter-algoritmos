
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
    aux.alunos[i] = iniciaRegAluno();
  }
  
  return aux;
}

int getRegTurma(regTurma turmas[], char turma[]) {
  int pos = -1;
  int i = 0;
  
  while (pos == -1 && i < 50) {
    if (strcmp(turmas[i].turma, turma) == 0) {
      pos = i;
    }
    else {
      i++;
    }
  }
  
  return pos;
}

int getPosLivre

int main() {
  regAluno aux;
  regTurma turma[50];
  
  for (int i=0; i<50; i++)
    turma[i] = iniciaRegTurma();
  
  printf("\nMatricula....: ");
  gets(aux.mat);
  printf("\nNome.........: ");
  gets(aux.nome);
  printf("\nSerie........: ");
  scanf("%d", &aux.serie);
  printf("\nTurma........: ");
  gets(aux.turma);
  printf("\nSexo.........: ");
  aux.sexo = getch();
  printf("\nMedia........: ");
  scanf("%f", &aux.media);
  printf("\nAprovado.....: ");
  aux.aprov = getch();
  printf("\nNascimento...: ");
  scanf("%d", &aux.ano);
  printf("\nNaturalidade.: ");
  gets(aux.naturalidade);
  
  int t = getRegTurma(turma, aux.turma);
  
  if (t == -1 ) {
    turma[0].turma = aux.turma; 
    turma[0].aluno[0] = aux; 
  }
  else {
       
  }  
  
  getch();
}

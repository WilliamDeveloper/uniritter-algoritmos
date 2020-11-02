
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

int getPosLivreTurma(regTurma turmas[]) {
  int pos = -1;
  int i = 0;
  
  while (pos == -1 && i < 50) {
    if (strlen(turmas[i].turma) == 0) {
      pos = i;
    }
    else {
      i++;
    }
  }
  
  return pos;
}

int getPosLivreAluno(regTurma turma) {
  int pos = -1;
  int i = 0;
  
  while (pos == -1 && i < 50) {
    if (strlen(turma.alunos[i].nome) == 0) {
      pos = i;
    }
    else {
      i++;
    }
  }
  
  return pos;
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
  
    int t = getRegTurma(turma, aux.turma);

    if (t == -1 ) {
      int plt = getPosLivreTurma(turma);
    
      if (plt != -1) {
        strcpy(turma[plt].turma, aux.turma); 
        turma[plt].alunos[0] = aux; 
      }
      else
        printf("Todas as posições das turmas estão ocupadas!");
    }
    else {
      int pla = getPosLivreAluno(turma[t]);
    
      if (pla != -1) {
        turma[t].alunos[pla] = aux; 
      }
      else
        printf("Todas as posições dos alunos da turma estão ocupadas!");
    } 
        
    printf("\n\nDeseja inserir novo registro? (s/n) ");
    resp = getch();
    
  } while (resp != 'n');
  
  for (int x=0; x<5; x++) {
    printf("\n\nTurma: %s", turma[x].turma);
    
    for (int y=0; y<5; y++) {
      printf("\nNome: %s", turma[x].alunos[y].nome);
    }
    getch();
  }
  
  getch();
}















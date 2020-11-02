#include <stdio.h>
int main ( )
{
   int x[29],cont,cont1,val,cont_aux=0;
   for(cont=0;cont<30;cont++)
   {
      printf("Digite n %d: ",cont+1);
      scanf("%d",&val);
      for(cont1=0;(cont1 < cont_aux) && (val != x[cont1]);cont1++)
      {}
      if (cont1 == cont_aux) {
        x[cont_aux] = val;
        cont_aux++;
      }
   }
   printf("Tamanho do vetor sem tamanhos repetidos: %d\n",cont_aux);
   for (cont=0;cont<cont_aux;cont++) {
     printf("%d ", x[cont]);
   }
system("pause");
}  

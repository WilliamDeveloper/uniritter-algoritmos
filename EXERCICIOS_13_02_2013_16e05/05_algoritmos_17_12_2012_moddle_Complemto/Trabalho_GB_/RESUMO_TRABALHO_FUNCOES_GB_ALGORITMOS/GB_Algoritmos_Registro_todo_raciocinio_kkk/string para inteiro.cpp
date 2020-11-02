/* atoi example */
#include <stdio.h>
#include <stdlib.h>
/*
copiar string para  numero inteiro
http://www.cplusplus.com/reference/clibrary/cstdlib/atoi/
*/
int main ()
{
  int i;
  char szInput [256];
  printf ("Enter a number: ");
  fgets ( szInput, 256, stdin );
  i = atoi (szInput);
  printf ("The value entered is %d. The double is %d.\n",i,i*2);
  system("pause");
  return 0;
}

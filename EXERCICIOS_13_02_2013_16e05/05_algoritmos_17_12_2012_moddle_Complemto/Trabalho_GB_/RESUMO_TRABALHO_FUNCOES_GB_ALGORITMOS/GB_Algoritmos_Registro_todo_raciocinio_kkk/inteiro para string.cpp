#include <stdio.h>
#include <stdlib.h>
/*
copiar numero inteiro para string
Base num�rica usada para representar o valor como uma string, 
entre 2 e 36 , onde 10 significa base decimal, 16 hexadecimal,
 8 octal, e dois bin�rio.
 http://www.cplusplus.com/reference/clibrary/cstdlib/atoi/
*/
int main() {//inteiro para string
int num ;
num= 3000;
char buf[5];
itoa(num, buf, 10);
printf("%s\n", buf);
system("pause");
return 0;
}

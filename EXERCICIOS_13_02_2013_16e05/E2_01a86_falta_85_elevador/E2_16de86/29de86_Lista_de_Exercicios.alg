algoritmo "List_Ex_29de86"
//arquivo "C:\Users\WILLIAM\Desktop\29_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//29. Qual(is) das condi��es abaixo N�O permite concluir que
// o valor da vari�vel A � maior do que as vari�veis B e C?
//a) Se (A>B) E (A>C) Entao
//Escrever "O Valor da Vari�vel A � maior que o das Vari�veis B e C"
//Fim_Se
//b) Se (A>B) E (B<C) Entao
//Escrever "O Valor da Vari�vel A � maior que o das Vari�veis B e C"
//Fim_Se
//c) Se (B<A) E (C<B) Entao
//Escrever "O Valor da Vari�vel A � maior que o das Vari�veis B e C"
//Fim_Se
//d) Se (A>B) OU (A>C) Entao
//Escrever "O Valor da Vari�vel A � maior que o das Vari�veis B e C"
//Fim_Se
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Se��o de Declara��es
var

a,b,c:inteiro

inicio
leia(a,b,c)


//ATENCAO SOMENTE OPCAO A � VERDADEIRA!!!!!!!!!
//A
Se (A>B) E (A>C) Entao
   escreval("A)- O Valor da Vari�vel A � maior que o das Vari�veis B e C")
fimse

//B - FALHA O PROPOSITO AO FORNECER 7 6 5 (A � MAIOR QUE B e C MAS 6 NAO EH MENOR QUE 5, LOGO NAO � POSSIVEL VALIDAR)
Se (A>B) E (B<C) Entao
   escreval("B)- O Valor da Vari�vel A � maior que o das Vari�veis B e C")
fimse

//C - FALHA O PROPOSITO AO FORNECER 7 5 6  (A � MAIOR QUE B e C MAS 6 NAO EH MENOR QUE 5, LOGO NAO � POSSIVEL VALIDAR)
Se (B<A) E (C<B) Entao
   escreval("C)- O Valor da Vari�vel A � maior que o das Vari�veis B e C")
fimse

//D - FALHA O PROPOSITO AO FORNECER 7 6 12 ( 12 NAO EH MENOR QUE 7 , LOGO A NAO EH MAIOR QUE C ,
//DEVIDO AO OU  A CONDICAO PARECE VERDADEIRA MAS ESTA VALIDANDO APENAS UMA DAS CONDICOES , SENDO ASSIM FALSA)
Se (A>B) OU (A>C) Entao
   escreval("D)- O Valor da Vari�vel A � maior que o das Vari�veis B e C")
fimse



fimalgoritmo

algoritmo "List_Ex_29de86"
//arquivo "C:\Users\WILLIAM\Desktop\29_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//29. Qual(is) das condições abaixo NÃO permite concluir que
// o valor da variável A é maior do que as variáveis B e C?
//a) Se (A>B) E (A>C) Entao
//Escrever "O Valor da Variável A é maior que o das Variáveis B e C"
//Fim_Se
//b) Se (A>B) E (B<C) Entao
//Escrever "O Valor da Variável A é maior que o das Variáveis B e C"
//Fim_Se
//c) Se (B<A) E (C<B) Entao
//Escrever "O Valor da Variável A é maior que o das Variáveis B e C"
//Fim_Se
//d) Se (A>B) OU (A>C) Entao
//Escrever "O Valor da Variável A é maior que o das Variáveis B e C"
//Fim_Se
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var

a,b,c:inteiro

inicio
leia(a,b,c)


//ATENCAO SOMENTE OPCAO A É VERDADEIRA!!!!!!!!!
//A
Se (A>B) E (A>C) Entao
   escreval("A)- O Valor da Variável A é maior que o das Variáveis B e C")
fimse

//B - FALHA O PROPOSITO AO FORNECER 7 6 5 (A É MAIOR QUE B e C MAS 6 NAO EH MENOR QUE 5, LOGO NAO É POSSIVEL VALIDAR)
Se (A>B) E (B<C) Entao
   escreval("B)- O Valor da Variável A é maior que o das Variáveis B e C")
fimse

//C - FALHA O PROPOSITO AO FORNECER 7 5 6  (A É MAIOR QUE B e C MAS 6 NAO EH MENOR QUE 5, LOGO NAO É POSSIVEL VALIDAR)
Se (B<A) E (C<B) Entao
   escreval("C)- O Valor da Variável A é maior que o das Variáveis B e C")
fimse

//D - FALHA O PROPOSITO AO FORNECER 7 6 12 ( 12 NAO EH MENOR QUE 7 , LOGO A NAO EH MAIOR QUE C ,
//DEVIDO AO OU  A CONDICAO PARECE VERDADEIRA MAS ESTA VALIDANDO APENAS UMA DAS CONDICOES , SENDO ASSIM FALSA)
Se (A>B) OU (A>C) Entao
   escreval("D)- O Valor da Variável A é maior que o das Variáveis B e C")
fimse



fimalgoritmo

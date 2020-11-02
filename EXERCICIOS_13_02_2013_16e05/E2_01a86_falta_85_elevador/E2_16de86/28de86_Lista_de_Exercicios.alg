algoritmo "List_Ex_28de86"
//arquivo "C:\Users\WILLIAM\Desktop\28_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//28. Realize o teste de mesa dos trechos de algoritmos abaixo.
// O algoritmo deve informar, corretamente, quando
//o valor estiver no intervalo de [10 a 99].
//Qual(is) algoritmo(s) efetua(m) esta operação corretamente?
//a) Se (Numero>9) E (Numero<100) Entao
//Escrever "o numero esta no intervalo de 10 a 99"
//Senao
//Escrever "o numero não esta no intervalo de 10 a 99"
//Fim_Se
//b) Se (Numero<10) OU (Numero>=100) Entao
//Escrever "o numero não esta no intervalo de 10 a 99"
//Senao
//Escrever "o numero esta no intervalo de 10 a 99"
//Fim_Se
//c) Se NAO(Numero<10) OU NAO(Numero>99) Entao
//Escrever "o numero esta no intervalo de 10 a 99"
//Senao
//Escrever "o numero não esta no intervalo de 10 a 99"
//Fim_Se
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var


numero:inteiro

inicio
leia(numero)

//!!!!!!!!!!!!ATENCAO!!!!!!!!!!!!!!!!!!!!!!!!!!!
//A E B SAO CORRETAS
//A
Se (Numero>9) E (Numero<100) Entao
   Escreval ("a)- o numero esta no intervalo de 10 a 99")
Senao
   Escreval ("a)- o numero não esta no intervalo de 10 a 99")
fimse

//B
Se (Numero<10) OU (Numero>=100) Entao
   Escreval ("b)- o numero não esta no intervalo de 10 a 99")
Senao
   Escreval ("b)- o numero esta no intervalo de 10 a 99")
fimse

//C
Se NAO(Numero<10) OU NAO(Numero>99) Entao
   Escreval ("c)- o numero esta no intervalo de 10 a 99")
Senao
   Escreval ("c)- o numero não esta no intervalo de 10 a 99")
fimse







fimalgoritmo

//Leia uma matriz 3 x 3 e apos leia uma posi��o no qual sera informado o localiza��o do valor  na matriz

              "N�O DEU TEMPO, ASSIM QUE POSSIVEL TERMINAREMOS"

algoritmo "Localiza��o"
// Fun��o : Localiza um valor na matriz
// Autor :  Carlos Marlon
// Data : 17/10/2012
// Se��o de Declara��es 
var

     m: vetor [1..3,1..3] de real
     contlinha, contcoluna, valor, linha, coluna, contador: inteiro
     
     
inicio
// Se��o de Comandos 


    para contlinha de 1 ate 3 faca
     para contcoluna de 1 ate 3 faca
     
          escreval ("Digite os Valores para a Matriz")
          leia (m[contlinha,contcoluna])
          
     fimpara
   fimpara
   
     escreva ("- - - - - - - - - ")
     escreva ("Digite o valor para localizar na matriz")
     leia (valor)
     
   para contlinha de 1 ate 3 faca
     para contcoluna de 1 ate 3 faca
     
     se (m[contlinha,contcoluna]=valor) entao

                                         linha<- contlinha
                                         coluna<- contcoluna
                                         contador <- contador + 1
     fimse

     fimpara
     fimpara
     
     se (contador <> 0 ) entao
        escreva ("O valor", valor, " esta na linha ", linha, " e na coluna ", coluna)
        senao
        escreva ("Valor nao encontrado")
     fimse

  


fimalgoritmo

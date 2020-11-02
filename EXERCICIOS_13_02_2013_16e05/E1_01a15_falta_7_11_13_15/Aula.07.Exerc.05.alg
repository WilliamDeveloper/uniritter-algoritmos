algoritmo "Valor_10"
// Função :
// Autor :
// Data : 18/09/2012
// Seção de Declarações 
var
  i,cont,cont2,aux : inteiro
  v : vetor [1..20] de inteiro
inicio
cont:=0
cont2:=20
  Para i de 1 ate 20 faca
    escreva("Informe um número: ")
    leia(v[i])
  FimPara
 //metade de 20 senao volta ao resultado inicial
    para i de 1 ate 10 faca

         aux:=v[i]
         v[i]:=v[cont2]
         V[cont2]:=aux
         cont2:=(cont2-1)


    fimpara
  
  
 para i de 1 ate 20 faca

         escreval("Vetor",v[i])


    fimpara

  
fimalgoritmo

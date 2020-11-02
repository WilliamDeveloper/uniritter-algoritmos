algoritmo "33_Prematuro_RECEM_NASCIDO"
// Função :
// Autor :
// Data : 13/10/2012
// Seção de Declarações
//
//33.Realizou-se uma pesquisa para determinar alguns dados estatisticos em
//Relaçao ao conjunto de crianças nascidas em um certo periodo de uma determinada
// maternidade. construa um algoritmo que leia o numero  de crianças nascidas nesse
//  periodo e. depois em um numero indeterminado de vezes ,
//  o sexo de um recem nascido prematuro('M'- masculino ou 'F' - feminino)
//  e o numero de dias que este foi mantido na incubadora.
//como finalizador, teremos a letra 'X' . no lugar do sexo da criança.
//determine e imprima:
//- a porcentagem de recem nascidos prematuros;
//- a pocentagem de recem nascidos meninos e meninas do total de prematuros;
//- a media de dias de permanencia dos recem nascidos prematuros na incubadora;
//- o maior numero de dias que um recem nascido prematuro permaneceu na incubadora;


var

rn,maior,menor,ncnp,contF,contM,contgeral,somadias : inteiro
sexo : caracter
ndi : inteiro
porcprematuros,porcrnF,porcrnM,mdp : real

inicio

Escreva("informe o numero  de criancas nascidas nesse periodo : ")
Leia(ncnp)


sexo:="M"
porcprematuros:=porcrnF:=porcrnM:=mdp:=0.0
contF:=contM:=contgeral:=somadias:=0

escreval
escreval("=====================================================")
escreval

Enquanto (sexo<>"X") faca

   Escreva ("Informe Sexo do recem nascido prematuro (M|F): ")
   Leia(sexo)

   //validacao para variavel sexo
   Enquanto (sexo<>"M")E(sexo<>"F")E(sexo<>"X") faca
      Escreval ("RESPOSTA INVALIDA!!!")
      Escreval ("Responda novamente a pergunta...")
      Escreva("Informe Sexo do recem nascido prematuro (M|F):")
      Leia(sexo)
   fimenquanto
   se (sexo<>"X") entao
      Se (sexo="M") entao
         contM:=contM+1
      fimse
      Se (sexo="F") entao
         contF:=contF+1
      fimse
      Se (sexo<>"X")  entao
         Escreva("Informe  o numero de dia que foi mantido na incubadora : ")
         leia(ndi)
         contgeral:=contgeral+1
         somadias:=somadias+ndi
      fimse
      Se (contgeral=1) entao
         maior:=ndi
         menor:=ndi
      fimse
      Se (ndi>maior) entao
         maior:=ndi
      Senao
         Se (ndi<menor) entao
            menor:=ndi
         fimse
      fimse
   fimse
fimenquanto

porcprematuros:=contgeral*100/ncnp
porcrnM:=contM*100/contgeral
porcrnF:=contF*100/contgeral
mdp:=somadias/contgeral

escreval
escreval("===================================================================")
escreval
Escreval ("a porcentagem de recem nascidos prematuros : ",porcprematuros:3:2," %")
Escreval ("a pocentagem de recem nascidos sobre o total de Prematuros : ")
Escreval ("- meninos do total de prematuros: ",porcrnM:3:2," %")
Escreval ("- meninas do total de prematuros: ",porcrnF:3:2," %")
Escreval ("a media de permanencia dos prematuros na incubadora eh : ",mdp)
Escreval ("o maior numero de dias que permaneceu na incubadora : ",maior)


fimalgoritmo

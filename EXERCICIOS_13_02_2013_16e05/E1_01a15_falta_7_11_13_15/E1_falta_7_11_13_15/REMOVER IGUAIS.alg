algoritmo "separação de números iguais"
arquivo "C:\Users\WILLIAM\Desktop\ex07.txt" // usando leitura apartir do txt
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// Autor : Johnny Willer Gasperi Gonçalves
// Data : 31/07/2011
// Seção de Declarações
var
vnum1, vnum2: vetor [1..10] de inteiro
i, aux, j: inteiro
terminado: logico
inicio
// Seção de Comandos
para i de 1 ate 10 faca
escrevaL (" Digite o ", i, "º número que deseja incrementar no 1º vetor")
leia (vnum1[i])
vnum2[i] <- vnum1[i]
fimpara
j <- 9
aux <- 1
enquanto terminado = falso faca
para i de 1 ate j faca
se vnum2[aux + i] = vnum2[aux] entao
vnum2[aux + i] <- 0
fimse
se i = j entao
aux <- aux + 1
j <- j - 1
fimse
se aux > 9 entao
terminado <- verdadeiro
fimse
fimpara
fimenquanto
escrevaL ("---------------------- VETOR 1 ----------------------")
para i de 1 ate 10 faca
escreva (vnum1[i], "  ")
fimpara
escrevaL ("")
escrevaL ("")
escrevaL ("---------------------- VETOR 2 ----------------------")
para i de 1 ate 10 faca
se vnum2[i] <> 0 entao
escreva (vnum2[i], "  ")
fimse
fimpara
fimalgoritmo

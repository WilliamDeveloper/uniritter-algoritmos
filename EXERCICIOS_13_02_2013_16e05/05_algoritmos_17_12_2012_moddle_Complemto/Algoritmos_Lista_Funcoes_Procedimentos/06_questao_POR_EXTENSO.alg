Algoritmo "06_VALOR_EXTENSO"
// Função :
// Autor : WILLIAM GOULART PACHECO
// Data : 07/11/2012
// Seção de Declarações 
//06-Construa um módulo que imprima por extenso o valor de
//um número inteiro com até 12 casas.
//==================================================
VAR //VARIAVEL GLOBAL
n:inteiro
extenso:caracter
//==================================================
//inteiro do visualG nao suporta 12 casas
FUNCAO Fextenso(numero:inteiro):caracter
var
nome:caracter
inicio
escolha(numero)
caso 0
nome:="Zero"
caso 1
nome:="Um"
caso 2
nome:="Dois"
caso 3
nome:="Tres"
caso 4
nome:="Quatro"
caso 5
nome:="Cinco"
caso 6
nome:="Seis"
caso 7
nome:="Sete"
caso 8
nome:="Oito"
caso 9
nome:="Nove"
caso 10
nome:="Dez"
caso 11
nome:="onze"
caso 12
nome:="Doze"
caso 13
nome:="Treze"
caso 14
nome:="Quatorze"
caso 15
nome:="Quinze"
caso 16
nome:="Dezesseis"
caso 17
nome:="Dezessete"
caso 18
nome:="Dezoito"
caso 19
nome:="Dezenove"
caso 20
nome:="Vinte"
caso 30
nome:="Trinta"
caso 40
nome:="Quarenta"
caso 50
nome:="Cinquenta"
caso 60
nome:="Sessenta"
caso 70
nome:="Setenta"
caso 80
nome:="Oitenta"
caso 90
nome:="Noventa"
caso 100
nome:="Cem"
caso 200
nome:="Duzentos"
caso 300
nome:="Trezentos"
caso 400
nome:="Quatrocentos"
caso 500
nome:="Quinhentos"
caso 600
nome:="Seiscentos"
caso 700
nome:="Setecentos"
caso 800
nome:="Oitocentos"
caso 900
nome:="Novecentos"
caso 1000
nome:="Mil"
caso 1000000
nome:="Milhao"
caso 1000000000
nome:="Bilhao"
caso 1000000000000
nome:="Trilhao"
fimescolha

RETORNE (nome)
FIMFUNCAO
//==================================================
INICIO
// Seção de Comandos
Escreva("Informe um numero inteiro de 0 a 20 : ")
Leia(n)
extenso:=Fextenso(n)
escreval("======================================")
Escreval("O numero ",n," por extenso é ",extenso)
escreval("======================================")
FIMALGORITMO

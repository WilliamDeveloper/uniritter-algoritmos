algoritmo "Questao_01"
// Função :
// Autor :WILLIAM GOULART PACHECO
// Data : 28/11/2012
// Seção de Declarações

tipo empresa=registro

nome:caracter
area:caracter
ano:inteiro
telefone:caracter
email:caracter
salario:real

fimregistro;


var
resp:caracter
i:inteiro
media:real
maior:inteiro
acum:real
contfunc:inteiro
funcionario:caracter
v:vetor[1..100] de empresa



inicio
contfunc:=0
acum:=0
i:=0
repita
   i:=i+1
   contfunc:=contfunc+1
   escreva("Infome o nome do funcionario .: ")
   leia(v[i].nome)
   escreva("Infome a area do funcionario .: ")
   leia(v[i].area)
   escreva("Infome o ano do funcionario .: ")
   leia(v[i].ano)
   escreva("Infome o telefone do funcionario .: ")
   leia(v[i].telefone)
   escreva("Infome o email do funcionario .: ")
   leia(v[i].email)
   escreva("Infome o salario do funcionario .: ")
   leia(v[i].salario)
   acum:=acum+v[i].salario
   se (contfunc=1) entao
      maior:=v[i].ano
      funcionario:=v[i].nome
   fimse
   se (v[i].ano<maior) entao
      maior:=v[i].ano
      funcionario:=v[i].nome
   fimse


se (i<100) entao


   repita
      escreva("Novo funcionario(S/N) .: ")
      leia(resp)
   ate (resp="S")OU(resp="N")

fimse
ate (resp="N")ou(i=100)

media:=acum/contfunc


escreval("------------------------------------------------------")
escreval("A media salarial dos funcionarios é : ",media)
escreval("o funcionario com mais tempo na empresa é .: ",funcionario)
escreval("------------------------------------------------------")


fimalgoritmo

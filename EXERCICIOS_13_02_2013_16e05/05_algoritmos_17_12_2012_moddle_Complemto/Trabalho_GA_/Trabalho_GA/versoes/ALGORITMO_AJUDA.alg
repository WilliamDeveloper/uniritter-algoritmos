algoritmo "media ufrn"

var
nota1, nota2, nota3 :real
media : real
soma : real
inicio
escreval ( "                       MEDIA SEMESTRAL")
escreval()
escreva ("escreva a primeira nota: ")
leia (nota1)
enquanto ( nota1 < 0) ou (nota1 > 10)faca
   escreval("NOTA INVALIDA DIGITE NOVAMENTE")
   escreva ("escreva a primeira nota: ")
   leia (nota1)
fimenquanto
escreva ("escreva a segunda nota: ")
leia (nota2)
enquanto ( nota2 < 0) ou (nota2 > 10)faca
   escreval("NOTA INVALIDA DIGITE NOVAMENTE")
   escreva ("escreva a primeira nota: ")
   leia (nota2)
fimenquanto
escreva ("escreva a terceira nota: ")
leia (nota3)
enquanto ( nota3 < 0) ou (nota3 > 10)faca
   escreval("NOTA INVALIDA DIGITE NOVAMENTE")
   escreva ("escreva a primeira nota: ")
   leia (nota3)
fimenquanto
escreval()
soma<-(nota1+nota2+nota3)/3
se (soma >= 7) entao
   escreva ("                   VOCÊ ESTÁ APROVADO")
senao
  se (soma >= 5) ou (soma < 7 )entao
      escreva ("              VOCÊ ESTÁ EM RECUPERAÇÃO")
   senao
      se (soma <5) entao
         escreva ("              VOCÊ ESTÁ REPROVADO")
      fimse
   fimse
fimse
escreval()
escreval()
fimalgoritmo

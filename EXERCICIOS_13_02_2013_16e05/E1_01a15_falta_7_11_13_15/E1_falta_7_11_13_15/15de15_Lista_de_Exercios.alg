algoritmo "List_Ex_15de15"
// Fun��o :
// ===================================================
// 15) Escrever um algoritmo que realize a manuten��o de um
// controle de estoque de uma loja que possui 10 tipos de
// produtos em estoque. O controle de estoque utilizar� tr�s
// vetores: 1 vetor para armazenar os c�digos dos produtos,
// 1 vetor para armazenar a descri��o (nome) dos produtos e
// 1 vetor para armazenar a quantidade atual de cada produto.
// O algoritmo deve apresentar ao usu�rio as seguintes op��es:
// Entrar com os dados do estoque: permitir a leitura do c�digo,
// descri��o e quantidade atual dos produtos;
// Entrada de produtos no estoque: solicitar o c�digo do
// produto e verificar se o mesmo est� cadastrado.
// Em caso afirmativo, solicitar a quantidade de entrada
// e adicion�-la ao estoque;
// Sa�da de produtos do estoque: solicitar o c�digo do produto
// e verificar se o mesmo est� cadastrado. Em caso afirmativo,
// solicitar a quantidade de sa�da e verificar se existe
// estoque suficiente. Existindo estoque, realizar a subtra��o
// da quantidade de sa�da, caso contr�rio, informar ao usu�rio;
// Relat�rio: mostrar o c�digo, descri��o e quantidade atual
// de cada produto armazenado no estoque.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Se��o de Declara��es
var
codigo:vetor[1..10] de inteiro
descricao:vetor[1..10] de caracter
quantidade:vetor[1..10] de inteiro
i,j,menu,TAM,valor,achou,qt,pvi:inteiro

inicio

TAM:=10
achou:=0

repita

   escreval("========================================")
   escreval("!!!!!!!!!!!!!!! MENU !!!!!!!!!!!!!!!!!!!")
   escreval("========================================")
   escreval("1 - Entrar com dados do estoque ")
   escreval("2 - Entrada de produtos no estoque ")
   escreval("3 - Saida de produtos do estoque ")
   escreval("4 - Relatorio ")
   escreval("0 - Sair ")
   escreval("========================================")
   escreval("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
   escreval("========================================")
   leia(menu)

   escolha (menu)
   caso 1

      para   i de 1 ate TAM faca
         escreval("Informe o codigo do produto: ")
         leia(codigo[i])
         escreval("Informe a descricao do produto: ")
         leia(descricao[i])
         escreval("Informe a quantidade do produto: ")
         leia(quantidade[i])
         escreval("----------------------------------")
      fimpara

   caso 2
      escreval("Informe o codigo do produto: ")
      leia(valor)

      para i de 1 ate TAM faca
         se (valor=codigo[i]) entao
            achou:=1
            pvi:=i
         fimse
      fimpara

      se (achou=1) entao
         escreval("Informe quantos produto que deseja adicionar ao estoque: ")
         leia(qt)
         quantidade[pvi]:=quantidade[pvi]+qt
      senao
         escreval("CODIGO NAO ENCONTRADO!!")
      fimse

   caso 3

      escreval("Informe o codigo do produto: ")
      leia(valor)

      para i de 1 ate TAM faca
         se (valor=codigo[i]) entao
            achou:=1
            pvi:=i
         fimse
      fimpara


      se (achou=1) entao
         escreval("Informe quantos produto sairao do estoque: ")
         leia(qt)

         se (qt<=quantidade[pvi]) entao
            quantidade[pvi]:=quantidade[pvi]-qt

         senao
            escreval("NAO FOI ENCONTRADO PRODUTO SUFICIENTE EM ESTOQUE!!")
         fimse

      senao
         escreval("CODIGO NAO ENCONTRADO!!")
      fimse

   caso 4

      escreval("==============================================")
      escreval("!!!!!!!!!!!!!!!!! RELATORIO !!!!!!!!!!!!!!!!!!")
      escreval("==============================================")
      escreval("[CODIGO]      [DESCRICAO]          [QUANTIDADE]")

      para i de 1 ate tam faca
         escreval("[",codigo[i],"] [",descricao[i],"] [",quantidade[i],"]")
         //escreval(" Codigo=",codigo[i]," Descricao=",descricao[i]," Quantidade=",quantidade[i])

      fimpara

   fimescolha

ate (menu=0)







fimalgoritmo

algoritmo "revisao_49"
tipo
  reg = registro
    loja : String;
    telefone : String;
    preco : real;
  fimRegistro;
var
  pesquisa : vetor [1..15] de reg;
  i : inteiro;
  media, acum : real;
inicio
// Seção de Comandos 
  acum := 0;

  para i de 1 ate 15 faca
    escreva("Loja....: ");
    leia(pesquisa[i].loja);
    escreva("Telefone: ");
    leia(pesquisa[i].telefone);
    escreva("Preço...: ");
    leia(pesquisa[i].preco);
    
    acum := acum + pesquisa[i].preco;
  fimPara;
  
  media := acum/15;
  
  para i de 1 ate 15 faca
    Se (pesquisa[i].preco < media) Entao
      escreva("Loja....: ", pesquisa[i].loja);
      escreva("Telefone: ", pesquisa[i].telefone);
    FimSe;
  fimPara;
fimalgoritmo

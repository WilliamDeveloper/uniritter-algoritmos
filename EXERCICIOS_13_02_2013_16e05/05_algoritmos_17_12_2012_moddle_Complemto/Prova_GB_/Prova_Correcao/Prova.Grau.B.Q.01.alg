algoritmo "GrauB_Q01"
// Função :
// Autor :
// Data : 28/11/2012
// Seção de Declarações 
tipo reg_func = registro
       nome, area, telefone, email : String;
       ano : inteiro;
       salario : real;
     fimRegistro;

var
  func : vetor [1..100] de reg_func;
  resp : char;
  i, cont, maior : inteiro;
  media : real;

inicio
// Seção de Comandos 
  cont := 0;
  media := 0;
  maior := 3000;
  
  repita
    cont := cont + 1;
    
    escreva("Nome: ");
    leia(func[cont].nome);
    escreva("Área: ");
    leia(func[cont].area);
    escreva("Telefone: ");
    leia(func[cont].telefone);
    escreva("email: ");
    leia(func[cont].email);
    escreva("Ano de admissão: ");
    leia(func[cont].ano);
    escreva("Salário: ");
    leia(func[cont].salario);
    
    Se (func[cont].ano < maior) Entao
      maior := func[cont].ano;
    FimSe;
    
    media := media + func[cont].salario;
  ate resp = 'N' OU cont >= 100;
  
  escreval("Média dos salários: ", media/cont);
  escreval("Funcionário(s) com mais tempo de casa: ");
  
  para i de 1 ate cont faca
    Se (func[cont].ano = maior) Entao
      escreval(func[cont].nome);
    FimSe;
  fimPara;
  
fimalgoritmo

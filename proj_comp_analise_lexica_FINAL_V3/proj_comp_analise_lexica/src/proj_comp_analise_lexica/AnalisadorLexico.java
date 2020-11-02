
package proj_comp_analise_lexica;

import proj_comp_analise_lexica.model.TxtLoader;

public class AnalisadorLexico {
    int contadorTermos = 0;
    final int QOUTRO = -5;
    FitaDeEntrada fitaDeEntrada ;
    int estadoAtual = 0;
    int estadoAtualReservada = 0;
    int termoInicio = -1;
    int termoFim = -1;
    String nomeTermo = "";
    String nomeTermoReservada = "";
    boolean flagVoltaOutraVez = false;

//######################################################################
    public AnalisadorLexico() {
	fitaDeEntrada = new FitaDeEntrada();
    }
//######################################################################
    public void sp_mostrar_character_carregado_na_fita(){
    	new TxtLoader().mostrarDados(fitaDeEntrada.arrayListFitaEntrada);//teste
	System.out.println("__________________________________________________");//teste
    }
//######################################################################
    public void sp_start()
    {
	//procedure serve para ver o que esta carregado na fita de entrada
	//sp_mostrar_character_carregado_na_fita();
	
	while(fitaDeEntrada.sf_tem_proximo()){
	    char c = fitaDeEntrada.sf_proximo();    
	    sp_analiza_fita(c);	   
	}
    }
//######################################################################
    public char sf_converte_char(char c){
	char tmpValor;
	switch(c){
	    case ' ': tmpValor = ' ';  break;
	    case '\t': tmpValor = ' '; break;
	    case '\n': tmpValor = ' '; break;
	    default: tmpValor = c;
	}
	return tmpValor;
    }
//######################################################################
    private void sp_analiza_fita(char c) {	
	char tmpChar = ' ';
	tmpChar = (c == ' ' || c == '\n' || c == '\t')? ' ' : c;
	tmpChar = Character.isLetter(c)? 'a' : tmpChar;
	tmpChar = Character.isDigit(c)? '1' : tmpChar;
	tmpChar = (c == '.')?'.':tmpChar;
	tmpChar = Character.toLowerCase(tmpChar); //teste
	
	if(estadoAtual == 0){
	    if(Character.toLowerCase(c) == 'i'){
		estadoAtualReservada = 1;
	    }
	}
//		System.out.println("delimitado MAIN: "+estadoAtual);
	switch(this.estadoAtual){
	    case 0: sp_fluxo_inicial(tmpChar, c);break;
	    case 1: sp_fluxo_letra(tmpChar, c);break;
	    case 2: sp_fluxo_numero(tmpChar, c);break;
	    case 3: sp_fluxo_delimitador(tmpChar, c);break;
	    case 4: sp_fluxo_delimitador(tmpChar, c);break;
	    case 5: sp_fluxo_operador_relacional(tmpChar, c);break;
	    case 6: sp_fluxo_operador_relacional(tmpChar, c);break;
	    case 7: sp_fluxo_operador_relacional(tmpChar, c);break;
	    case 8: sp_fluxo_operador_relacional(tmpChar, c);break;
	    case 9: sp_fluxo_operador_aritmetico(tmpChar, c);break;
	    case 10: sp_fluxo_operador_aritmetico(tmpChar, c);break;
	    case 11: sp_fluxo_operador_aritmetico(tmpChar, c);break;
	    case 12: sp_fluxo_operador_aritmetico(tmpChar, c);break;
	    case 13: sp_fluxo_operador_logico(tmpChar, c);break;
	    case 14: sp_fluxo_operador_logico(tmpChar, c);break;
	    case 15: sp_fluxo_numero(tmpChar, c); break;
	    case 16: sp_fluxo_operador_relacional(tmpChar, c);break;
	    case 17: sp_fluxo_numero(tmpChar, c); break;
	}	
    }
   //###################################################################### 
    public void sp_memoriza_inicio_termo(){
	this.termoInicio = fitaDeEntrada.sf_get_pos_atual_fita();
    }
   //###################################################################### 
    public void sp_memoriza_fim_termo(){
	this.termoFim = fitaDeEntrada.sf_get_pos_atual_fita();
    }
  //######################################################################  
    
    public void sp_fluxo_inicial(char tmpChar,char c){
    switch(tmpChar)
	{	    
	    case ' ': this.estadoAtual = 0; sp_memoriza_inicio_termo();sp_memoriza_fim_termo();break;//espaço, tab, quebra linha
	    case 'a': this.estadoAtual = 1;sp_memoriza_inicio_termo();sp_memoriza_fim_termo();break;//letra	
	    case '1': this.estadoAtual = 2;sp_memoriza_inicio_termo();sp_memoriza_fim_termo();break;//numero 
	    case '(': this.estadoAtual = 3;sp_memoriza_inicio_termo();sp_memoriza_fim_termo();this.nomeTermo="(delim)";break;
	    case ')': this.estadoAtual = 4;sp_memoriza_inicio_termo();sp_memoriza_fim_termo();this.nomeTermo="(delim)";break;
	    case '=': this.estadoAtual = 5;sp_memoriza_inicio_termo();sp_memoriza_fim_termo();this.nomeTermo="(atribuicao)";break;
	    case '!': this.estadoAtual = 6;sp_memoriza_inicio_termo();sp_memoriza_fim_termo();this.nomeTermo="(op_log)";break;
	    case '>': this.estadoAtual = 7;sp_memoriza_inicio_termo();sp_memoriza_fim_termo();this.nomeTermo="(op_rel)";break;
	    case '<': this.estadoAtual = 8;sp_memoriza_inicio_termo();sp_memoriza_fim_termo();this.nomeTermo="(op_rel)";break;
	    case '+': this.estadoAtual = 9;sp_memoriza_inicio_termo();sp_memoriza_fim_termo();this.nomeTermo="(op_arit)";break;
	    case '-': this.estadoAtual = 10;sp_memoriza_inicio_termo();sp_memoriza_fim_termo();this.nomeTermo="(op_arit)";break;
	    case '*': this.estadoAtual = 11;sp_memoriza_inicio_termo();sp_memoriza_fim_termo();this.nomeTermo="(op_arit)";break;
	    case '/': this.estadoAtual = 12;sp_memoriza_inicio_termo();sp_memoriza_fim_termo();this.nomeTermo="(op_arit)";break;
	    case '&': this.estadoAtual = 13;sp_memoriza_inicio_termo();sp_memoriza_fim_termo();this.nomeTermo="(op_log)";break;
	    case '|': this.estadoAtual = 14;sp_memoriza_inicio_termo();sp_memoriza_fim_termo();this.nomeTermo="(op_log)";break;
	    default: System.out.println(tmpChar+" Token não reconhecido!!!");
	}
    }
    //######################################################################################################
    public void sp_fluxo_numero(char tmpChar,char c){
	final char ehDigito = '1';
	final char ehPonto = '.';	    
	    
	this.nomeTermo = "(num)";
	switch(estadoAtual){// 7 . 9	    
	    case 2: //|0->2(NumR)  
		switch(tmpChar){ 
		    case ehDigito: estadoAtual = 2;sp_memoriza_fim_termo(); break;
		    case ehPonto: estadoAtual = 15; flagVoltaOutraVez = true;break;
		    default: estadoAtual = QOUTRO;
		}
	    break;
	    case 15: //|2->3(.)   |3->3(numR)
		switch(tmpChar){ 
		    case ehPonto: estadoAtual = QOUTRO; flagVoltaOutraVez = true; break;
		    case ehDigito: estadoAtual = 17;sp_memoriza_fim_termo();flagVoltaOutraVez = false; break;
		    default: estadoAtual = QOUTRO;	    
		}
	    break;
	    case 17: //|2->3(.)   |3->3(numR)
		switch(tmpChar){ 
		    case ehDigito: estadoAtual = 17;sp_memoriza_fim_termo();break;
		    default: estadoAtual = QOUTRO;	    
		}
	    break;
	}
	
	if(estadoAtual == QOUTRO){
	    sp_fluxo_QOUTRO();
	}
    }
    //######################################################################################################
    private void sp_fluxo_letra(char tmpChar, char c) {
	final char ehLetra = 'a';
	final char ehDigito = '1';
	this.nomeTermo = "(id)";
	switch(estadoAtual){
	    case 1://javeio letra do q0
		switch(tmpChar){
		    case ehLetra :
		    case ehDigito: estadoAtual = 1;
				   sp_memoriza_fim_termo();
		    break;
		    default: estadoAtual= QOUTRO;
		}  
	    break;
	}
	
	sp_fluxo_paravra_reservada(tmpChar, c);
	
	if(estadoAtual == QOUTRO){
	    sp_fluxo_QOUTRO();
	}
    }
    
//######################################################################################################
    private void sp_fluxo_paravra_reservada(char tmpChar, char c) {
	switch(estadoAtualReservada){
	    case 1:  
		switch(Character.toLowerCase(c)){ 
		    case 'f': estadoAtualReservada = 2;sp_memoriza_fim_termo(); break; 
		    default: estadoAtualReservada = QOUTRO;
		}
	    break;
		
	    case 2:  //se nao eh uma letra e nao eh um numero
	    int a = (tmpChar !='a' && tmpChar !='1')? 1 : 0;
		switch(a){ 
		    case 1: 
			estadoAtualReservada = 3;
			this.nomeTermoReservada = "(reserv)"; 
		    break; 
		    default: estadoAtualReservada = QOUTRO;
		}
	    break;
	}
    }
    
    //    //######################################################################################################
    private void sp_fluxo_delimitador(char tmpChar, char c) {
	estadoAtual = QOUTRO;

	if(estadoAtual == QOUTRO){
	    sp_fluxo_QOUTRO();
	}
    }
    
//    //######################################################################################################
    private void sp_fluxo_operador_relacional(char tmpChar, char c) {
	switch (estadoAtual) {
	    case 5: 
	    case 6: 
	    case 7: 
	    case 8: 
		switch(c){
		    case '=': estadoAtual = 16; sp_memoriza_fim_termo();break;
		    default: estadoAtual = QOUTRO; 
		}
	    break;
	    case 16:
		estadoAtual = QOUTRO; 
		nomeTermo = "(op_rel)";
		break;	    
	}
	
	if(estadoAtual == QOUTRO){
	    sp_fluxo_QOUTRO();
	}
	
    }
//######################################################################################################
    private void sp_fluxo_operador_logico(char tmpChar, char c) {
	switch(estadoAtual){
	    case 6:
		estadoAtual = QOUTRO; 
		switch(c){
		    case '=' : 
			this.nomeTermo="(op_rel)";
			sp_memoriza_fim_termo(); 
			break;			
		    //se for qualquer outro char ja vai tar certo o nome
		}
	    break;
	    case 13:
	    case 14:
		estadoAtual = QOUTRO;
	    break;
	}	
	
	if(estadoAtual == QOUTRO){
	    sp_fluxo_QOUTRO();
	}	
    }

//       //###################################################################################################### 
    private void sp_fluxo_operador_aritmetico(char tmpChar, char c) {
	
	estadoAtual = QOUTRO;
	
	if(estadoAtual == QOUTRO){
	    sp_fluxo_QOUTRO();
	}	
    }
//    //######################################################################################################


    private void sp_fluxo_QOUTRO() {
	fitaDeEntrada.sf_CursorVoltar();
	
	if(flagVoltaOutraVez == true){
	    fitaDeEntrada.sf_CursorVoltar();
	    flagVoltaOutraVez = false;
	}
	
	estadoAtual = 0;
	this.contadorTermos++;

	boolean flagNomeTermo = false;
	
	char tmpChar;
	for (int i = termoInicio; i <= this.termoFim; i++) {
	    
	    tmpChar = fitaDeEntrada.sf_get_char(i);	
	    if(tmpChar != ' ' && tmpChar != '\n' && tmpChar != '\t'){
		if(i==termoInicio){System.out.print(this.contadorTermos+".  "); }
		System.out.print(fitaDeEntrada.sf_get_char(i));
		flagNomeTermo = true;
	    }
	}
	
	if(this.estadoAtualReservada == 3){
	    nomeTermo = nomeTermoReservada;
	    estadoAtualReservada = 0;
	}
	if(flagNomeTermo == true){
	    System.out.println(" "+this.nomeTermo);
	}
    }    
}

package proj_comp_analise_lexica.outros.Automatos;
public class Identificador implements Automatos{
    
    public final int QOUTRO = -3;
    public final int QFINAL = -2;
    public int estadoQoutro = -1;
    public int estadoAtual = 0;    
    public final int Q0 = 0;
    public final int Q1 = 1;
    public final int Q2 = 2;


    public String nomeTermo = "";
//###################################################################
    @Override
    public int sp_muda_estado(Character c) {
	boolean ehLetra = Character.isLetter(c)? true: false ;
	boolean ehDigito = Character.isDigit(c)? true : false ;
	
	switch(estadoAtual){
	    case Q0:
		if(ehLetra == true){
		    estadoAtual = Q1;
		}else{
		    estadoQoutro = QOUTRO;
		}
	    case Q1:
		if(ehLetra == true){
		    estadoAtual = Q2;
		}else if(ehDigito == true){
		    estadoAtual = Q2;
		}else{
		    estadoQoutro = QOUTRO;
		}
	}
	return estadoAtual;
    }
//###################################################################
    @Override
    public String sf_get_nome_termo() {
	return nomeTermo;
    }
//###################################################################
    @Override
    public void sp_limpar_estado_atual() {
	estadoAtual = 0;
	estadoQoutro = -1;
	nomeTermo = "";
    }
    
    
}

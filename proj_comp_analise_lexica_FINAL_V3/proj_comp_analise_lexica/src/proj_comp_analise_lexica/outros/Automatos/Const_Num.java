package proj_comp_analise_lexica.outros.Automatos;
public class Const_Num implements Automatos{   
    
    public final int QOUTRO = -3;
    public final int QFINAL = -2;    
    public int estadoQoutro = -1;
    public int estadoAtual = 0;
    public final int Q0 = 0;
    public final int Q1 = 1;
    public final int Q2 = 2;
    public final int Q3 = 3;
    
    
    public String nomeTermo = "";
//###################################################################
    @Override
    public int sp_muda_estado(Character c) {
	int ehDigito = Character.isDigit(c)? 1 : 0;
	int ehPonto = c.compareTo('.')==0? 1: 0;
	switch(estadoAtual){
	    case Q0: 
		switch(ehDigito){ 
		    case 1: estadoAtual = Q1; break;
		    default: estadoQoutro = QOUTRO;
		}
	    break;
	    case Q1: 
		switch(ehDigito){ 
		    case 1: estadoAtual = Q1; break;
		    case 0: 
			switch(ehPonto){
			case 1: estadoAtual = Q2;break;
			default: estadoQoutro = QOUTRO;
			}		    
		}
	    break;
	    case Q2:
		switch(ehPonto){
		    case 1: estadoAtual = Q3;break;
		    default: estadoQoutro = QOUTRO;
		}
	    break;
	    case Q3: 
		switch(ehDigito){ 
		    case 1: estadoAtual = Q3; break;
		    case 0: 
			switch(ehPonto){
			default: estadoQoutro = QOUTRO;
			}		    
		}
	    break;	    
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

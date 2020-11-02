package proj_comp_analise_lexica.outros.Automatos;

public class Char_Desconsiderado implements Automatos{
    
    public final int QOUTRO = -3;
    public final int QFINAL = -2;    
    public int estadoQoutro = -1;
    public int estadoAtual = 0;
    public final int Q0 = 0;
    private String nomeTermo = "";
    
    //###################################################################
    @Override
    public int sp_muda_estado(Character c) {
	switch(c){
	    case '\n': estadoAtual = Q0; break;
	    case '\t': estadoAtual = Q0; break;
	    case ' ' : estadoAtual = Q0; break;
	    default: estadoQoutro = QOUTRO; break;
	}
	if(estadoAtual == Q0){estadoAtual = QFINAL;}
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
    //################################################################### 

//    @Override
//    public boolean sf_verifica_fim_termo() {
//	if(estadoAtual == QFINAL && estadoQoutro == QOUTRO){}
//    }
    
}

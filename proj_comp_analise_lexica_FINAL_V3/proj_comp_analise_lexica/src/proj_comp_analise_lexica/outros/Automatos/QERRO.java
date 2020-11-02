package proj_comp_analise_lexica.outros.Automatos;
public class QERRO implements Automatos{
    public final int QERRO = -4;
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
    public int sp_muda_estado(Character c){
	switch(estadoAtual){
	    case Q0:
		switch(c){
		    default: estadoAtual = QERRO;
			nomeTermo = ("(token não reconhecido)");
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

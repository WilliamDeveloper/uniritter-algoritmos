package proj_comp_analise_lexica.outros.Automatos;
public class Op_Log implements Automatos{

    public final int QOUTRO = -3;
    public final int QFINAL = -2;
    public int estadoQoutro = -1;
    public int estadoAtual = 0;
    public final int Q0 = 0;
    public final int Q1 = 1;
    public final int Q2 = 2;
    public final int Q3 = 3;
    public final int Q4 = 4;

    public String nomeTermo = "";
    //###################################################################
    @Override
    public int sp_muda_estado(Character c) {
	switch(estadoAtual){
	    case Q0:
		switch(c){
		    case '&': estadoAtual = Q3;this.nomeTermo="(op_log)";break;
		    case '|': estadoAtual = Q4;this.nomeTermo="(op_log)";break;
		    case '!': estadoAtual = Q1;this.nomeTermo="(op_log)";break;
		    default: estadoQoutro = QOUTRO;
		}
	    break;
	    case Q1:
		switch(c){
		    case '=' : estadoAtual = Q2;this.nomeTermo="(op_rel)";break;
		    default: estadoQoutro = QOUTRO;
		}
	    case Q2: estadoQoutro = QOUTRO;
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

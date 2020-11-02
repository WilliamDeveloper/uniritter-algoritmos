package proj_comp_analise_lexica.outros;
import proj_comp_analise_lexica.outros.Automatos.Const_Num;
import proj_comp_analise_lexica.outros.Automatos.Identificador;
import proj_comp_analise_lexica.outros.Automatos.Op_Rel;
import proj_comp_analise_lexica.outros.Automatos.Op_Arit;
import proj_comp_analise_lexica.outros.Automatos.PalavraReservadaIF;
import proj_comp_analise_lexica.outros.Automatos.Delimitador;
import proj_comp_analise_lexica.outros.Automatos.Op_Log;
import proj_comp_analise_lexica.outros.Automatos.QERRO;
import proj_comp_analise_lexica.outros.Automatos.Char_Desconsiderado;
import proj_comp_analise_lexica.outros.Automatos.Op_Atr;
public class RegrasDeTrocaDeEstado {
    Char_Desconsiderado v_desconsiderado ;
    Const_Num v_const_num;
    Delimitador v_delim;
    Identificador v_identificador;
    Op_Arit v_op_arit;
    Op_Atr v_op_atr;
    Op_Log v_op_log;
    Op_Rel v_op_rel;
    PalavraReservadaIF v_reservada_if;
    QERRO v_qerro;
    

    public RegrasDeTrocaDeEstado() {
	v_desconsiderado = new Char_Desconsiderado();
	v_const_num = new Const_Num();
	v_delim = new Delimitador();
	v_identificador = new Identificador();
	v_op_arit = new Op_Arit();
	v_op_atr = new Op_Atr();
	v_op_log = new Op_Log();
	v_op_rel =  new Op_Rel();
	v_reservada_if = new PalavraReservadaIF();
	v_qerro = new QERRO();
    }    
    
    public void sp_valida_troca_estado(Character c){
//	switch(estadoAtual){
//	    case Q0: break;
//	}
    }
    
    
    public int sp_trocador_de_estado(Character c) {
		
	if(v_desconsiderado.sp_muda_estado(c) == v_desconsiderado.QFINAL){
	    v_desconsiderado.sf_get_nome_termo();
	    sp_limpar_todos_estados();
	}else if(v_const_num.sp_muda_estado(c) == v_const_num.QFINAL){
	    v_const_num.sf_get_nome_termo();
	    sp_limpar_todos_estados();
	}else if(v_delim.sp_muda_estado(c) == v_delim.QFINAL){
	    v_delim.sf_get_nome_termo();
	    sp_limpar_todos_estados();
	}else if(v_identificador.sp_muda_estado(c) == v_identificador.QFINAL){
	    v_identificador.sf_get_nome_termo();
	    sp_limpar_todos_estados();
	}else if(v_op_arit.sp_muda_estado(c) == v_op_arit.QFINAL){
	    v_op_arit.sf_get_nome_termo();
	    sp_limpar_todos_estados();
	}else if(v_op_atr.sp_muda_estado(c) == v_op_atr.QFINAL){
	    v_op_atr.sf_get_nome_termo();
	    sp_limpar_todos_estados();
	}else if(v_op_log.sp_muda_estado(c) == v_op_log.QFINAL){
	    v_op_log.sf_get_nome_termo();
	    sp_limpar_todos_estados();
	}else if(v_op_rel.sp_muda_estado(c) == v_op_rel.QFINAL){
	    v_op_rel.sf_get_nome_termo();
	    sp_limpar_todos_estados();
	}else if(v_reservada_if.sp_muda_estado(c) == v_reservada_if.QFINAL){
	    v_reservada_if.sf_get_nome_termo();
	    sp_limpar_todos_estados();
	}else if(v_qerro.sp_muda_estado(c) == v_qerro.QFINAL){
	    v_qerro.sf_get_nome_termo();
	    sp_limpar_todos_estados();
	}
	
	
	return 0;//desenvolver algo
    }
    //#######################################################################
    public void sp_char_desconsiderado(Character c){	
	//return v_desconsiderado.sp_muda_estado(c);
    }
    //#######################################################################
    public void sp_op_arit(Character c){ 	
    }
    //#######################################################################
    public void sp_op_log(Character c){ 
    }
    //#######################################################################
    public void sp_op_rel(Character c){ 	
    }
    //#######################################################################
    public void sp_op_atr(Character c){
    }
    //#######################################################################
    public void sp_delim(Character c){ 
    }    
    //#######################################################################
    public void sp_Constante_numerica(Character c){ 	
    }	    

    //#######################################################################
    public void sp_identificador(Character c){ 	
    }
    //#######################################################################
//    public void sp_reserv(){ }
    public void sp_reserv_if(Character c){	
    }

    public String sf_get_nome_termo() {
	return "";
    }

    public void sp_limpar_todos_estados(){
	v_desconsiderado.sp_limpar_estado_atual();
	v_const_num.sp_limpar_estado_atual();
	v_delim.sp_limpar_estado_atual();
	v_identificador.sp_limpar_estado_atual();
	v_op_arit.sp_limpar_estado_atual();
	v_op_atr.sp_limpar_estado_atual();
	v_op_log.sp_limpar_estado_atual();
	v_op_rel.sp_limpar_estado_atual();
	v_reservada_if.sp_limpar_estado_atual();
	v_qerro.sp_limpar_estado_atual();
    }
    
    
    
    
}

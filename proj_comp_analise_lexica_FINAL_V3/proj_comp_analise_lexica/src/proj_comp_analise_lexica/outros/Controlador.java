package proj_comp_analise_lexica.outros;

import proj_comp_analise_lexica.FitaDeEntrada;
import proj_comp_analise_lexica.outros.RegrasDeTrocaDeEstado;

public class Controlador {
    FitaDeEntrada fitaDeEntrada ;
    RegrasDeTrocaDeEstado regrasDeTrocaDeEstado;
    int termoInicio = -1;
    int termoFim = -1;

    public Controlador() {
	fitaDeEntrada = new FitaDeEntrada();
	regrasDeTrocaDeEstado = new RegrasDeTrocaDeEstado();
    }
    
//    public void sp_analise_lexica(){
//	for (int i = 0; i < fitaDeEntrada.sf_tamanhoDaFita(); i++) {
//	    Character c = fitaDeEntrada.sf_proximo();    
//	    regrasDeTrocaDeEstado.sp_trocador_de_estado(c);
//	    
//	    if(sf_valida_fim_token()){
//		sp_exibir_token_analisado();
//	    }
//	    
//	    sp_estadoQOUTRO();
//	    
//	}	
//    }

//    private void sp_estadoQOUTRO() {
//	fitaDeEntrada.sf_CursorVoltar();
//	regrasDeTrocaDeEstado.estadoDeDesvio = 0 ;
//	regrasDeTrocaDeEstado.estadoAtual = 0;
//    }
//    
//    public boolean sf_valida_fim_token(){
//	if(regrasDeTrocaDeEstado.estadoDeDesvio == regrasDeTrocaDeEstado.QOUTRO){
//	    if(regrasDeTrocaDeEstado.estadoAtual > regrasDeTrocaDeEstado.Q0){
//		return true;
//	    }
//	}
//	return false;
//    }
    
    public void sp_exibir_token_analisado(){	
	for (int i = termoInicio; i <= termoFim; i++) {	    
	    System.out.print(fitaDeEntrada.sf_get_char(i));    
	    if(i==termoFim){System.out.print(regrasDeTrocaDeEstado.sf_get_nome_termo());}
	}
	System.out.println();
	
    }


    
    
    
}

package proj_comp_analise_lexica;

import proj_comp_analise_lexica.model.TxtLoader;
import java.util.ArrayList;

public class FitaDeEntrada {
    public ArrayList<String> arrayListFitaEntrada;
    private int pos_atual_leitura = -1 ;
    
    public FitaDeEntrada() {	
	arrayListFitaEntrada = new TxtLoader().getArrayListCaractersFromTxt("src/proj_comp_analise_lexica/entrada.txt");
    }
    public boolean sf_CursorAvancar()    {
	if(pos_atual_leitura < arrayListFitaEntrada.size()){
	    this.pos_atual_leitura++;
	    return true;
	}
	return false;
    }
    
    public boolean sf_CursorVoltar(){
	if(pos_atual_leitura > 0){
	    this.pos_atual_leitura--; 
	    return true;
	}
	return false;
    }
    
    public char sf_primeiro(){
	if(sf_tamanhoDaFita() > 0){
	    this.pos_atual_leitura = 0;
	    return arrayListFitaEntrada.get(0).charAt(0);
	}return ' ';
    }
    
    public int sf_tamanhoDaFita(){
	return arrayListFitaEntrada.size();
    }
    
    public char sf_proximo(){
	if(pos_atual_leitura < sf_tamanhoDaFita()-1 && sf_tamanhoDaFita() > 0){
	    return arrayListFitaEntrada.get(++pos_atual_leitura).charAt(0);
	}return ' ';
    }
    
    public char sf_anterior(){
	if(pos_atual_leitura > 0){
	    return arrayListFitaEntrada.get(--pos_atual_leitura).charAt(0);
	}return ' ';	
    }

    public char sf_get_char(int i) {
	return arrayListFitaEntrada.get(i).charAt(0);
    }
    
    public int sf_get_pos_atual_fita(){
	return pos_atual_leitura;
    }
    
    public boolean sf_tem_proximo(){
	return (pos_atual_leitura< sf_tamanhoDaFita()-1)?true:false;
    }
    
}

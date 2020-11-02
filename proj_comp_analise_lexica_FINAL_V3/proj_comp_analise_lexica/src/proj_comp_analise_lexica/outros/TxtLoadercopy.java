package proj_comp_analise_lexica.outros;


import proj_comp_analise_lexica.*;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.ArrayList;

public class TxtLoadercopy {

    public ArrayList<String> getArrayListCaractersFromTxt(String caminhoDoArquivo){     
        ArrayList<String> listaDeCaracteresDoArquivo = new ArrayList<String>();
        try {
            BufferedReader in = new BufferedReader(
                    new InputStreamReader(
                            new FileInputStream(caminhoDoArquivo), "UTF-8"));
            String str;
            while (in.ready()) 
	    {
                str = in.readLine();
		for(int i = 0 ; i < str.length(); i++)
		{
		    listaDeCaracteresDoArquivo.add(String.valueOf(str.charAt(i)));
		}
            }
            in.close();
        } catch (IOException e) {
        }     
        return listaDeCaracteresDoArquivo;
    }
//####################################################################
    private void mostrarDados(ArrayList<String> listaDeLinhasDoArquivo){
        for (int i = 0; i < listaDeLinhasDoArquivo.size(); i++) {
            System.out.println("i : "+listaDeLinhasDoArquivo.get(i));
        }
    }
    public void lerTxt(){
        ArrayList<String> listaDeLinhasDoArquivo = getArrayListCaractersFromTxt("gravar.txt");
        mostrarDados(listaDeLinhasDoArquivo);
    }
    public void lerTodos(){
        mostrarDados(getArrayListCaractersFromTxt("txt_regras/delim.txt"));
        mostrarDados(getArrayListCaractersFromTxt("txt_regras/op_arit.txt"));
        mostrarDados(getArrayListCaractersFromTxt("txt_regras/op_atr.txt"));
        mostrarDados(getArrayListCaractersFromTxt("txt_regras/op_log.txt"));
        mostrarDados(getArrayListCaractersFromTxt("txt_regras/op_rel.txt"));
        mostrarDados(getArrayListCaractersFromTxt("txt_regras/reserv.txt"));
        mostrarDados(getArrayListCaractersFromTxt("douze.txt"));
        
    }
    public void txtSave(String str,String caminho){
        try {
            //BufferedWriter out = new BufferedWriter(new FileWriter(caminho));
            OutputStreamWriter out = 
                    new OutputStreamWriter(
                    new FileOutputStream(caminho),"UTF-8");				
            
            out.write(str);
            out.close();
        } catch (IOException e) {
        }
    }
    
    
}

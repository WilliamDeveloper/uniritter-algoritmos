
package br.com.config;

import main.Server;
import main.Worker;
import br.com.utils.StringsUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Semaphore;

public class VGlobal {
     
    public static int MAX_SIZE_NAME_THREAD_SERVER = 6;
    
    public static int QTD_ARQUIVOS = 0;
    public static int QTD_ALT_CADA_CLIENTE = 0;
    
    public static int QTD_THREAD_HTTP = 0;
    public static int QTD_REQUISICOES_HTTP = 0;
    
    public static int QTD_DIRETORIOS = 2;
    
    /*
    public static List<Integer> LISTA_ARQUIVOS_JEKYLL = Collections.synchronizedList(new ArrayList());
    public static List<Integer> LISTA_ARQUIVOS_HYDE = Collections.synchronizedList(new ArrayList());
    public static List<Server> LISTA_SERVERS = Collections.synchronizedList(new ArrayList());
    public static List<Worker> LISTA_WORKERS = Collections.synchronizedList(new ArrayList());
    */
    
    public static List<Integer> LISTA_ARQUIVOS_JEKYLL = new ArrayList();
    public static List<Integer> LISTA_ARQUIVOS_HYDE = new ArrayList();
    public static List<Server> LISTA_SERVERS = new ArrayList();
    public static List<Worker> LISTA_WORKERS = new ArrayList();
    
    public static Semaphore[] SEMA_SINC_COPY;
    
    public static void mostrarListaArquivos(){
        System.out.println("-------------------------------------------------\n...");
        System.out.println("DIR_JEKYLL\t Tamanho\t DIR_HYDE  \t Tamanho");
        for (int i = 0; i < VGlobal.QTD_ARQUIVOS; i++) {
            System.out.println(
                    VGlobal.getNomeArquivoFormatado(i) + "\t " + VGlobal.LISTA_ARQUIVOS_JEKYLL.get(i)
                    +"\t\t "+
                    VGlobal.getNomeArquivoFormatado(i) + "\t " + VGlobal.LISTA_ARQUIVOS_HYDE.get(i)
            );
        }
        System.out.println("...\n-------------------------------------------------");
    }
    
    public static String getNomeDiretorio(int index){
        if(index == Server.INDEX_JEKYLL){
            return "JEKYLL";
        }else{
            return "HYDE  ";
        }
    }
    
    public static String getNomeArquivoFormatado(int index){
        return "Arquivo"+StringsUtils.padLeft(""+index,(VGlobal.QTD_ARQUIVOS+"").length() , "0");
    }
    
    public static String getNomeThreadWorker(int str){
        String palavra = "Thread Worker ";
        int tamanho = (VGlobal.QTD_THREAD_HTTP+"").length()+MAX_SIZE_NAME_THREAD_SERVER;
        return palavra+StringsUtils.padLeft(""+str,tamanho, "0");
    }
    
    public static String getNomeThreadServer(String str){
        String palavra = "Thread Server ";
        int tamanho = (VGlobal.QTD_THREAD_HTTP+"").length()+MAX_SIZE_NAME_THREAD_SERVER;
        return palavra+StringsUtils.padRight(str,tamanho, " ");
    }
    
}


package br.com.config;

public class VGlobal {
    
    public static final int QTD_PROCESSOS = 3;
    public static final int CONST_QUANTA_10 = 10;
    
    public static final String NOME_DO_ARQUIVO_00 = "br/com/config/proc_0.dat";
    public static final String NOME_DO_ARQUIVO_01 = "br/com/config/proc_1.dat";
    public static final String NOME_DO_ARQUIVO_02 = "br/com/config/proc_2.dat";
    public static int[] LISTA_FILE00;
    public static int[] LISTA_FILE01;
    public static int[] LISTA_FILE02;
    
    public static void mostrarArquivosCarregados(){
        System.out.println("-------------------------------------------------");
        System.out.println("..........CONTEUDO ARQUIVO [proc_0.dat]..........");
        System.out.println("-------------------------------------------------");
        for (int i = 0; i < VGlobal.LISTA_FILE00.length; i++) {
            System.out.println(VGlobal.LISTA_FILE00[i]);
        }
        
        System.out.println("-------------------------------------------------");
        System.out.println("..........CONTEUDO ARQUIVO [proc_1.dat]..........");
        System.out.println("-------------------------------------------------");
        for (int i = 0; i < VGlobal.LISTA_FILE01.length; i++) {
            System.out.println(VGlobal.LISTA_FILE01[i]);
        }
        
        System.out.println("-------------------------------------------------");
        System.out.println("..........CONTEUDO ARQUIVO [proc_2.dat]..........");
        System.out.println("-------------------------------------------------");
        for (int i = 0; i < VGlobal.LISTA_FILE02.length; i++) {
            System.out.println(VGlobal.LISTA_FILE02[i]);
        }
        System.out.println("-------------------------------------------------");
    }
}

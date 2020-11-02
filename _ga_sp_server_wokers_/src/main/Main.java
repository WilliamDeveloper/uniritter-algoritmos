
package main;

import br.com.config.VGlobal;
import br.com.utils.RandomUtil;
import java.util.concurrent.Semaphore;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

public class Main {

    public static void main(String[] args) {

        System.out.println("CONFIGURAÇÕES DE ENTRADA");
        System.out.println("-------------------------------------------------");
        
        String vStrQtdArquivos = "Qual é a Quantidade de Arquivos?";
        VGlobal.QTD_ARQUIVOS = Integer.valueOf(JOptionPane.showInputDialog(vStrQtdArquivos));
        System.out.println(vStrQtdArquivos + " : " + VGlobal.QTD_ARQUIVOS);
        VGlobal.SEMA_SINC_COPY = new Semaphore[VGlobal.QTD_ARQUIVOS];
        
        String vStrAltCadaCliente = "Qual é o Número de alterações feitas por cada cliente?";
        VGlobal.QTD_ALT_CADA_CLIENTE = Integer.valueOf(JOptionPane.showInputDialog(vStrAltCadaCliente));
        System.out.println(vStrAltCadaCliente + " : " + VGlobal.QTD_ALT_CADA_CLIENTE);
        
        String vStrQtdThreadHttp = "Qual é a Quantidade de Threads HTTP?";
        VGlobal.QTD_THREAD_HTTP = Integer.valueOf(JOptionPane.showInputDialog(vStrQtdThreadHttp));
        System.out.println(vStrQtdThreadHttp + " : " + VGlobal.QTD_THREAD_HTTP );
        
        String vStrQtdRequisicoesHttp = "Qual é o Número de requisições simuladas por cada thread HTTP?";
        VGlobal.QTD_REQUISICOES_HTTP = Integer.valueOf(JOptionPane.showInputDialog(vStrQtdRequisicoesHttp));
        System.out.println(vStrQtdRequisicoesHttp + " : " + VGlobal.QTD_REQUISICOES_HTTP);
        
        System.out.println("-------------------------------------------------\n...");
        System.out.println("Carregando Lista de arquivos dos diretórios JEKYLL e HYDE ...\n...");
                
        for (int i = 0; i < VGlobal.QTD_ARQUIVOS; i++) {
            int valor = RandomUtil.randomRange(500, 2000);
            // int valor = 1;//TESTE
            VGlobal.LISTA_ARQUIVOS_JEKYLL.add(i, valor);
            VGlobal.LISTA_ARQUIVOS_HYDE.add(i, valor);
            
            VGlobal.SEMA_SINC_COPY[i] = new Semaphore(1,true);
   
        }
        
        VGlobal.mostrarListaArquivos();
                        
        System.out.println("....................INICIANDO....................");
        System.out.println("-------------------------------------------------");
        VGlobal.LISTA_SERVERS.add(Server.INDEX_JEKYLL, new Server("JEKYLL",Server.INDEX_JEKYLL));
        VGlobal.LISTA_SERVERS.get(Server.INDEX_JEKYLL).setLISTA_ARQUIVOS(VGlobal.LISTA_ARQUIVOS_JEKYLL);
        VGlobal.LISTA_SERVERS.add(Server.INDEX_HYDE, new Server("HYDE",Server.INDEX_HYDE));
        VGlobal.LISTA_SERVERS.get(Server.INDEX_HYDE).setLISTA_ARQUIVOS(VGlobal.LISTA_ARQUIVOS_HYDE);
        
        System.out.println("... " + VGlobal.LISTA_SERVERS.get(Server.INDEX_JEKYLL).getNomeThread()+ " Iniciando...");         
        VGlobal.LISTA_SERVERS.get(Server.INDEX_JEKYLL).start();       
         
        System.out.println("... " + VGlobal.LISTA_SERVERS.get(Server.INDEX_HYDE).getNomeThread()+ " Iniciando...");        
        VGlobal.LISTA_SERVERS.get(Server.INDEX_HYDE).start();   
                
        for (int i = 0; i < VGlobal.QTD_THREAD_HTTP; i++) {             
             VGlobal.LISTA_WORKERS.add(i, new Worker(i));
             VGlobal.LISTA_WORKERS.get(i).start();
        }   

        //---------------------------------------------------------------------
        //Esperando as Threads workers terminar
        for (int i = 0; i < VGlobal.QTD_THREAD_HTTP; i++) {
            try {
                VGlobal.LISTA_WORKERS.get(i).join();
            } catch (InterruptedException ex) {
                Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
            }
        }        
        //Esperando as threads servers terminarem
        for (int i = 0; i < VGlobal.QTD_DIRETORIOS; i++) {
            try {
                VGlobal.LISTA_SERVERS.get(i).join();
            } catch (InterruptedException ex) {
                Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
        System.out.println("-------------------------------------------------");
        System.out.println("..............LISTA ARQUIVOS.....................");
        
        VGlobal.mostrarListaArquivos();             
        
        System.out.println("...............RESULTADO.........................");
        System.out.println("-------------------------------------------------");
        System.out.println("Tempo que a Thread ficou bloqueada esperando recursos compartilhados:");
                
        for (int i = 0; i < VGlobal.QTD_DIRETORIOS; i++) {
            System.out.println("- "+VGlobal.LISTA_SERVERS.get(i).getNomeThread()+" : "+VGlobal.LISTA_SERVERS.get(i).getTempoThreadBloqueada()+ " milliseconds");    
        }
        for (int i = 0; i < VGlobal.QTD_THREAD_HTTP; i++) {
            System.out.println("- "+VGlobal.LISTA_WORKERS.get(i).getNomeThread()+" : "+VGlobal.LISTA_WORKERS.get(i).getTempoThreadBloqueada()+ " milliseconds");    
        }
       
    }    
}

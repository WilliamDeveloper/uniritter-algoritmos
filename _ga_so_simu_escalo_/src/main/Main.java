package main;


import br.com.config.VGlobal;
import br.com.escalonador.Escalonador;
import br.com.escalonador.Processo;
import java.io.IOException;
import java.util.LinkedList;
import java.util.Queue;


public class Main {
    


    public static void main(String[] args) throws IOException, InterruptedException, Exception {
        
        System.out.println("-------------------------------------------------"); 
        System.out.println("..................INICIANDO......................");
        System.out.println("-------------------------------------------------");

        
        Queue fila_processos = new LinkedList();
        
        for (int i = 0; i < VGlobal.QTD_PROCESSOS; i++) {
                fila_processos.add(new Processo(i));                
        }
        
        System.out.println("-------------------------------------------------"); 
        
        Escalonador escalonador = new Escalonador(fila_processos);
        
        escalonador.start();
        
        escalonador.join();  
        
        System.out.println("-------------------------------------------------"); 
        System.out.println("..................   FINAL ......................");
        System.out.println("-------------------------------------------------");
        
        escalonador.mostrar_status_escalonamento();


    }
}

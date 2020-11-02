
package main;

import br.com.config.VGlobal;
import br.com.utils.RandomUtil;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Worker extends Thread {
        
    private String nomeThread;
    private long  tempoThreadBloqueada;

    public Worker(int nome) {
        this.nomeThread = VGlobal.getNomeThreadWorker(nome);
        this.tempoThreadBloqueada = 0;
    }

    @Override
    public void run() {
        System.out.println(this.nomeThread + " Iniciada!!!");
        
        int maxIndiceArquivos = VGlobal.QTD_ARQUIVOS - 1;
        int maxIndiceDiretorios = VGlobal.QTD_DIRETORIOS - 1;
        int indexSorteadoDiretorio = 0;
        int indexSorteadoArquivo = 0;
       
        for (int i = 0; i < VGlobal.QTD_REQUISICOES_HTTP; i++) {
            indexSorteadoDiretorio = RandomUtil.randomRange(0, maxIndiceDiretorios);  
            
            indexSorteadoArquivo = RandomUtil.randomRange(0, maxIndiceArquivos);
            
            this.lerArquivo(indexSorteadoDiretorio, indexSorteadoArquivo);
            
        }        
    }
    
    public void lerArquivo(int indexDiretorio, int indexArquivo){ 
        String str = " [STATUS:     LEU     ]";
        //long tempoSleep = 1;//TESTE
        long tempoSleep = VGlobal.LISTA_SERVERS
                .get(indexDiretorio).getLISTA_ARQUIVOS().get(indexArquivo);
        
        try {
            VGlobal.LISTA_SERVERS.get(indexDiretorio)
                    .getLISTA_LOCK_ARQUIVOS()[indexArquivo].lockRead();
            
            System.out.println(
                this.nomeThread
                + str
                + " ARQ: " + VGlobal.getNomeArquivoFormatado(indexArquivo) 
                + " [DE  : "+VGlobal.getNomeDiretorio(indexDiretorio) +"]"
                + " _____TAM: " + VGlobal.LISTA_SERVERS.get(indexDiretorio)
                        .getLISTA_ARQUIVOS().get(indexArquivo)
            );    
            
            this.tempoThreadBloqueada += tempoSleep;
            try {
                Thread.sleep(tempoSleep);
            } catch (InterruptedException ex) {
                Logger.getLogger(Worker.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (InterruptedException ex) {
            Logger.getLogger(Worker.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            VGlobal.LISTA_SERVERS.get(indexDiretorio)
                    .getLISTA_LOCK_ARQUIVOS()[indexArquivo].unlockRead();
        } 
    }


    public long getTempoThreadBloqueada() {
        return this.tempoThreadBloqueada;
    }
    
    public void setTempoThreadBloqueada(long vTempoThreadBloqueada) {
        this.tempoThreadBloqueada = vTempoThreadBloqueada;
    }
    
    public String getNomeThread(){
        return this.nomeThread;
    }    
}

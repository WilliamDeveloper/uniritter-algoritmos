package main;

import br.com.config.VGlobal;
import br.com.utils.RandomUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Server extends Thread {

    public static int INDEX_JEKYLL = 0;
    public static int INDEX_HYDE = 1;

//    private List<Integer> LISTA_ARQUIVOS = Collections.synchronizedList(new ArrayList());
    private List<Integer> LISTA_ARQUIVOS = new ArrayList();

    private String nomeThread;
    private long tempoThreadBloqueada;
    private int diretorioDeAtuacaoDaThread;
    public ReadWriteLock1[] LISTA_LOCK_ARQUIVOS;

    public Server(String nome, int diretorio) {
        this.nomeThread = VGlobal.getNomeThreadServer(nome);
        this.tempoThreadBloqueada = 0;
        this.diretorioDeAtuacaoDaThread = diretorio;

        this.LISTA_LOCK_ARQUIVOS = new ReadWriteLock1[VGlobal.QTD_ARQUIVOS];

        for (int i = 0; i < VGlobal.QTD_ARQUIVOS; i++) {
            this.LISTA_LOCK_ARQUIVOS[i] = new ReadWriteLock1();
        }
    }

    @Override
    public void run() {
        System.out.println(this.nomeThread + " Iniciada!!!");

        int maxIndiceArquivos = VGlobal.QTD_ARQUIVOS - 1;
        int maxIndiceDiretorios = VGlobal.QTD_DIRETORIOS - 1;
        int indexDiretorioOrigem = 0;
        int indexSorteadoArquivo = 0;
        
        for (int i = 0; i < VGlobal.QTD_ALT_CADA_CLIENTE; i++) {

            indexDiretorioOrigem = this.diretorioDeAtuacaoDaThread;

            indexSorteadoArquivo = RandomUtil.randomRange(0, maxIndiceArquivos);

            try {
                VGlobal.SEMA_SINC_COPY[indexSorteadoArquivo].acquire();
            } catch (InterruptedException ex) {
                Logger.getLogger(Server.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                this.do_simularModificacao(indexDiretorioOrigem, indexSorteadoArquivo);
                this.do_SincCopiaOrigemParaDestino(indexDiretorioOrigem, indexSorteadoArquivo);
                VGlobal.SEMA_SINC_COPY[indexSorteadoArquivo].release();
            }
        }
    }

    public void do_simularModificacao( int indexDiretorioOrigem, int indexArquivo) {
        int indexDiretorioDestino = (indexDiretorioOrigem + 1) % VGlobal.QTD_DIRETORIOS;
        int tamanhoAtualizadoArquivo = RandomUtil.randomRange(500, 2000);
        
        try {
            //garantindo que ninguem vai ler destino ateh Sincronizar
            VGlobal.LISTA_SERVERS.get(indexDiretorioDestino)
                    .LISTA_LOCK_ARQUIVOS[indexArquivo].lockWrite();
            
            //--SIMULAR ALTERACAO CONTEUDO DA ORIGEM
            VGlobal.LISTA_SERVERS.get(indexDiretorioOrigem)
                    .LISTA_LOCK_ARQUIVOS[indexArquivo].lockWrite();
            
            VGlobal.LISTA_SERVERS.get(indexDiretorioOrigem)
                    .getLISTA_ARQUIVOS()
                    .set(indexArquivo, tamanhoAtualizadoArquivo);       
           
        } catch (InterruptedException ex) {
            Logger.getLogger(Server.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            VGlobal.LISTA_SERVERS.get(indexDiretorioOrigem)
                    .LISTA_LOCK_ARQUIVOS[indexArquivo].unlockWrite();
        }
    }

    public void do_SincCopiaOrigemParaDestino( int indexDiretorioOrigem, int indexArquivo) {
        String str = " [STATUS: MODIFICADO  ]";
        String str_r = " [STATUS:    COPY_R   ]";
        String str_w = " [STATUS:    COPY_W   ]";        
        int indexDiretorioDestino = (indexDiretorioOrigem + 1) % VGlobal.QTD_DIRETORIOS;
        
        int tamanhoAtualizadoArquivo = VGlobal.LISTA_SERVERS
                .get(indexDiretorioOrigem).getLISTA_ARQUIVOS().get(indexArquivo);
        
        try {
            //lockWrite do destino ja iniciado em do_simularModificacao            
            
             VGlobal.LISTA_SERVERS.get(indexDiretorioOrigem)
                    .LISTA_LOCK_ARQUIVOS[indexArquivo].lockRead();
            
            System.out.println(
                    this.nomeThread
                    + str
                    + " ARQ: " + VGlobal.getNomeArquivoFormatado(indexArquivo)
                    + " [DE  : " + VGlobal.getNomeDiretorio(indexDiretorioOrigem) + "]"
                    + " _____TAM: " + tamanhoAtualizadoArquivo
            );
            
            System.out.println(
                this.nomeThread
                + str_r
                + " ARQ: " + VGlobal.getNomeArquivoFormatado(indexArquivo)
                + " [DE  : " + VGlobal.getNomeDiretorio(indexDiretorioOrigem) + "]"
                + " _____TAM: " + tamanhoAtualizadoArquivo
            );
            
            VGlobal.LISTA_SERVERS.get(indexDiretorioDestino)
                    .getLISTA_ARQUIVOS()
                    .set(indexArquivo, tamanhoAtualizadoArquivo);
            
            tamanhoAtualizadoArquivo = VGlobal.LISTA_SERVERS
                    .get(indexDiretorioDestino)
                    .getLISTA_ARQUIVOS().get(indexArquivo);
                        
            System.out.println(
                    this.nomeThread
                    + str_w
                    + " ARQ: " + VGlobal.getNomeArquivoFormatado(indexArquivo)
                    + " [PARA: " + VGlobal.getNomeDiretorio(indexDiretorioDestino) + "]"
                    + " NOVO_TAM: " + tamanhoAtualizadoArquivo);

            this.tempoThreadBloqueada += tamanhoAtualizadoArquivo;
            Thread.sleep((long) tamanhoAtualizadoArquivo);
        } catch (InterruptedException ex) {
            Logger.getLogger(Server.class.getName()).log(Level.SEVERE, null, ex);
        } finally {

            VGlobal.LISTA_SERVERS.get(indexDiretorioOrigem)
                    .LISTA_LOCK_ARQUIVOS[indexArquivo].unlockRead();

            VGlobal.LISTA_SERVERS.get(indexDiretorioDestino)
                    .LISTA_LOCK_ARQUIVOS[indexArquivo].unlockWrite();

        }
    }

    public List<Integer> getLISTA_ARQUIVOS() {
        return LISTA_ARQUIVOS;
    }

    public void setLISTA_ARQUIVOS(List<Integer> LISTA_ARQUIVOS) {
        this.LISTA_ARQUIVOS = LISTA_ARQUIVOS;
    }

    public long getTempoThreadBloqueada() {
        return this.tempoThreadBloqueada;
    }

    public void setTempoThreadBloqueada(long vTempoThreadBloqueada) {
        this.tempoThreadBloqueada = vTempoThreadBloqueada;
    }

    public String getNomeThread() {
        return this.nomeThread;
    }

    public ReadWriteLock1[] getLISTA_LOCK_ARQUIVOS() {
        return LISTA_LOCK_ARQUIVOS;
    }

    public void setLISTA_LOCK_ARQUIVOS(ReadWriteLock1[] LISTA_LOCK_ARQUIVOS) {
        this.LISTA_LOCK_ARQUIVOS = LISTA_LOCK_ARQUIVOS;
    }

}

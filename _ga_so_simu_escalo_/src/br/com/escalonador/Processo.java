package br.com.escalonador;

import br.com.config.VGlobal;
import br.com.util.file.LeitorArquivo;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Queue;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Processo {

    public static final int STATUS_READY = 0;
    public static final int STATUS_BLOCKED = 1;
    public static final int STATUS_FINISHED = 2;

    private int max_cpu_bursts;
    private int max_io_burst;
    public int[] lista_cpu_bursts; //tempo executando operacoes na CPU
    public int[] lista_io_bursts; //tempo esperando requisicao I/O
    public int index_cpu_burst;
    public int index_io_burst;

    public InfoEscalonamento info;
    public String nomeProcesso;
    public int pid;
    public int status;

    public int tempo_antes_acordar;
    public int tempo_usado_na_cpu;
    public int bonus;
    public int quanta;
    public int quantaSobrouCredito;
    
    @Override
    public String toString(){
        return ""+
                "\nmax_cpu_bursts: "+max_cpu_bursts+
                "\nmax_io_burst: "+max_io_burst+
                "\nindex_cpu_burst: "+index_cpu_burst+
                "\nnomeProcesso: "+nomeProcesso+
                "\npid:"+pid+
                "\nstatus: "+status+
                "\ntempo_antes_acordar: "+tempo_antes_acordar+
                "\ntempo_usado_na_cpu: "+tempo_usado_na_cpu+
                "\nbonus: "+bonus+
                "\nquanta: "+quanta+
                "\nquantaSobrouCredito: "+quantaSobrouCredito+
                "\ninfo.n_quanta_finished: "+info.n_quanta_finished+
                "\ninfo.tempo_atual_bloqueado: "+info.tempo_atual_bloqueado+
                "\ninfo.tempo_do_ultimo_bloqueio: "+info.tempo_do_ultimo_bloqueio+
                
                "\ninfo.tempo_total_bloqueado: "+info.tempo_total_bloqueado+
                "\ninfo.tempo_total_esperando: "+info.tempo_total_esperando+
                "\ninfo.tempo_total_executando_na_cpu: "+info.tempo_total_executando_na_cpu+
                "\ninfo.tempo_ultimo_io_burst: "+info.tempo_ultimo_io_burst+
                "\ninfo.tempo_ultimo_vez_na_cpu: "+info.tempo_ultimo_vez_na_cpu;
    }

    public Processo(int pid) throws Exception {
        this.pid = pid;
        this.nomeProcesso = "Proc" + pid;
        this.status = Processo.STATUS_READY;
        this.max_cpu_bursts = 0;
        this.max_io_burst = 0;
        this.index_cpu_burst = 0;
        this.index_io_burst = 0;

        this.tempo_antes_acordar = 0;
        this.tempo_usado_na_cpu = 0;

        this.bonus = 0;
        this.quanta = 0;
        this.quantaSobrouCredito = 0;
        
        this.info = new InfoEscalonamento();
        this.carregarBurst();
        this.mostrarListas();

    }

    private void carregarBurst() throws Exception {
        int[] arquivo = LeitorArquivo.getInstance()
                .getLinhasInt("br/com/config/proc_" + this.pid + ".dat");
        ArrayList<Integer> impar = new ArrayList();
        ArrayList<Integer> par = new ArrayList();
        int numero_burst = arquivo[0];

        for (int i = 1; i < arquivo.length; i++) {
            //tirando a primeira linha o indice zero comeca em 1              
            if (((i - 1) % 2) == 0) {
                par.add(arquivo[i]);
            } else {
                impar.add(arquivo[i]);
            }
        }
        
        if ((2 * numero_burst - 1) != (par.size() + impar.size())) {
            System.out.println(
                    "O cabeçalho do arquivo "
                    + "proc_" + this.pid + ".dat nao esta correto"
            );
            throw new Exception(
                    "O cabeçalho do arquivo "
                    + "proc_" + this.pid 
                    + ".dat nao esta correto");
        }

        this.lista_cpu_bursts = new int[par.size()];
        this.lista_io_bursts = new int[impar.size()];

        for (int i = 0; i < par.size(); i++) {
            this.lista_cpu_bursts[i] = par.get(i);
        }

        for (int i = 0; i < impar.size(); i++) {
            this.lista_io_bursts[i] = impar.get(i);
        }

        if (impar.size() != par.size() - 1) {
            System.out.println(
                    "O arquivo "
                     +"proc_" + this.pid + ".dat esta errado abortando."
            );
            throw new Exception(
                    "O arquivo "
                     +"proc_" + this.pid 
                     + ".dat esta errado abortando.");
            
        }
        
        this.max_cpu_bursts = par.size();
        this.max_io_burst = impar.size();
        
        //if(this.max_cpu_bursts < 10){  throw new Exception(this.nomeProcesso+" minino de CPU burst deve ser 10");  }
        
        System.out.println("-----------------------------------------------");
    }

    public int excecuta(int quanta_timeSlice) {//time slice= fatia de tempo
        int quantaAtual = (quanta_timeSlice + this.bonus + this.quantaSobrouCredito);
        
        int cpu_burst_restante = this.lista_cpu_bursts[this.index_cpu_burst];
        
        int tempo_usado_na_cpu = Integer.min(
                cpu_burst_restante,
                quantaAtual
        );
        
        if( cpu_burst_restante < quantaAtual){
            this.quantaSobrouCredito = (quantaAtual - cpu_burst_restante);
        }else{
            this.quantaSobrouCredito = 0;
        }

        System.out.println(
                this.nomeProcesso
                + " ganhou a CPU."
        );
        
        System.out.println(
                this.nomeProcesso
                + " ficará na CPU por "
                + tempo_usado_na_cpu + "ms"
        );

        try {
            Thread.sleep((long) tempo_usado_na_cpu);
        } catch (InterruptedException ex) {
            Logger.getLogger(Processo.class.getName()).log(Level.SEVERE, null, ex);
        }        

        this.lista_cpu_bursts[this.index_cpu_burst] -= tempo_usado_na_cpu;
        this.tempo_usado_na_cpu = tempo_usado_na_cpu;
        
        if (this.lista_cpu_bursts[index_cpu_burst] <= 0) {
            this.index_cpu_burst++;

            if (this.index_cpu_burst == this.max_cpu_bursts) {
                this.status = Processo.STATUS_FINISHED;
                return 0;
            } else {
                this.status = Processo.STATUS_BLOCKED;
                this.tempo_antes_acordar = this.lista_io_bursts[this.index_io_burst];
                this.info.tempo_ultimo_io_burst = this.lista_io_bursts[this.index_io_burst];               
                
                if(this.quantaSobrouCredito > 0){
                    //System.out.println("\n###############\n"); //teste
                    this.BonusUp();
                }
                this.index_io_burst++;
                return -1;
            }
        }        
        return tempo_usado_na_cpu;
    }

    public int BonusDown() {
        if (this.bonus > -5) {
            this.bonus--;
        }
        return this.bonus;
    }

    public int BonusUp() {
        if (this.bonus < 5) {
            this.bonus++;
        }
        return this.bonus;
    }

    private void mostrarListas() {
        System.out.println("Lista de CPU BURST carrega do arquivo");
        for (int i = 0; i < this.lista_cpu_bursts.length; i++) {
            System.out.println("* " + this.lista_cpu_bursts[i]);
        }
        
        System.out.println("Lista de I/O BURST carrega do arquivo");
        for (int i = 0; i < this.lista_io_bursts.length; i++) {
            System.out.println("* " + this.lista_io_bursts[i]);
        }
    }

    public static void main(String[] args) throws Exception {
        //teste rapido da classe
        Queue<Processo> fila_processos = new LinkedList();
        for (int i = 0; i < VGlobal.QTD_PROCESSOS; i++) {
            Processo p = new Processo(i);
            fila_processos.add(p);
            p.total_cpuB_ioB();
            //System.out.println(fila_processos.poll().excecuta(10));
        }
        
    }
    
    public void total_cpuB_ioB(){
        int acum_cpub = 0;
        int acum_iob = 0;
        
        for (int cpu_burst : lista_cpu_bursts) {
            acum_cpub += cpu_burst;
        }
        for (int io_burst : lista_io_bursts) {
            acum_iob += io_burst;
        }
        System.out.println(
                "[acum_cpub]: "+acum_cpub
                +" [acum_iob]: "+acum_iob);
        
    }
}
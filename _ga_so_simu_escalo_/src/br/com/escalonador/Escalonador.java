package br.com.escalonador;

import br.com.config.VGlobal;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Queue;

public class Escalonador extends Thread {

    private final Queue<Processo> processos_fila_ready;
    private final Queue<Processo> processos_lista_blocked;
    private final Queue<Processo> processos_fila_finalizados;

    private int tempo_global_relogio;

    public Escalonador(Queue fila_processos) {
        this.processos_fila_ready = fila_processos;
        this.processos_lista_blocked = new LinkedList();
        this.processos_fila_finalizados = new LinkedList();
        this.tempo_global_relogio = 0;
    }

    public Processo getProcBloqComMenorTempo(Queue<Processo> listaBloqueados) {
        Processo procBloq = null;
        if (listaBloqueados.size() > 0) {
            procBloq = listaBloqueados.element();
        }
        for (Processo processo : listaBloqueados) {
            if (processo.tempo_antes_acordar < procBloq.tempo_antes_acordar) {
                procBloq = processo;
            }
        }
        return procBloq;
    }

    public Processo do_escalonarProcesso() {
        Processo processo = null;
        if (this.processos_fila_ready.size() != 0) {
            processo = this.processos_fila_ready.remove();
            processo.quanta = VGlobal.CONST_QUANTA_10;
        }
        return processo;
    }

    public void do_AtualizarTempoAntesAcordar_e_AcordarProcs(int tempo_quanta_timeSlice) {

        ArrayList<Processo> lista_para_acordar = new ArrayList();

        for (Processo processo : this.processos_lista_blocked) {
            if (processo.info.tempo_ultimo_vez_na_cpu != this.tempo_global_relogio) {
                //se NAO foi bloqueado AGORA entao desconta tempo de bloqueado para um dia acordarem
                processo.tempo_antes_acordar -= tempo_quanta_timeSlice;
                if (processo.tempo_antes_acordar <= 0) {
                    lista_para_acordar.add(processo);
                }
            }
        }

        //transfere os processos desbloqueados para lista de prontos
        for (Processo processo : lista_para_acordar) {
            processos_lista_blocked.remove(processo);
            //int tempo_bloqueado = this.tempo_global_relogio - processo.info.tempo_do_ultimo_bloqueio;
            int tempo_bloqueado = processo.info.tempo_ultimo_io_burst;

            processo.info.tempo_total_bloqueado += tempo_bloqueado;

            processo.info.n_quanta_finished = 0;
            processo.info.tempo_atual_bloqueado = 0;
            processo.status = Processo.STATUS_READY;
            this.processos_fila_ready.add(processo);

            int tempoQueAcordou = tempo_bloqueado + processo.info.tempo_do_ultimo_bloqueio;

            String flagAcordadoDuranteExecOutroProc = "";
            if (processo.tempo_antes_acordar < 0) {
                //System.out.println("#### " + processo.nomeProcesso + " acordou : " + Math.abs(processo.tempo_antes_acordar)+ "ms ANTES do fim do processo que estava em execução."); //teste
                flagAcordadoDuranteExecOutroProc = "##### ";
                processo.info.tempo_total_esperando += Math.abs(processo.tempo_antes_acordar);
            }

            System.out.println("\n"
                    + flagAcordadoDuranteExecOutroProc
                    + "At " + tempoQueAcordou
                    + " Proc" + processo.pid
                    + " foi acordado e entrou para fila de processos Ready"
            );

        }
    }

    public void mostrar_status_escalonamento() {
        System.out.println("");
        for (Processo processo : this.processos_fila_ready) {
            System.out.println(
                    "[R] Proc" + processo.pid
                    + " [BNUS] " + processo.bonus
                    + " [QT] " + processo.quanta
                    + " [QTCRED] " + processo.quantaSobrouCredito
                    + " [EXEC_CPU] " + processo.info.tempo_total_executando_na_cpu + "ms"
                    + " [ESPEROU] " + processo.info.tempo_total_esperando + "ms"
                    + " [BLOQ] " + processo.info.tempo_total_bloqueado + "ms"
                    + " [CPU_B_REST] " + processo.lista_cpu_bursts[processo.index_cpu_burst]
            );
        }

        for (Processo processo : this.processos_lista_blocked) {
            System.out.println(
                    "[B] Proc" + processo.pid
                    + " [BNUS] " + processo.bonus
                    + " [QT] " + processo.quanta
                    + " [QTCRED] " + processo.quantaSobrouCredito
                    + " [EXEC_CPU] " + processo.info.tempo_total_executando_na_cpu + "ms"
                    + " [ESPEROU] " + processo.info.tempo_total_esperando + "ms"
                    + " [BLOQ] " + processo.info.tempo_total_bloqueado + "ms"
                    // + " [CPU_B_REST] "+processo.lista_cpu_bursts[processo.index_cpu_burst]
                    + " [ult_io_burst] " + processo.info.tempo_ultimo_io_burst
                    + " [tempo_ult_bloq] " + processo.info.tempo_do_ultimo_bloqueio
                    + " [tempo_acordar] " + processo.tempo_antes_acordar
                    + " [atu_bloq] " + processo.info.tempo_atual_bloqueado
            );
        }
        for (Processo processo : this.processos_fila_finalizados) {
            System.out.println(
                    "[F] Proc" + processo.pid
                    + " [BNUS] " + processo.bonus
                    // + " [QT] " + processo.quanta
                    // + " [QTCRED] " + processo.quantaSobrouCredito
                    + " [EXEC_CPU] " + processo.info.tempo_total_executando_na_cpu + "ms"
                    + " [ESPEROU] " + processo.info.tempo_total_esperando + "ms"
                    + " [BLOQ] " + processo.info.tempo_total_bloqueado + "ms"
            );
        }
    }

    public String getRespostaRetorno(int retorno) {
        String resposta;
        if (retorno == 0) {
            resposta = "[PROCESSO TERMINOU]";
        } else if (retorno == -1) {
            resposta = "[PROCESSO BLOQUEOU]";
        } else {
            resposta = "[ESGOTOU O QUANTA E NAO BLOQUEOU]";
        }
        return resposta;
    }

    private void do_AjustarTempoEsperaDosProcessosReady(Processo processoAtual) {
        for (Processo eachProcesso : processos_fila_ready) {
            if (eachProcesso.pid != processoAtual.pid) {
                eachProcesso.info.tempo_total_esperando += processoAtual.tempo_usado_na_cpu;
            }
        }
    }

    private void do_AjustarTempoBloqueioAtualDosProcsBloq() {
        for (Processo eachProcesso : processos_lista_blocked) {
            int tempo_bloqueado_atualizado
                    = this.tempo_global_relogio - eachProcesso.info.tempo_do_ultimo_bloqueio;

            eachProcesso.info.tempo_atual_bloqueado = tempo_bloqueado_atualizado;

        }
    }

    private void do_AvancarTempoRelogioGlobal(int tem_a_ser_avancado) {
        this.tempo_global_relogio += tem_a_ser_avancado;
    }

    private void do_AnalizarRetornoDaExecucaoDoProc(int retorno, Processo processo) {
        if (retorno == 0) {
            System.out.println(
                    "\nAt " + this.tempo_global_relogio
                    + " Proc" + processo.pid
                    + " [TERMINOU]"
            );
            this.processos_fila_finalizados.add(processo);
        } else if (retorno == -1) {
            System.out.println(
                    "At " + this.tempo_global_relogio
                    + " Proc" + processo.pid
                    + " [BLOQUEOU]"
                    + " por " + processo.tempo_antes_acordar + "ms"
            );

            processo.info.tempo_do_ultimo_bloqueio = this.tempo_global_relogio;

            this.processos_lista_blocked.add(processo);
        } else {
            processo.info.n_quanta_finished++;

            if (processo.info.n_quanta_finished == 2) {
                processo.BonusDown();
                processo.info.n_quanta_finished = 0;
                //System.out.println("\n@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n");//teste
            }

            System.out.println(
                    "At " + this.tempo_global_relogio
                    + " Proc" + processo.pid
                    + " entrou na fila de processos Ready."
            );

            this.processos_fila_ready.add(processo);
        }
    }

    private void do_DesbloquearQuandoTodosBloq() {
        if (this.processos_fila_ready.size() == 0) {

            Processo processoBloqueado = this.getProcBloqComMenorTempo(this.processos_lista_blocked);
            if (processoBloqueado != null) {
                int tempo_avancar = processoBloqueado.tempo_antes_acordar;
                this.do_AvancarTempoRelogioGlobal(tempo_avancar);
                System.out.println("--------------------------------------------------------");
                System.out.println("###***   Todos processos estao bloqueados");
                System.out.println("###*** Avançando no tempo do menor bloqueado ... ");
                System.out.println("###*** Tempo Avançado: " + tempo_avancar + "ms");
                System.out.println("###*** GLOBAL_CLOCK_NOW: " + this.tempo_global_relogio + "ms");
                System.out.println("--------------------------------------------------------");

                this.do_AtualizarTempoAntesAcordar_e_AcordarProcs(tempo_avancar);
            }

        }
    }

    @Override
    public void run() {
        this.mostrar_status_escalonamento();

        Processo processo = this.do_escalonarProcesso();

        while (processo != null) {

            System.out.println(
                    "\nAt " + this.tempo_global_relogio
                    + " escalonador selecionou Proc" + processo.pid
            );

            System.out.println("Troca de Contexto...");

            int retorno = processo.excecuta(processo.quanta);

            this.do_AvancarTempoRelogioGlobal(processo.tempo_usado_na_cpu);

            System.out.println(
                    "At " + this.tempo_global_relogio
                    + " Proc" + processo.pid
                    + " retornou: " + this.getRespostaRetorno(retorno)
            );

            processo.info.tempo_ultimo_vez_na_cpu = this.tempo_global_relogio;
            processo.info.tempo_total_executando_na_cpu += processo.tempo_usado_na_cpu;

            this.do_AjustarTempoEsperaDosProcessosReady(processo);

            this.do_AjustarTempoBloqueioAtualDosProcsBloq();

            this.do_AtualizarTempoAntesAcordar_e_AcordarProcs(processo.tempo_usado_na_cpu);

            this.do_AnalizarRetornoDaExecucaoDoProc(retorno, processo);
            
            this.mostrar_status_escalonamento(); 

            this.do_DesbloquearQuandoTodosBloq();

            processo = this.do_escalonarProcesso();

        }
    }

}

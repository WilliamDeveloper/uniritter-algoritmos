package br.com.escalonador;

public class InfoEscalonamento {

    public int n_quanta_finished = 0;

    public int tempo_total_esperando = 0;
    public int tempo_total_executando_na_cpu = 0;
    public int tempo_total_bloqueado = 0;
    public int tempo_atual_bloqueado = 0;
    
    public int tempo_do_ultimo_bloqueio = 0;
    public int tempo_ultimo_vez_na_cpu = 0;
    public int tempo_ultimo_io_burst = 0;
    
}

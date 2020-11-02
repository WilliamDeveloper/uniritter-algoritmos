package br.com.entidade;

import br.com.system.config.V_Constantes;
import java.io.IOException;

public class MainTeste {

    public static void main(String[] args) throws IOException {

        String vNomeDisco = "disco.data";
        int vQtdTotalSetoresEmDisco = V_Constantes.TAM_DISCO_32M / Disco.TAM_SETOR_4K;
        
        if(vQtdTotalSetoresEmDisco <= 0 || vQtdTotalSetoresEmDisco >  ( 2 * V_Constantes.TAM_4K)){
            System.out.println("###############################################################");
            System.out.println("### TAMANHO DE DISCO NAO SUPORTADO PELO SISTEMA DE ARQUIVOS ###");
            System.out.println("###############################################################");
            return;
        }
        
        Disco disco = new Disco(vNomeDisco, vQtdTotalSetoresEmDisco);
        
        MainTeste.doMKFS(disco);
        
        String acao = " ";
        while (!acao.equals("MOUNT")) {
            acao = Comandos.doGetNotNullAndNotEmptyAndUpperStr("Digite MOUNT para Comecar a usar o sistema de arquivos");
        }

        SistemaArquivos sistemaArquivos = new SistemaArquivos();
        try {
            sistemaArquivos = sistemaArquivos.mount(disco);
            
            while(sistemaArquivos.doEscolhaUmComando() != -1){ 
                System.out.println("\n--DIGITE OUTRO COMANDO--\n");
            }
        } catch (Exception e) {
            System.out.println("O F.S. Esta corrompido delete o 'disco.data' da raiz do projeto e tente novamente");
        }

        System.out.println("################################################");
        System.out.println("FIM");

        /*
        byte[] palavraSerializada = StringToBytes.strToByte("Hello!");
        System.out.println("tam "+palavraSerializada.length);
        disco.doEscrever(2, palavraSerializada);
        
        byte[] bufferSaida = new byte[Disco.TAM_SETOR_4K];
        disco.doLer(1, bufferSaida);
        System.out.println("Setor 1 tem : "+ new String(bufferSaida));
        
        disco.doLer(2, bufferSaida);
        System.out.println("Setor 2 tem : "+ new String(bufferSaida));
         */
    }

    public static void doMKFS(Disco disco) {
        String acao = " ";
       
        while (!acao.equals("MKFS")) {
            acao = Comandos.doGetNotNullAndNotEmptyAndUpperStr("Digite MKFS para criar o sistema de arquivos");
        }

        SistemaArquivos.mkfs(disco);
    }

}

package br.com.entidade;

import br.com.system.config.V_Constantes;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.file.FileSystems;
import java.nio.file.StandardOpenOption;
import java.util.EnumSet;

public class Disco {

    public int vQtdSetorNoDisco;
    public String vNomeDoDisco;
    public FileChannel vCanalDoArquivo;

    public static final int TAM_SETOR_4K = 4 * 1024; //4096

    public Disco() throws IOException {
        this("disco.data", V_Constantes.TAM_DISCO_16M / Disco.TAM_SETOR_4K);
    }

//#############################################################################
    public Disco(String nomeDisco, int tamanhoDisco) throws IOException {
        this.vNomeDoDisco = nomeDisco;
        this.vQtdSetorNoDisco = tamanhoDisco;
        java.nio.file.FileSystem fs = FileSystems.getDefault();

        this.vCanalDoArquivo = FileChannel.open(
                fs.getPath(nomeDisco),
                EnumSet.of(
                        StandardOpenOption.CREATE,
                        StandardOpenOption.READ,
                        StandardOpenOption.WRITE
                )
        );
        this.doInfoDisco();
    }

//#############################################################################
    public int doLer(int setor, byte[] bufferDeSaidaDeDados) {
        if (bufferDeSaidaDeDados.length != this.TAM_SETOR_4K) {
            System.out.println("O vetor com os dados de saida deve ter o mesmo tamanho de um setor padrao:  " + this.TAM_SETOR_4K);
            return -1;
        }

        for (int i = 0; i < this.TAM_SETOR_4K; i++) {
            bufferDeSaidaDeDados[i] = 0;
        }

        if (setor >= 0 && setor < this.vQtdSetorNoDisco) {
            int offset = setor * this.TAM_SETOR_4K;
            try {
                vCanalDoArquivo.position(offset);
                vCanalDoArquivo.read(ByteBuffer.wrap(bufferDeSaidaDeDados));
            } catch (IOException e) {
                return -1;
            }
        } else {
            System.out.println("VOCE TENTOU LER UM SETOR INVALIDO");
            return -1;
        }

        return 0;
    }

//#############################################################################
    public int doEscrever(int setor, byte[] inputDados) {
        System.out.println("teste-doEscrever setor "+setor);
        if (inputDados.length != TAM_SETOR_4K) {
            System.out.println("Os dados devem ter o tamanho do setor:  " + this.TAM_SETOR_4K);
            return -1;
        }

        if (setor >= 0 && setor < this.vQtdSetorNoDisco) {
            int offset = setor * TAM_SETOR_4K;
            try {
                vCanalDoArquivo.position(offset);
                vCanalDoArquivo.write(ByteBuffer.wrap(inputDados));
            } catch (IOException e) {
                return -1;
            }
        } else {
            System.out.println("VOCE TENTOU ESCREVER EM UM SETOR INVALIDO");
            return -1;
        }
        return 0;
    }

    //#############################################################################
    public void doInfoDisco() {
        System.out.println("");
        System.out.println("INFO DO DISCO");
        System.out.println("----------------------------------------------------------");
        System.out.println("vNomeDoDisco: " + this.vNomeDoDisco);
        System.out.println("vQtdSetorNoDisco: " + this.vQtdSetorNoDisco);
        System.out.println("----------------------------------------------------------");
        System.out.println("");
    }
}

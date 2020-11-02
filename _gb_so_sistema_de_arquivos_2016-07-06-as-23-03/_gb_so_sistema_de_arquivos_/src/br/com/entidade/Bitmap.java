package br.com.entidade;

import br.com.system.config.V_Constantes;

public class Bitmap {

    private byte[][] vBlocosBitmap;
    private SuperBlock vSuperBloco;
    private Disco vDisco;

//#############################################################################
    public Bitmap(SuperBlock superBloco, Disco disco) {
        this.vSuperBloco = superBloco;
        this.vDisco = disco;
        this.vBlocosBitmap = new byte[this.vSuperBloco.doGetTotalDeBlocosOcupadosPeloBitmap()][SistemaArquivos.TAM_BLOCO_4K];

        byte[] bufferDeLeitura;
        for (int i = 0; i < vBlocosBitmap.length; i++) {
            int indexBitMap = i + 1;
            bufferDeLeitura = new byte[Disco.TAM_SETOR_4K];
            if (this.vDisco.doLer(indexBitMap, bufferDeLeitura) == -1) {
                System.out.println("teste-Ocorreu erro durante Leitura Setor Bitmap: " + i);
            }
            this.vBlocosBitmap[i] = bufferDeLeitura;
        }
    }

    //#############################################################################
    public static byte[] doGetNewBlocoBitmapZerado() {
        byte[] bitmap = new byte[V_Constantes.TAM_4K];

        for (int i = 0; i < V_Constantes.TAM_4K; i++) {
            bitmap[i] = 0;
        }

        return bitmap;
    }

//#############################################################################
    public int doGetIndexBlocoLivreEJaOcupa() {
        int contblocos = 0;
        int pos = -1;
        for (int i = 0; i < this.vBlocosBitmap.length; i++) {
            for (int j = 0; j < vBlocosBitmap[i].length; j++) {
                if (contblocos < this.vSuperBloco.doGetNumeroTotalDeBlocos()) {
                    if (this.vBlocosBitmap[i][j] == 0) {
                        this.vBlocosBitmap[i][j] = 1;
                        pos = contblocos;
                        return pos;
                    } else {
                        System.out.println("doGetIndexBlocoLivreEJaOcupa()-indexI " + i + "indexJ " + j + " contblocos " + contblocos + " this.vBlocosBitmap[i][j] " + this.vBlocosBitmap[i][j]);
                    }
                    contblocos++;

                } else {
                    return pos;
                }
            }
        }
        return pos;
    }
    
//#############################################################################
    public int doSetIndexBlocoParaLivre(int IndexBloco) {
        int contblocos = 0;
        int pos = -1;
        for (int i = 0; i < this.vBlocosBitmap.length; i++) {
            for (int j = 0; j < vBlocosBitmap[i].length; j++) {
                if (contblocos < this.vSuperBloco.doGetNumeroTotalDeBlocos()) {
                    if (contblocos == IndexBloco) {
                        System.out.println("doSetIndexBlocoLivreFromIndexBloco()-indexI " + i + "indexJ " + j + " contblocos " + contblocos + " this.vBlocosBitmap[i][j] de: " + this.vBlocosBitmap[i][j]+" to ZERO");
                        this.vBlocosBitmap[i][j] = 0;
                        pos = contblocos;
                        return pos;
                    } 
                    contblocos++;

                } else {
                    return pos;
                }
            }
        }
        return pos;
    }

//#############################################################################
    public int doGetTotalBlocoOcupado() {
        int contblocos = 0;
        int pos = -1;
        for (int i = 0; i < this.vBlocosBitmap.length; i++) {
            for (int j = 0; j < vBlocosBitmap[i].length; j++) {
                if (contblocos < this.vSuperBloco.doGetNumeroTotalDeBlocos()) {
                    if (this.vBlocosBitmap[i][j] == 1) {
                        System.out.println("doGetTotalBlocoOcupado()-indexI " + i + "indexJ " + j + " contblocos " + contblocos + " this.vBlocosBitmap[i][j] " + this.vBlocosBitmap[i][j]);
                        contblocos++;
                        pos = contblocos;
                    }

                } else {
                    return pos;
                }
            }
        }
        return pos;
    }


//#############################################################################
    public void doSaveBlocoBitmapParaDisco() {
        //manda bitmap atualizado pro vDisco
        for (int i = 0; i < this.vBlocosBitmap.length; i++) {
            this.vDisco.doEscrever(1 + i, this.vBlocosBitmap[i]);//comeca em 1
        }
    }

//#############################################################################
    public static void main(String[] args) {

        //Bitmap bm = new Bitmap(2,2048);
        //System.out.println("da" + bm.getNumBlocosAOcupar());
        byte[] b = new byte[2048];
        for (int i = 0; i < 2048; i++) {
            b[i] = 0;
        }
        //Bitmap b = new Bitmap(2048);
        System.out.println(b.length);
    }
}

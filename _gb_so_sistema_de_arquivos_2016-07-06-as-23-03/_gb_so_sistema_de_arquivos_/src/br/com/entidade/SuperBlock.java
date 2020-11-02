package br.com.entidade;

import java.io.Serializable;

public class SuperBlock implements Serializable {

    private int vNumeroTotalDeBlocos; // ex. 10
    private int vTotalDeBlocosOcupadosPeloBitmap; //ex. 2
    private int vIndexBlocoRaiz; //ex. 3
    //public int vBlocoOndeIniciaARaiz2; //ex. 3

//#############################################################################
    public int doGetNumeroTotalDeBlocos() {
        return vNumeroTotalDeBlocos;
    }

//#############################################################################
    public void doSetNumeroTotalDeBlocos(int vNumeroTotalDeBlocos) {
        this.vNumeroTotalDeBlocos = vNumeroTotalDeBlocos;
    }

//#############################################################################
    public int doGetTotalDeBlocosOcupadosPeloBitmap() {
        return vTotalDeBlocosOcupadosPeloBitmap;
    }

//#############################################################################
    public void doSetTotalDeBlocosOcupadosPeloBitmap(int vTotalDeBlocosOcupadosPeloBitmap) {
        this.vTotalDeBlocosOcupadosPeloBitmap = vTotalDeBlocosOcupadosPeloBitmap;
    }

//#############################################################################
    public int doGetIndexBlocoRaiz() {
        return vIndexBlocoRaiz;
    }
    
//#############################################################################
    public void doSetIndexBlocoRaiz(int vIndexBlocoRaiz) {
        this.vIndexBlocoRaiz = vIndexBlocoRaiz;
    }
    
//#############################################################################
    public void doInfoSuperBlock() {
        System.out.println("");
        System.out.println("INFO DO SUPERBLOCK");
        System.out.println("----------------------------------------------------------");        
        System.out.println("vNumeroTotalDeBlocos: " + this.vNumeroTotalDeBlocos);
        System.out.println("vTotalDeBlocosOcupadosPeloBitmap: " + this.vTotalDeBlocosOcupadosPeloBitmap);
        System.out.println("vIndexBlocoRaiz: " + this.vIndexBlocoRaiz);
        System.out.println("----------------------------------------------------------");
        System.out.println("");
    }
    

}

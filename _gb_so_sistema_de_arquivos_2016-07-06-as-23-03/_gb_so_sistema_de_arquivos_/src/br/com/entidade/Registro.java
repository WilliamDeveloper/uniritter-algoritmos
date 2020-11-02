package br.com.entidade;

import br.com.system.config.V_Constantes;
import java.io.Serializable;

public class Registro implements Serializable {

    private char[] nomeChar; //2
    private char tipo; // 1
    private int vIndexBlocoDestino; // 4
    private int tamanho;// 4 somente arquivo deve ter tamanho    

    public Registro() {
        this.nomeChar = new char[V_Constantes.TAM_STR_DIR_FILE];
        this.doZerarRegistro();
    }

//#############################################################################
    public void doSetEntryFolder(String nome, int blocoDeArmazenamento) {
        this.doSetNome(nome);
        this.doSetTipo(V_Constantes.TIPO_PASTA);
        this.doSetBlocoOndeFoiArmazenado(blocoDeArmazenamento);
        this.tamanho = -1;
    }

//#############################################################################
    public void doSetEntryFile(String nome, int blocoDeArmazenamento, int tamanhoDoarquivo) {
        this.doSetNome(nome);
        this.tipo = V_Constantes.TIPO_ARQUIVO;
        this.vIndexBlocoDestino = blocoDeArmazenamento;
        this.tamanho = tamanhoDoarquivo;
    }

//#############################################################################
    public int doSetNome(String nome) {
        int TAM = nome.length();
        if (TAM > 0 && TAM <= V_Constantes.TAM_STR_DIR_FILE) {
            this.nomeChar = nome.toCharArray();
            return 1;
        } else {
            System.out.println("tamanho da string do nome excedeu o limite de caracter->" + V_Constantes.TAM_STR_DIR_FILE);
        }
        return -1;
    }

//#############################################################################
    public String doGetNome_Str() {
        return String.valueOf(nomeChar);
    }

    //#############################################################################
    public char[] doGetNome_Char() {
        return this.nomeChar;
    }

//#############################################################################    
    public char doGetTipo() {
        return tipo;
    }

//#############################################################################
    public void doSetTipo(char tipo) {
        this.tipo = tipo;
    }

//#############################################################################
    public int doGetIndexBlocoDestino() {
        return vIndexBlocoDestino;
    }

//#############################################################################
    public void doSetBlocoOndeFoiArmazenado(int vIndexBlocoDestino) {
        this.vIndexBlocoDestino = vIndexBlocoDestino;
    }

//#############################################################################
    public int doGetTamanho() {
        return tamanho;
    }
    
//#############################################################################
    public void doSetTamanho(int tamanho) {
        this.tamanho = tamanho;
    }

//#############################################################################
    public void doZerarRegistro() {
        for (int i = 0; i < nomeChar.length; i++) {
            nomeChar[i] = 0;
        }
        this.tipo = '-';
        this.vIndexBlocoDestino = -1;
        this.tamanho = -1;
    }

//#############################################################################
    public boolean doMostrarRegistro() {
        if (nomeChar[0] != 0) {
            System.out.println("nome: " + doGetNome_Str() + " tipo: " + tipo + " bloco: " + vIndexBlocoDestino + ((tamanho != -1) ? (" tamanho: " + tamanho) : ""));
            return true;
        }
        return false;
    }

}

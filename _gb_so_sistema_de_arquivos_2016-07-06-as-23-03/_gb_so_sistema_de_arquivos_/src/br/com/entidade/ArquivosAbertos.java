package br.com.entidade;

import java.util.ArrayList;
import java.util.List;

public class ArquivosAbertos {

    List<Arquivo> lista_arq = new ArrayList<Arquivo>();

    public Arquivo doGetArquivoAberto(String pArquivo, String pCaminho) {
        for (int i = 0; i < lista_arq.size(); i++) {
            Arquivo arq = lista_arq.get(i);
            if (arq.vNomeArquivo.equals(pArquivo) && arq.vCaminho.equals(pCaminho)) {
                return arq;
            }
        }
        return null;
    }

    public Arquivo doGetArquivoAberto(String pArquivo, int pBlocoArqDados) {
        for (int i = 0; i < lista_arq.size(); i++) {
            Arquivo arq = lista_arq.get(i);
            if (arq.vNomeArquivo.equals(pArquivo) && arq.vIndexBlocoDados == pBlocoArqDados) {
                return arq;
            }
        }
        return null;
    }

    public void doCloseArquivo(String pArquivo, String pCaminho) {
        for (int i = 0; i < lista_arq.size(); i++) {
            Arquivo arq = lista_arq.get(i);
            if (arq.vNomeArquivo.equals(pArquivo) && arq.vCaminho.equals(pCaminho)) {
                lista_arq.remove(i);
                return;
            }
        }
    }

    public void doCloseArquivo(String pArquivo, int pBlocoArqDados) {
        for (int i = 0; i < lista_arq.size(); i++) {
            Arquivo arq = lista_arq.get(i);
            if (arq.vNomeArquivo.equals(pArquivo) && arq.vIndexBlocoDados == pBlocoArqDados) {
                lista_arq.remove(i);
                return;
            }
        }
    }

    public void doOpenArquivo(String pNomeArquivo, String pCaminho, int pIndexBlocoEntradaPasta, int pIndexBlocoDados, int pIndexDoArqNaTabela) {
        Arquivo arq = new Arquivo();
        arq.vNomeArquivo = pNomeArquivo;
        arq.vCaminho = pCaminho;
        arq.vIndexBlocoEntradaPasta = pIndexBlocoEntradaPasta;
        arq.vIndexBlocoDados = pIndexBlocoDados;
        arq.vIndexDoArqNaTabela = pIndexDoArqNaTabela;
        lista_arq.add(arq);
    }
}

class Arquivo {

    public String vNomeArquivo;
    public String vCaminho;
    public int vIndexBlocoEntradaPasta;
    public int vIndexBlocoDados;
    public int vIndexDoArqNaTabela;
}

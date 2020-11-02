package br.com.entidade;

import br.com.system.config.V_Constantes;
import br.com.utils.ObjSerializer;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

public class Tabela implements Serializable {

    private Registro[] registros;

//#############################################################################
    public Tabela() {
        this(V_Constantes.TAM_LIMITE_REGISTROS_TABELA);
    }
    
//#############################################################################
    public Tabela(int TAM) {       
        this.registros = new Registro[TAM];

        for (int i = 0; i < TAM; i++) {
            this.registros[i] = new Registro();
        }
    }
    
//#############################################################################
    public int doAddEntrada(int index, String nome, char tipo, int blocoDeArmazenamento, int tamanho) {
        if(tipo == V_Constantes.TIPO_PASTA){
            this.registros[index].doSetEntryFolder(nome, blocoDeArmazenamento);
        }else if(tipo == V_Constantes.TIPO_ARQUIVO){
            this.registros[index].doSetEntryFile(nome, blocoDeArmazenamento, tamanho);
        }else{
            System.out.println("Nao foi possivel adicionar Registro na tabela");
            return -1;
        }
        return 1;
    }
    
//#############################################################################
    public void doRemoveRegistro(int index){
        this.registros[index].doZerarRegistro();
    }

//#############################################################################
    public int doGetIndexPastaProcurada(String itemProcurado) {
        int pos = -1;
        for (int i = 0; i < registros.length; i++) {
            String nomeAtual = this.registros[i].doGetNome_Str();
            char tipo = this.registros[i].doGetTipo();

            if (nomeAtual.equals(itemProcurado) && tipo == V_Constantes.TIPO_PASTA) {
                pos = i;
                break;
            }
        }
        return pos;
    }

//#############################################################################    
    public int doGetIndexArquivoProcurada(String itemProcurado) {
        int pos = -1;
        for (int i = 0; i < registros.length; i++) {
            String nomeAtual = this.registros[i].doGetNome_Str();
            char tipo = this.registros[i].doGetTipo();

            if (nomeAtual.equals(itemProcurado) && tipo == V_Constantes.TIPO_ARQUIVO) {
                pos = i;
                break;
            }
        }
        return pos;
    }

//#############################################################################
    public int doGetIndexRegLivreRegistro() {
        int pos = -1;

        for (int i = 0; i < registros.length; i++) {
            String nomeAtual = this.registros[i].doGetNome_Str();

            if (this.registros[i].doGetNome_Char()[0] == 0) {
                pos = i;
                break;
            }
        }
        return pos;
    }
    
//#############################################################################
    public int doGetIndexBlocoPastaFromIndex(int posBlocoFromIndex) {
        int indexBloco = -1;
        if(this.registros[posBlocoFromIndex].doGetTipo() == V_Constantes.TIPO_PASTA){
            indexBloco = this.registros[posBlocoFromIndex].doGetIndexBlocoDestino();
        }        
        return indexBloco;
    }
    
//#############################################################################
    public int doGetIndexBlocoArquivoFromIndex(int posBlocoFromIndex) {
        int indexBloco = -1;
        if(this.registros[posBlocoFromIndex].doGetTipo() == V_Constantes.TIPO_ARQUIVO){
            indexBloco = this.registros[posBlocoFromIndex].doGetIndexBlocoDestino();
        }        
        return indexBloco;
    }

//#############################################################################    
    public void doMostrarTabela(int pBloco, String pCaminho){
        System.out.println();
        System.out.println("#################################################");
        System.out.println("Bloco: "+pBloco+ " MaxRegs: "+doGetMaxRegistros()+" Caminho: "+pCaminho);
        int cont = 0;
        for (int i = 0; i < this.registros.length; i++) {
           if(this.registros[i].doMostrarRegistro()){
               cont++;
           }
           
        }
        if(cont == 0){
            System.out.println("!!! DIRETÓRIO ESTA VAZIO NO MOMENTO !!!");
        }
        
        System.out.println("#################################################");
        System.out.println();
    }
    
    public Map<String,Integer> doGetListaPastasOuArquivos(char tipo){
        Map<String,Integer> lista = new HashMap<String,Integer>();
        for (int i = 0; i < this.registros.length; i++) {
            if(this.registros[i].doGetTipo() == tipo){
                lista.put(this.registros[i].doGetNome_Str(),this.registros[i].doGetIndexBlocoDestino());
            }
        }        
        return lista;
    }
    
//#############################################################################    
    public static int doGetLimiteRegistroTabela(){
        int tam = 0;
        int size = 0;
        while(size < V_Constantes.TAM_4K){
            tam++;
            Tabela tab = new Tabela(tam);
            size = ObjSerializer.getSizeByteOfSerializedObj(tab);
            
        }
        return --tam;
    }

//#############################################################################   
    public int doGetMaxRegistros(){
        return this.registros.length;
    }

//#############################################################################    
public void doSetTamanhoFromIndex(int indexEntradaTabela,int tamanho){
    this.registros[indexEntradaTabela].doSetTamanho(tamanho);
}    
    
//#############################################################################    
    public static void main(String[] args) throws Exception {
        //int limiteRegistroTabela = Tabela.doGetLimiteRegistroTabela();
        int limiteRegistroTabela = V_Constantes.TAM_LIMITE_REGISTROS_TABELA;
        Tabela t1 = new Tabela(0);
        Tabela t2 = new Tabela(1);
        Tabela t3 = new Tabela(2);
        Tabela t4 = new Tabela(limiteRegistroTabela-1);
        Tabela t5 = new Tabela(limiteRegistroTabela);//limite 4066 preencher com zeros
        //Tabela t5 = new Tabela();//limite 4066 preencher com zeros
        Tabela t6 = new Tabela(limiteRegistroTabela+1);
        
        System.out.println("LIMITE-REGISTRO-EH"+Tabela.doGetLimiteRegistroTabela());

        System.out.println("conteudo do bloco serializado tem1: " + ObjSerializer.getSizeByteOfSerializedObj(t1) + " of " + SistemaArquivos.TAM_BLOCO_4K);
        System.out.println("conteudo do bloco serializado tem2: " + ObjSerializer.getSizeByteOfSerializedObj(t2) + " of " + SistemaArquivos.TAM_BLOCO_4K);
        System.out.println("conteudo do bloco serializado tem3: " + ObjSerializer.getSizeByteOfSerializedObj(t3) + " of " + SistemaArquivos.TAM_BLOCO_4K);
        System.out.println("conteudo do bloco serializado tem4: " + ObjSerializer.getSizeByteOfSerializedObj(t4) + " of " + SistemaArquivos.TAM_BLOCO_4K+ " numRegs: "+(limiteRegistroTabela-1));
        System.out.println("conteudo do bloco serializado tem5: " + ObjSerializer.getSizeByteOfSerializedObj(t5) + " of " + SistemaArquivos.TAM_BLOCO_4K + " numRegs: "+limiteRegistroTabela);
        System.out.println("conteudo do bloco serializado tem6: " + ObjSerializer.getSizeByteOfSerializedObj(t6) + " of " + SistemaArquivos.TAM_BLOCO_4K+ " numRegs: "+(limiteRegistroTabela+1));
        //System.out.println("conteudo do blocoOndeFoiArmazenado serializado tem: "+ObjSerializer.doSerialize(t6).length +" of "+SistemaArquivos.TAM_BLOCO_4K);
        t5.registros[5].doSetNome("K");
       // System.out.println("conteudo do bloco serializado tem: " + ObjSerializer.doSerializeToTamBloco(t5).length + " of " + SistemaArquivos.TAM_BLOCO_4K);
        //System.out.println("conteudo do bloco serializado tem: " + ObjSerializer.doSerializeToTamBloco(t5).length + " of " + SistemaArquivos.TAM_BLOCO_4K);
        Tabela teste = ObjSerializer.doDeserialize(ObjSerializer.doSerializeToTamBloco(t5), Tabela.class);
        //System.out.println("ss"+teste.registros[5].doGetNome_Str()+" length "+ObjSerializer.doSerialize(teste).length);

        System.out.println("qtdBytes-obj-deserializado"+ObjSerializer.doSerializeToTamBloco(teste).length);
        Tabela teste1 = ObjSerializer.doDeserialize(ObjSerializer.doSerializeToTamBloco(teste), Tabela.class);
        int tam = V_Constantes.TAM_DISCO_16M/SistemaArquivos.TAM_BLOCO_4K;
        System.out.println("LimiteTamDiscoBloco: "+tam);
        //System.out.println("ss"+teste1.registros[5].doGetNome_Str()+" length "+ObjSerializer.doSerialize(teste1).length);
        //ObjSizeFromHeap.getSizeFromMemory();
    }

}

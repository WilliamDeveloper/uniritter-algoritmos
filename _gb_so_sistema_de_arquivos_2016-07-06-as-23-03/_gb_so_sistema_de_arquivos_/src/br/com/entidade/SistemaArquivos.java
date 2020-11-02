package br.com.entidade;

import br.com.system.config.V_Constantes;
import br.com.utils.ObjSerializer;
import br.com.utils.String_Util;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class SistemaArquivos {

    public static int TAM_BLOCO_4K = 4 * 1024; //4096
    public SuperBlock vSuperBloco;
    public Disco vDisco;

//#############################################################################
    public int doEscolhaUmComando() throws Exception {

        String acao = Comandos.doMostrarAcoesDisponivelCliente();
        System.out.println("teste-ACAO: " + acao);
        if (acao.equals(V_Constantes.ACAO_MKDIR)) {
            String pastaASerCriada = Comandos.doGetNomePastaOuArquivo("PASTA");
            String whereSeraCriado = Comandos.doGetCaminhoDiretorio();
            System.out.println("teste-ACAO: " + acao + " PASTA: " + pastaASerCriada + " caminho: " + whereSeraCriado);
            this.mkdir(pastaASerCriada, whereSeraCriado);
        } else if (acao.equals(V_Constantes.ACAO_RMDIR)) {
            String caminho = Comandos.doGetCaminhoDiretorio();
            System.out.println("teste-ACAO: " + acao + " caminho: " + caminho);
            this.rmdir(caminho);
        } else if (acao.equals(V_Constantes.ACAO_LSDIR)) {
            String caminho = Comandos.doGetCaminhoDiretorio();
            System.out.println("teste-ACAO: " + acao + " caminho: " + caminho);
            this.lsdir(caminho);
        } else if (acao.equals(V_Constantes.ACAO_FILE_CREATE)) {
            String nomeArquivo = Comandos.doGetNomePastaOuArquivo("ARQUIVO");
            String caminho = Comandos.doGetCaminhoDiretorio();
            System.out.println("teste-ACAO: " + acao + " nomeArquivo: " + nomeArquivo + " caminho: " + caminho);
            this.file_create(nomeArquivo, caminho);
        } else if (acao.equals(V_Constantes.ACAO_FILE_DELETE)) {
            String caminhoComArquivo = Comandos.doGetCaminhoDiretorioComArquivo();
            System.out.println("teste-ACAO: " + acao + " caminho: " + caminhoComArquivo);
            this.file_delete(caminhoComArquivo);
        } else if (acao.equals(V_Constantes.ACAO_FILE_OPEN)) {
            String nomeArquivo = Comandos.doGetNomePastaOuArquivo("ARQUIVO");
            String caminho = Comandos.doGetCaminhoDiretorio();
            System.out.println("teste-ACAO: " + acao + " nomeArquivo: " + nomeArquivo + " caminho: " + caminho);
            this.file_open(nomeArquivo, caminho);
        } else if (acao.equals(V_Constantes.ACAO_FILE_CLOSE)) {
            String nomeArquivo = Comandos.doGetNomePastaOuArquivo("ARQUIVO");
            String caminho = Comandos.doGetCaminhoDiretorio();
            System.out.println("teste-ACAO: " + acao + " nomeArquivo: " + nomeArquivo + " caminho: " + caminho);
            this.file_close(nomeArquivo, caminho);
        } else if (acao.equals(V_Constantes.ACAO_FILE_WRITE)) {

            String vNomeArquivo = Comandos.doGetNomePastaOuArquivo("ARQUIVO");
            String vCaminho = Comandos.doGetCaminhoDiretorio();
            System.out.println("teste-ACAO: " + acao + "vNomeArquivo "+vNomeArquivo+" vCaminho "+vCaminho);
            Arquivo vArquivo = V_Constantes.vARQUIVOS_ABERTO_.doGetArquivoAberto(vNomeArquivo, vCaminho);

            if (vArquivo != null) {
                int vIndexPosCursorTexto = Comandos.doGetIndexPosCursorTexto("INDEX");
                String vDataTexto = Comandos.doGetEntradaTextoArquivo();
                this.file_write(vArquivo, vIndexPosCursorTexto, vDataTexto);
            } else {
                System.out.println("############################################################");
                System.out.println("###!!! ANTES DE COMEÇAR A ESCREVER DIGITE 'FILE_OPEN' !!!###");
                System.out.println("############################################################");
            }

        } else if (acao.equals(V_Constantes.ACAO_FILE_READ)) {
            String vNomeArquivo = Comandos.doGetNomePastaOuArquivo("ARQUIVO");
            String vCaminho = Comandos.doGetCaminhoDiretorio();
            Arquivo vArquivo = V_Constantes.vARQUIVOS_ABERTO_.doGetArquivoAberto(vNomeArquivo, vCaminho);
            System.out.println("teste-ACAO: " + acao + "vNomeArquivo "+vNomeArquivo+" vCaminho "+vCaminho);
            if (vArquivo != null) {
                int vIndexPosCursorTexto = Comandos.doGetIndexPosCursorTexto("INDEX");
                int vTamanhoTexto = Comandos.doGetIndexPosCursorTexto("TAM");
                System.out.println("vIndexPosCursorTexto " + vIndexPosCursorTexto + " vTamanhoTexto " + vTamanhoTexto);
                String vDadosTexto = this.file_read(vArquivo, vIndexPosCursorTexto, vTamanhoTexto);//teste
                System.out.println("######################################################################");
                System.out.println("#### Exibir String\n: " + vDadosTexto);
                System.out.println("######################################################################");

            } else {
                System.out.println("############################################################");
                System.out.println("###!!! ANTES DE COMEÇAR A ESCREVER DIGITE 'FILE_OPEN' !!!###");
                System.out.println("############################################################");
            }

        } else if (acao.equals(V_Constantes.ACAO_SAIR)) {
            return -1;
        }
        return -2;
    }
//#############################################################################

    public static void mkfs(Disco disco) {
        int numeroTotalBlocos = (disco.vQtdSetorNoDisco * Disco.TAM_SETOR_4K) / SistemaArquivos.TAM_BLOCO_4K;

        if (numeroTotalBlocos <= 3) {
            System.out.println("Disco muito pequeno!");
            return;
        }

        if (numeroTotalBlocos > (2 * TAM_BLOCO_4K)) {
            System.out.println("Esse Tamanho de disco não é suportado por este sistema de arquivos");
            return;
        }

        SuperBlock superBloco = new SuperBlock();
        superBloco.doSetNumeroTotalDeBlocos(numeroTotalBlocos);
        superBloco.doSetTotalDeBlocosOcupadosPeloBitmap(V_Constantes.TAM_MAX_BLOCO_BITMAPS_2);
        superBloco.doSetIndexBlocoRaiz(V_Constantes.TAM_MAX_BLOCO_BITMAPS_2 + 1); //3

        Tabela raiz = new Tabela();

        byte[] bufferSuperBloco = ObjSerializer.doSerializeToTamBloco(superBloco);
        byte[] bufferRaiz = ObjSerializer.doSerializeToTamBloco(raiz);

        Bitmap objBitmap = new Bitmap(superBloco, disco);//carrega o bitmap do disco temporariamente

        int vIndexBlocoLivre = objBitmap.doGetIndexBlocoLivreEJaOcupa();
        // System.out.println("teste-vIndexBlocoLivre" + vIndexBlocoLivre);
        if (vIndexBlocoLivre != 0) {
            System.out.println("##########################################################");
            System.out.println("######## O SISTEMA DE ARQUIVOS JA FOI CRIADO!!! ##########");
            System.out.println("##########################################################");
            objBitmap.doSetIndexBlocoParaLivre(vIndexBlocoLivre);//teste seta para livre o bloco tomado
            System.out.println("objBitmap.doGetTotalBlocoOcupado() " + objBitmap.doGetTotalBlocoOcupado() + " vIndexBlocoLivre " + vIndexBlocoLivre);
            return;
        } else {
            System.out.println("##########################################################");
            System.out.println("############ CRIANDO SISTEMA DE ARQUIVOS!!! ##############");
            System.out.println("##########################################################");
        }

        System.out.println("teste-vIndexBlocoLivre-superbloco-" + vIndexBlocoLivre);
        disco.doEscrever(vIndexBlocoLivre, bufferSuperBloco);

        vIndexBlocoLivre = objBitmap.doGetIndexBlocoLivreEJaOcupa();
        System.out.println("teste-vIndexBlocoLivre-bufferBitMap1-" + vIndexBlocoLivre);
        //disco.doEscrever(vIndexBlocoLivre, bufferBitMap1);

        vIndexBlocoLivre = objBitmap.doGetIndexBlocoLivreEJaOcupa();
        System.out.println("teste-vIndexBlocoLivre-bufferBitMap2-" + vIndexBlocoLivre);
        //disco.doEscrever(vIndexBlocoLivre, bufferBitMap2);

        vIndexBlocoLivre = objBitmap.doGetIndexBlocoLivreEJaOcupa();
        System.out.println("teste-vIndexBlocoLivre-bufferRaiz-" + vIndexBlocoLivre);
        disco.doEscrever(vIndexBlocoLivre, bufferRaiz);
        objBitmap.doSaveBlocoBitmapParaDisco();
        System.out.println("objBitmap.doGetTotalBlocoOcupado() " + objBitmap.doGetTotalBlocoOcupado() + " vIndexBlocoLivre " + vIndexBlocoLivre);
    }

//#############################################################################
    public SistemaArquivos mount(Disco disco) throws Exception {
        byte[] bufferSuperBloco = new byte[SistemaArquivos.TAM_BLOCO_4K];
        disco.doLer(0, bufferSuperBloco);
        this.vSuperBloco = ObjSerializer.doDeserialize(bufferSuperBloco, SuperBlock.class);
        this.vSuperBloco.doInfoSuperBlock();
        this.vDisco = disco;
        return this;
    }

//#############################################################################
    public void mkdir(String pNovaPasta, String caminho) throws Exception {
        byte[] bufferDeLeitura;

        List<String> lista_dir = doGet_dir_niveis(caminho);

        bufferDeLeitura = new byte[Disco.TAM_SETOR_4K];

        if (this.vDisco.doLer(this.vSuperBloco.doGetIndexBlocoRaiz(), bufferDeLeitura) == -1) {
            System.out.println("teste-Erro ao tentar ler bloco raiz");
            return;
        }

        Tabela vTabelaFromDisco = ObjSerializer.doDeserialize(bufferDeLeitura, Tabela.class);

        int nivelPasta = 0;
        int vIndexBlocoAnterior = this.vSuperBloco.doGetIndexBlocoRaiz();
        int vIndexBlocoAtual = this.vSuperBloco.doGetIndexBlocoRaiz();
        int vIndexPastaEncontrada = -1;
        int vIndexRegistroLivre = -1;

        Bitmap objBitmap = new Bitmap(this.vSuperBloco, this.vDisco);
        String nomePastaNivelAtual = " ";

        if (lista_dir.size() == 1 && lista_dir.get(0).equals("/")) {
            System.out.println("Raiz-teste");
        } else {
            while (nivelPasta < lista_dir.size()) {
                nomePastaNivelAtual = lista_dir.get(nivelPasta);
                vIndexPastaEncontrada = vTabelaFromDisco.doGetIndexPastaProcurada(nomePastaNivelAtual);//pasta ou arquivo

                if (vIndexPastaEncontrada == -1) {
                    //System.out.println("teste- nivelPasta:-> " + nivelPasta + " nomePastaNivelAtual " + nomePastaNivelAtual + " caminhoComArquivo "+caminhoComArquivo);
                    System.out.println("\n teste-caminho: " + caminho);
                    System.out.println("############################################################");
                    System.out.println("############# ERRO CAMINHO NAO FOI ENCONTRADO!!! ###########");
                    System.out.println("############################################################");
                    return;
                    /*
                    caso quizesse criar o caminhoComArquivo recursivamente
                    
                    System.out.println("Erro Pasta nao encontrada nivelPasta:-> " + nivelPasta + " nomePastaNivelAtual " + nomePastaNivelAtual);
                    
                    vIndexBlocoAnteriorPasta = vIndexBlocoAtualPasta;
                    vIndexBlocoAtualPasta = this.doSetNovaEntradaTabela(vTabelaFromDisco, nomePastaNivelAtual, vIndexBlocoAtualPasta, objBitmap);
                    if (vIndexBlocoAtualPasta == -1) {
                        return;
                    } else {
                        System.out.println("vIndexPastaEncontrada " + vIndexPastaEncontrada + " vIndexBlocoAnteriorPasta " + vIndexBlocoAnteriorPasta + " vIndexBlocoAtualPasta " + vIndexBlocoAtualPasta);
                        bufferTabela = new byte[Disco.TAM_SETOR_4K];
                        this.vDisco.doLer(vIndexBlocoAtualPasta, bufferTabela);
                        vTabelaFromDisco = ObjSerializer.doDeserialize(bufferTabela, Tabela.class);
                    }
                     */
                } else {
                    vIndexBlocoAnterior = vIndexBlocoAtual;
                    vIndexBlocoAtual = vTabelaFromDisco.doGetIndexBlocoPastaFromIndex(vIndexPastaEncontrada);
                    if (vIndexBlocoAtual == -1) {
                        System.out.println("teste-ERRO achou indexPasta mas nao indexBlocoPasta, tem algo errado");//nunca deve ser impresso
                        return;
                    }

                    System.out.println("vIndexPastaEncontrada " + vIndexPastaEncontrada + " vIndexBlocoAnterior " + vIndexBlocoAnterior + " vIndexBlocoAtual " + vIndexBlocoAtual);
                    bufferDeLeitura = new byte[Disco.TAM_SETOR_4K];
                    this.vDisco.doLer(vIndexBlocoAtual, bufferDeLeitura);
                    vTabelaFromDisco = ObjSerializer.doDeserialize(bufferDeLeitura, Tabela.class);
                }
                nivelPasta++;
            }
        }

        this.doSetNovaEntradaTabela(vTabelaFromDisco, pNovaPasta, vIndexBlocoAtual, objBitmap, V_Constantes.TIPO_PASTA, -1);

        this.doMostrarTodosDiretorios();//teste
    }

//#############################################################################
    public int doSetNovaEntradaTabela(Tabela pTabela, String pPasta, int pIndexBlocoEntrada, Bitmap pObjBitmap, char tipo, int tamanhoArquivo) {
        int vIndexPastaEncontrada;
        int vIndexRegistroLivre;
        int vIndexBlocoNovo;
        if (pTabela != null) {
            vIndexPastaEncontrada = pTabela.doGetIndexPastaProcurada(pPasta);
            if (vIndexPastaEncontrada == -1) {
                vIndexRegistroLivre = pTabela.doGetIndexRegLivreRegistro();
                if (vIndexRegistroLivre == -1) {
                    System.out.println("Este diretorio esta Lotado e  nao pode mais receber entradas");
                } else {
                    vIndexBlocoNovo = pObjBitmap.doGetIndexBlocoLivreEJaOcupa();
                    if (vIndexBlocoNovo == -1) {
                        System.out.println("teste-Nao existe mais blocos livres disponiveis");
                    } else {
                        System.out.println("add-pIndexBlocoEntrada-" + pIndexBlocoEntrada + " vIndexBlocoNovo " + vIndexBlocoNovo + " novaPasta " + pPasta + " vIndexRegistroLivre " + vIndexRegistroLivre);
                        //public void doAddEntrada(int index, String nome, char tipo, int bloco, int tamanho) {
                        pTabela.doAddEntrada(vIndexRegistroLivre, pPasta, tipo, vIndexBlocoNovo, tamanhoArquivo);
                        byte[] bufferTabela = ObjSerializer.doSerializeToTamBloco(pTabela);
                        vDisco.doEscrever(pIndexBlocoEntrada, bufferTabela);//atualiza a pTabela que tem a entrada 
                        if (tipo == V_Constantes.TIPO_PASTA) {
                            Tabela novaTabela = new Tabela();
                            bufferTabela = ObjSerializer.doSerializeToTamBloco(novaTabela);
                            vDisco.doEscrever(vIndexBlocoNovo, bufferTabela);
                            pObjBitmap.doSaveBlocoBitmapParaDisco();
                            System.out.println("teste-objBitmap.doGetTotalBlocoOcupado() " + pObjBitmap.doGetTotalBlocoOcupado());
                        } else if (tipo == V_Constantes.TIPO_ARQUIVO) {
                            byte[] bufferNovoArquivo = Bitmap.doGetNewBlocoBitmapZerado();
                            vDisco.doEscrever(vIndexBlocoNovo, bufferNovoArquivo);//atualiza a pTabela que tem a entrada 
                            pObjBitmap.doSaveBlocoBitmapParaDisco();
                            System.out.println("teste-objBitmap.doGetTotalBlocoOcupado() " + pObjBitmap.doGetTotalBlocoOcupado());
                        } else {
                            System.out.println("###########################################");//nunca ocorre
                            System.out.println("teste-doSetNovaEntradaTabela-O tipo de entrada é invalido");//nunca ocorre
                            System.out.println("###########################################");//nunca ocorre
                        }

                        return vIndexBlocoNovo;
                    }
                }
            } else {
                System.out.println("teste-Diretorio ja existe nao é necessario adicionar novamente...");
                System.out.println("teste-vIndexPastaEncontrada: " + vIndexPastaEncontrada + " diretorio " + pPasta);
                System.out.println("teste-objBitmap.doGetTotalBlocoOcupado() " + pObjBitmap.doGetTotalBlocoOcupado());
                return -2;
            }
        } else {
            System.out.println("Erro-tabela deu null");
            System.out.println("Possivelmente voce mexeu na classe TABELA e alterou o Hash serializado");
            System.out.println("Delete disco.data e tente novamente");
            System.out.println("");
        }
        System.out.println("teste-objBitmap.doGetTotalBlocoOcupado() " + pObjBitmap.doGetTotalBlocoOcupado());
        return -1;
    }

//#############################################################################
    public String lsdir(String caminho) throws Exception {
        byte[] bufferDeLeitura;

        List<String> lista_dir = doGet_dir_niveis(caminho);

        bufferDeLeitura = new byte[Disco.TAM_SETOR_4K];

        if (this.vDisco.doLer(this.vSuperBloco.doGetIndexBlocoRaiz(), bufferDeLeitura) == -1) {
            System.out.println("teste-Erro ao tentar ler bloco raiz");
            return V_Constantes.MSG_ERRO;
        }

        Tabela vTabelaFromDisco = ObjSerializer.doDeserialize(bufferDeLeitura, Tabela.class);

        int nivelPasta = 0;
        int vIndexBlocoAnterior = this.vSuperBloco.doGetIndexBlocoRaiz();
        int vIndexBlocoAtual = this.vSuperBloco.doGetIndexBlocoRaiz();
        int vIndexPastaEncontrada = -1;
        int vIndexRegistroLivre = -1;
        String vNomeDiretorio = "";

        Bitmap objBitmap = new Bitmap(this.vSuperBloco, this.vDisco);
        String nomePastaNivelAtual = " ";

        if (lista_dir.size() == 1 && lista_dir.get(0).equals("/")) {
            vNomeDiretorio = lista_dir.get(0);
            //System.out.println("teste-Raiz-vNomeDiretorio " + vNomeDiretorio);

        } else {
            while (nivelPasta < lista_dir.size()) {
                nomePastaNivelAtual = lista_dir.get(nivelPasta);
                vIndexPastaEncontrada = vTabelaFromDisco.doGetIndexPastaProcurada(nomePastaNivelAtual);//pasta ou arquivo

                if (vIndexPastaEncontrada == -1) {
                    System.out.println("teste- nivelPasta:-> " + nivelPasta + " nomePastaNivelAtual " + nomePastaNivelAtual);
                    System.out.println("##########################################################");
                    System.out.println("############# ERRO PASTA NAO FOI ENCONTRADA!!! ###########");
                    System.out.println("##########################################################");
                    return V_Constantes.MSG_ERRO;

                } else {
                    vIndexBlocoAnterior = vIndexBlocoAtual;
                    vIndexBlocoAtual = vTabelaFromDisco.doGetIndexBlocoPastaFromIndex(vIndexPastaEncontrada);
                    if (vIndexBlocoAtual == -1) {
                        System.out.println("teste-ERRO achou indexPasta mas nao indexBlocoPasta, tem algo errado");//nunca deve ser impresso
                        return V_Constantes.MSG_ERRO;
                    } else {
                        vNomeDiretorio += "/" + nomePastaNivelAtual;
                        // System.out.println("teste-vNomeDiretorio " + vNomeDiretorio);
                    }

                    //System.out.println("teste-vIndexPastaEncontradaNoBlocoAnterior " + vIndexPastaEncontrada + " vIndexBlocoAnteriorPasta " + vIndexBlocoAnteriorPasta + " vIndexBlocoAtualPasta " + vIndexBlocoAtualPasta);
                    bufferDeLeitura = new byte[Disco.TAM_SETOR_4K];
                    this.vDisco.doLer(vIndexBlocoAtual, bufferDeLeitura);
                    vTabelaFromDisco = ObjSerializer.doDeserialize(bufferDeLeitura, Tabela.class);
                }
                nivelPasta++;
            }
        }

        vTabelaFromDisco.doMostrarTabela(vIndexBlocoAtual, vNomeDiretorio);
        return vNomeDiretorio;
    }

//#############################################################################
    public void rmdir(String caminho) throws Exception {
        byte[] bufferDeLeitura;
        byte[] bufferDeEscrita;
        List<String> lista_dir = doGet_dir_niveis(caminho);

        bufferDeLeitura = new byte[Disco.TAM_SETOR_4K];

        if (this.vDisco.doLer(this.vSuperBloco.doGetIndexBlocoRaiz(), bufferDeLeitura) == -1) {
            System.out.println("teste-Erro ao tentar ler bloco raiz");
            return;
        }

        Tabela vTabelaFromDisco = ObjSerializer.doDeserialize(bufferDeLeitura, Tabela.class);

        int nivelPasta = 0;
        int vIndexBlocoAnteriorPasta = this.vSuperBloco.doGetIndexBlocoRaiz();
        int vIndexBlocoAtualPasta = this.vSuperBloco.doGetIndexBlocoRaiz();
        int vIndexPastaEncontrada = -1;
        int vIndexRegistroLivre = -1;
        String vNomeDiretorio = "";

        Bitmap objBitmap = new Bitmap(this.vSuperBloco, this.vDisco);
        String nomePastaNivelAtual = " ";

        if (lista_dir.size() == 1 && lista_dir.get(0).equals("/")) {
            vNomeDiretorio = lista_dir.get(0);
            System.out.println("teste-Raiz-vNomeDiretorio " + vNomeDiretorio);
            System.out.println("##########################################################");
            System.out.println("###[RAIZ] A PASTA RAIZ NAO PODE SER DELETADA!! ###########");
            System.out.println("##########################################################");
            return;
        } else {
            while (nivelPasta < lista_dir.size()) {
                nomePastaNivelAtual = lista_dir.get(nivelPasta);
                vIndexPastaEncontrada = vTabelaFromDisco.doGetIndexPastaProcurada(nomePastaNivelAtual);//pasta ou arquivo

                if (vIndexPastaEncontrada == -1) {
                    System.out.println("teste- nivelPasta:-> " + nivelPasta + " nomePastaNivelAtual " + nomePastaNivelAtual);
                    System.out.println("##########################################################");
                    System.out.println("############# ERRO PASTA NAO FOI ENCONTRADA!!! ###########");
                    System.out.println("##########################################################");
                    return;

                } else {
                    vIndexBlocoAnteriorPasta = vIndexBlocoAtualPasta;
                    vIndexBlocoAtualPasta = vTabelaFromDisco.doGetIndexBlocoPastaFromIndex(vIndexPastaEncontrada);

                    if (vIndexBlocoAtualPasta == -1) {
                        System.out.println("teste-ERRO achou indexPasta mas nao indexBlocoPasta, tem algo errado");//nunca deve ser impresso
                        return;
                    } else {
                        vNomeDiretorio += "/" + nomePastaNivelAtual;
                        System.out.println("teste-vNomeDiretorio " + vNomeDiretorio);
                    }

                    System.out.println("vIndexPastaEncontrada " + vIndexPastaEncontrada + " vIndexBlocoAnteriorPasta " + vIndexBlocoAnteriorPasta + " vIndexBlocoAtualPasta " + vIndexBlocoAtualPasta);
                    bufferDeLeitura = new byte[Disco.TAM_SETOR_4K];
                    this.vDisco.doLer(vIndexBlocoAtualPasta, bufferDeLeitura);
                    vTabelaFromDisco = ObjSerializer.doDeserialize(bufferDeLeitura, Tabela.class);
                }
                nivelPasta++;
            }
        }

//#############################################################################
        System.out.println();
        System.out.println("--ANTES-teste-objBitmap.doGetTotalBlocoOcupado()" + objBitmap.doGetTotalBlocoOcupado());
        objBitmap.doSetIndexBlocoParaLivre(vIndexBlocoAtualPasta);
        objBitmap.doSaveBlocoBitmapParaDisco();
        Map<String, Integer> vListaPastaAtual = vTabelaFromDisco.doGetListaPastasOuArquivos(V_Constantes.TIPO_PASTA);
        Map<String, Integer> vLista_arq_atual = vTabelaFromDisco.doGetListaPastasOuArquivos(V_Constantes.TIPO_ARQUIVO);
        this.doRmSubDir(vListaPastaAtual, vLista_arq_atual, objBitmap);
        System.out.println();
        System.out.println("--DEPOIS-teste-objBitmap.doGetTotalBlocoOcupado()" + objBitmap.doGetTotalBlocoOcupado());
//##############################################################################
        bufferDeLeitura = new byte[Disco.TAM_SETOR_4K];
        this.vDisco.doLer(vIndexBlocoAnteriorPasta, bufferDeLeitura);
        vTabelaFromDisco = ObjSerializer.doDeserialize(bufferDeLeitura, Tabela.class);
        vTabelaFromDisco.doRemoveRegistro(vIndexPastaEncontrada);

        bufferDeEscrita = ObjSerializer.doSerializeToTamBloco(vTabelaFromDisco);
        this.vDisco.doEscrever(vIndexBlocoAnteriorPasta, bufferDeEscrita);
        vTabelaFromDisco.doMostrarTabela(vIndexBlocoAtualPasta, vNomeDiretorio);
    }

    private void doRmSubDir(Map<String, Integer> pListaPastaAtual, Map<String, Integer> pLista_arq_atual, Bitmap objBitmap) throws Exception {
        for (Map.Entry<String, Integer> entry : pLista_arq_atual.entrySet()) {
            String vArquivoNome = entry.getKey();
            int vArquivoBloco = entry.getValue().intValue();

            if (V_Constantes.vARQUIVOS_ABERTO_.doGetArquivoAberto(vArquivoNome, vArquivoBloco) != null) {
                V_Constantes.vARQUIVOS_ABERTO_.doCloseArquivo(vArquivoNome, vArquivoBloco);
                System.out.println("teste-doCloseArquivo " + vArquivoNome);
            }

            objBitmap.doSetIndexBlocoParaLivre(vArquivoBloco);
            System.out.println("teste-deletando-vArquivoNome " + vArquivoNome + " vArquivoBloco " + vArquivoBloco);

        }

        for (Map.Entry<String, Integer> entry : pListaPastaAtual.entrySet()) {
            String pasta = entry.getKey();
            int indexBloco = entry.getValue().intValue();
            System.out.println("teste-pasta " + pasta + " indexBloco " + indexBloco);

            byte[] bufferLeitura = new byte[SistemaArquivos.TAM_BLOCO_4K];
            this.vDisco.doLer(indexBloco, bufferLeitura);
            Tabela tab_dir_atual = ObjSerializer.doDeserialize(bufferLeitura, Tabela.class);

            Map<String, Integer> VLista_dir_atual = tab_dir_atual.doGetListaPastasOuArquivos(V_Constantes.TIPO_PASTA);
            Map<String, Integer> vLista_arq_atual = tab_dir_atual.doGetListaPastasOuArquivos(V_Constantes.TIPO_ARQUIVO);

            objBitmap.doSetIndexBlocoParaLivre(indexBloco);

            if (VLista_dir_atual.size() > 0) {
                doRmSubDir(VLista_dir_atual, vLista_arq_atual, objBitmap);
            }

        }
        objBitmap.doSaveBlocoBitmapParaDisco();//salva todos
    }

//#############################################################################
    public void file_create(String pNomeArquivo, String pCaminho) throws Exception {
        byte[] bufferDeLeitura;

        List<String> lista_dir = doGet_dir_niveis(pCaminho);

        bufferDeLeitura = new byte[Disco.TAM_SETOR_4K];

        if (this.vDisco.doLer(this.vSuperBloco.doGetIndexBlocoRaiz(), bufferDeLeitura) == -1) {
            System.out.println("teste-Erro ao tentar ler bloco raiz");
            return;
        }

        Tabela vTabelaFromDisco = ObjSerializer.doDeserialize(bufferDeLeitura, Tabela.class);

        int nivelPasta = 0;
        int vIndexBlocoAnterior = this.vSuperBloco.doGetIndexBlocoRaiz();
        int vIndexBlocoAtual = this.vSuperBloco.doGetIndexBlocoRaiz();
        int vIndexPastaEncontrada = -1;
        int vIndexRegistroLivre = -1;

        Bitmap objBitmap = new Bitmap(this.vSuperBloco, this.vDisco);
        String nomePastaNivelAtual = " ";

        if (lista_dir.size() == 1 && lista_dir.get(0).equals("/")) {
            System.out.println("Raiz-teste");
        } else {
            while (nivelPasta < lista_dir.size()) {
                nomePastaNivelAtual = lista_dir.get(nivelPasta);
                vIndexPastaEncontrada = vTabelaFromDisco.doGetIndexPastaProcurada(nomePastaNivelAtual);//pasta ou arquivo

                if (vIndexPastaEncontrada == -1) {
                    //System.out.println("teste- nivelPasta:-> " + nivelPasta + " nomePastaNivelAtual " + nomePastaNivelAtual + " pCaminho "+pCaminho);
                    System.out.println("\n teste-caminho: " + pCaminho);
                    System.out.println("############################################################");
                    System.out.println("############# ERRO CAMINHO NAO FOI ENCONTRADO!!! ###########");
                    System.out.println("############################################################");
                    return;
                    /*
                    caso quizesse criar o pCaminho recursivamente
                    
                    System.out.println("Erro Pasta nao encontrada nivelPasta:-> " + nivelPasta + " nomePastaNivelAtual " + nomePastaNivelAtual);
                    
                    vIndexBlocoAnteriorPasta = vIndexBlocoAtualPasta;
                    vIndexBlocoAtualPasta = this.doSetNovaEntradaTabela(vTabelaFromDisco, nomePastaNivelAtual, vIndexBlocoAtualPasta, objBitmap);
                    if (vIndexBlocoAtualPasta == -1) {
                        return;
                    } else {
                        System.out.println("vIndexPastaEncontrada " + vIndexPastaEncontrada + " vIndexBlocoAnteriorPasta " + vIndexBlocoAnteriorPasta + " vIndexBlocoAtualPasta " + vIndexBlocoAtualPasta);
                        bufferTabela = new byte[Disco.TAM_SETOR_4K];
                        this.vDisco.doLer(vIndexBlocoAtualPasta, bufferTabela);
                        vTabelaFromDisco = ObjSerializer.doDeserialize(bufferTabela, Tabela.class);
                    }
                     */
                } else {
                    vIndexBlocoAnterior = vIndexBlocoAtual;
                    vIndexBlocoAtual = vTabelaFromDisco.doGetIndexBlocoPastaFromIndex(vIndexPastaEncontrada);
                    if (vIndexBlocoAtual == -1) {
                        System.out.println("teste-ERRO achou indexPasta mas nao indexBlocoPasta, tem algo errado");//nunca deve ser impresso
                        return;
                    }

                    System.out.println("vIndexPastaEncontrada " + vIndexPastaEncontrada + " vIndexBlocoAnterior " + vIndexBlocoAnterior + " vIndexBlocoAtual " + vIndexBlocoAtual);
                    bufferDeLeitura = new byte[Disco.TAM_SETOR_4K];
                    this.vDisco.doLer(vIndexBlocoAtual, bufferDeLeitura);
                    vTabelaFromDisco = ObjSerializer.doDeserialize(bufferDeLeitura, Tabela.class);
                }
                nivelPasta++;
            }
        }

        int indexBlocoNovoArquivo = this.doSetNovaEntradaTabela(vTabelaFromDisco, pNomeArquivo, vIndexBlocoAtual, objBitmap, V_Constantes.TIPO_ARQUIVO, 0);//todo

        //salvar conteudo vazio em um bloco novo 
        this.doMostrarTodosDiretorios();//teste
    }

//#############################################################################
    public void file_delete(String caminho) throws Exception {

        byte[] bufferDeLeitura;
        byte[] bufferDeEscrita;
        List<String> lista_dir = doGet_dir_niveis(caminho);

        bufferDeLeitura = new byte[Disco.TAM_SETOR_4K];

        if (this.vDisco.doLer(this.vSuperBloco.doGetIndexBlocoRaiz(), bufferDeLeitura) == -1) {
            System.out.println("teste-Erro ao tentar ler bloco raiz");
            return;
        }

        Tabela vTabelaFromDisco = ObjSerializer.doDeserialize(bufferDeLeitura, Tabela.class);

        int nivelPasta = 0;
        int vIndexBlocoAnteriorPasta = this.vSuperBloco.doGetIndexBlocoRaiz();
        int vIndexBlocoAtualPasta = this.vSuperBloco.doGetIndexBlocoRaiz();
        int vIndexPastaEncontrada = -1;
        int vIndexRegistroLivre = -1;
        String vNomeDiretorio = "";

        Bitmap objBitmap = new Bitmap(this.vSuperBloco, this.vDisco);
        String nomePastaNivelAtual = " ";

        if (lista_dir.size() == 1 && lista_dir.get(0).equals("/")) {
            vNomeDiretorio = lista_dir.get(0);
            System.out.println("teste-Raiz-vNomeDiretorio " + vNomeDiretorio);

        } else {
            while (nivelPasta < (lista_dir.size() - 1)) {
                nomePastaNivelAtual = lista_dir.get(nivelPasta);
                vIndexPastaEncontrada = vTabelaFromDisco.doGetIndexPastaProcurada(nomePastaNivelAtual);//pasta ou arquivo

                if (vIndexPastaEncontrada == -1) {
                    System.out.println("teste- nivelPasta:-> " + nivelPasta + " nomePastaNivelAtual " + nomePastaNivelAtual);
                    System.out.println("##########################################################");
                    System.out.println("############# ERRO PASTA NAO FOI ENCONTRADA!!! ###########");
                    System.out.println("##########################################################");
                    return;

                } else {
                    vIndexBlocoAnteriorPasta = vIndexBlocoAtualPasta;
                    vIndexBlocoAtualPasta = vTabelaFromDisco.doGetIndexBlocoPastaFromIndex(vIndexPastaEncontrada);

                    if (vIndexBlocoAtualPasta == -1) {
                        System.out.println("teste-ERRO achou indexPasta mas nao indexBlocoPasta, tem algo errado");//nunca deve ser impresso
                        return;
                    } else {
                        vNomeDiretorio += "/" + nomePastaNivelAtual;
                        System.out.println("teste-vNomeDiretorio " + vNomeDiretorio);
                    }

                    System.out.println("vIndexPastaEncontrada " + vIndexPastaEncontrada + " vIndexBlocoAnteriorPasta " + vIndexBlocoAnteriorPasta + " vIndexBlocoAtualPasta " + vIndexBlocoAtualPasta);
                    bufferDeLeitura = new byte[Disco.TAM_SETOR_4K];
                    this.vDisco.doLer(vIndexBlocoAtualPasta, bufferDeLeitura);
                    vTabelaFromDisco = ObjSerializer.doDeserialize(bufferDeLeitura, Tabela.class);
                }
                nivelPasta++;
            }
        }

        String vNomeArquivo = lista_dir.get(lista_dir.size() - 1);
        System.out.println("Teste-file-delete-vNomeArquivo: " + vNomeArquivo);
        int vIndexArquivoEncontrado = vTabelaFromDisco.doGetIndexArquivoProcurada(vNomeArquivo);
        if (vIndexArquivoEncontrado != -1) {

            int vIndexBlocoArquivo = vTabelaFromDisco.doGetIndexBlocoArquivoFromIndex(vIndexArquivoEncontrado);

            if (vIndexBlocoArquivo != -1) {
                //#############################################################################
                System.out.println();
                System.out.println("--ANTES-teste-objBitmap.doGetTotalBlocoOcupado()" + objBitmap.doGetTotalBlocoOcupado());
                vTabelaFromDisco.doRemoveRegistro(vIndexArquivoEncontrado);

                if (V_Constantes.vARQUIVOS_ABERTO_.doGetArquivoAberto(vNomeArquivo, vIndexBlocoArquivo) != null) {
                    V_Constantes.vARQUIVOS_ABERTO_.doCloseArquivo(vNomeArquivo, vIndexBlocoArquivo);
                    System.out.println("teste-doCloseArquivo " + vNomeArquivo);
                }

                objBitmap.doSetIndexBlocoParaLivre(vIndexBlocoArquivo);
                objBitmap.doSaveBlocoBitmapParaDisco();

                bufferDeEscrita = ObjSerializer.doSerializeToTamBloco(vTabelaFromDisco);
                this.vDisco.doEscrever(vIndexBlocoAtualPasta, bufferDeEscrita);
                System.out.println();
                System.out.println("--DEPOIS-teste-objBitmap.doGetTotalBlocoOcupado()" + objBitmap.doGetTotalBlocoOcupado());
                vTabelaFromDisco.doMostrarTabela(vIndexBlocoAtualPasta, vNomeDiretorio);
                //##############################################################################
            }
        } else {
            System.out.println("##########################################################");
            System.out.println("############# ERRO ARQUIVO NAO FOI ENCONTRADO!!! ###########");
            System.out.println("##########################################################");

        }

    }

//#############################################################################
    public void file_open(String pNomeArquivo, String pCaminho) throws Exception {
        if (V_Constantes.vARQUIVOS_ABERTO_.doGetArquivoAberto(pNomeArquivo, pCaminho) != null) {
            System.out.println("##########################################################");
            System.out.println("############# O ARQUIVO JA ESTA ABERTO!!! ###########");
            System.out.println("##########################################################");
            return;
        }

        byte[] bufferDeLeitura;
        byte[] bufferDeEscrita;
        List<String> lista_dir = doGet_dir_niveis(pCaminho);

        bufferDeLeitura = new byte[Disco.TAM_SETOR_4K];

        if (this.vDisco.doLer(this.vSuperBloco.doGetIndexBlocoRaiz(), bufferDeLeitura) == -1) {
            System.out.println("teste-Erro ao tentar ler bloco raiz");
            return;
        }

        Tabela vTabelaFromDisco = ObjSerializer.doDeserialize(bufferDeLeitura, Tabela.class);

        int nivelPasta = 0;
        int vIndexBlocoAnteriorPasta = this.vSuperBloco.doGetIndexBlocoRaiz();
        int vIndexBlocoAtualPasta = this.vSuperBloco.doGetIndexBlocoRaiz();
        int vIndexPastaEncontrada = -1;
        int vIndexRegistroLivre = -1;
        String vNomeDiretorio = "";

        Bitmap objBitmap = new Bitmap(this.vSuperBloco, this.vDisco);
        String nomePastaNivelAtual = " ";

        if (lista_dir.size() == 1 && lista_dir.get(0).equals("/")) {
            vNomeDiretorio = lista_dir.get(0);
            System.out.println("teste-Raiz-vNomeDiretorio " + vNomeDiretorio);

        } else {
            while (nivelPasta < lista_dir.size()) {
                nomePastaNivelAtual = lista_dir.get(nivelPasta);
                vIndexPastaEncontrada = vTabelaFromDisco.doGetIndexPastaProcurada(nomePastaNivelAtual);//pasta ou arquivo

                if (vIndexPastaEncontrada == -1) {
                    System.out.println("teste- nivelPasta:-> " + nivelPasta + " nomePastaNivelAtual " + nomePastaNivelAtual);
                    System.out.println("##########################################################");
                    System.out.println("############# ERRO PASTA NAO FOI ENCONTRADA!!! ###########");
                    System.out.println("##########################################################");
                    return;

                } else {
                    vIndexBlocoAnteriorPasta = vIndexBlocoAtualPasta;
                    vIndexBlocoAtualPasta = vTabelaFromDisco.doGetIndexBlocoPastaFromIndex(vIndexPastaEncontrada);

                    if (vIndexBlocoAtualPasta == -1) {
                        System.out.println("teste-ERRO achou indexPasta mas nao indexBlocoPasta, tem algo errado");//nunca deve ser impresso
                        return;
                    } else {
                        vNomeDiretorio += "/" + nomePastaNivelAtual;
                        System.out.println("teste-vNomeDiretorio " + vNomeDiretorio);
                    }

                    System.out.println("vIndexPastaEncontrada " + vIndexPastaEncontrada + " vIndexBlocoAnteriorPasta " + vIndexBlocoAnteriorPasta + " vIndexBlocoAtualPasta " + vIndexBlocoAtualPasta);
                    bufferDeLeitura = new byte[Disco.TAM_SETOR_4K];
                    this.vDisco.doLer(vIndexBlocoAtualPasta, bufferDeLeitura);
                    vTabelaFromDisco = ObjSerializer.doDeserialize(bufferDeLeitura, Tabela.class);
                }
                nivelPasta++;
            }
        }

        String vNomeArquivo = pNomeArquivo;
        System.out.println("Teste-file-Open-vNomeArquivo: " + vNomeArquivo);
        int vIndexArquivoEncontrado = vTabelaFromDisco.doGetIndexArquivoProcurada(vNomeArquivo);
        if (vIndexArquivoEncontrado != -1) {

            int vIndexBlocoArquivo = vTabelaFromDisco.doGetIndexBlocoArquivoFromIndex(vIndexArquivoEncontrado);

            if (vIndexBlocoArquivo != -1) {
                //#############################################################################
                V_Constantes.vARQUIVOS_ABERTO_.doOpenArquivo(vNomeArquivo, vNomeDiretorio, vIndexBlocoAtualPasta, vIndexBlocoArquivo, vIndexArquivoEncontrado);
                Arquivo vArquivo = V_Constantes.vARQUIVOS_ABERTO_.doGetArquivoAberto(vNomeArquivo, vNomeDiretorio);
                if (vArquivo != null) {
                    System.out.println("##########################################################");
                    System.out.println("############# O ARQUIVO FOI ABERTO !!! ###########");
                    System.out.println("##########################################################");

                    System.out.println("teste-file_open-conteudo-Arquivo...");
                    System.out.println("##########################################################");
                    byte[] bufferConteudo = new byte[Disco.TAM_SETOR_4K];
                    this.vDisco.doLer(vArquivo.vIndexBlocoDados, bufferConteudo);
                    Comandos.doGetStringFormatada80bylinha(new String(bufferConteudo));//teste
                    System.out.println("##########################################################");
                }
            }
        } else {
            System.out.println("##########################################################");
            System.out.println("############# ERRO ARQUIVO NAO FOI ENCONTRADO!!! ###########");
            System.out.println("##########################################################");

        }
    }

//#############################################################################
    private void file_close(String pNomeArquivo, String pCaminho) throws Exception {

        byte[] bufferDeLeitura;
        byte[] bufferDeEscrita;
        List<String> lista_dir = doGet_dir_niveis(pCaminho);

        bufferDeLeitura = new byte[Disco.TAM_SETOR_4K];

        if (this.vDisco.doLer(this.vSuperBloco.doGetIndexBlocoRaiz(), bufferDeLeitura) == -1) {
            System.out.println("teste-Erro ao tentar ler bloco raiz");
            return;
        }

        Tabela vTabelaFromDisco = ObjSerializer.doDeserialize(bufferDeLeitura, Tabela.class);

        int nivelPasta = 0;
        int vIndexBlocoAnteriorPasta = this.vSuperBloco.doGetIndexBlocoRaiz();
        int vIndexBlocoAtualPasta = this.vSuperBloco.doGetIndexBlocoRaiz();
        int vIndexPastaEncontrada = -1;
        int vIndexRegistroLivre = -1;
        String vNomeDiretorio = "";

        Bitmap objBitmap = new Bitmap(this.vSuperBloco, this.vDisco);
        String nomePastaNivelAtual = " ";

        if (lista_dir.size() == 1 && lista_dir.get(0).equals("/")) {
            vNomeDiretorio = lista_dir.get(0);
            System.out.println("teste-Raiz-vNomeDiretorio " + vNomeDiretorio);

        } else {
            while (nivelPasta < lista_dir.size()) {
                nomePastaNivelAtual = lista_dir.get(nivelPasta);
                vIndexPastaEncontrada = vTabelaFromDisco.doGetIndexPastaProcurada(nomePastaNivelAtual);//pasta ou arquivo

                if (vIndexPastaEncontrada == -1) {
                    System.out.println("teste- nivelPasta:-> " + nivelPasta + " nomePastaNivelAtual " + nomePastaNivelAtual);
                    System.out.println("##########################################################");
                    System.out.println("############# ERRO PASTA NAO FOI ENCONTRADA!!! ###########");
                    System.out.println("##########################################################");
                    return;

                } else {
                    vIndexBlocoAnteriorPasta = vIndexBlocoAtualPasta;
                    vIndexBlocoAtualPasta = vTabelaFromDisco.doGetIndexBlocoPastaFromIndex(vIndexPastaEncontrada);

                    if (vIndexBlocoAtualPasta == -1) {
                        System.out.println("teste-ERRO achou indexPasta mas nao indexBlocoPasta, tem algo errado");//nunca deve ser impresso
                        return;
                    } else {
                        vNomeDiretorio += "/" + nomePastaNivelAtual;
                        System.out.println("teste-vNomeDiretorio " + vNomeDiretorio);
                    }

                    System.out.println("vIndexPastaEncontrada " + vIndexPastaEncontrada + " vIndexBlocoAnteriorPasta " + vIndexBlocoAnteriorPasta + " vIndexBlocoAtualPasta " + vIndexBlocoAtualPasta);
                    bufferDeLeitura = new byte[Disco.TAM_SETOR_4K];
                    this.vDisco.doLer(vIndexBlocoAtualPasta, bufferDeLeitura);
                    vTabelaFromDisco = ObjSerializer.doDeserialize(bufferDeLeitura, Tabela.class);
                }
                nivelPasta++;
            }
        }

        String vNomeArquivo = pNomeArquivo;
        System.out.println("Teste-file-Close-vNomeArquivo: " + vNomeArquivo);
        int vIndexArquivoEncontrado = vTabelaFromDisco.doGetIndexArquivoProcurada(vNomeArquivo);
        if (vIndexArquivoEncontrado != -1) {

            int vIndexBlocoArquivo = vTabelaFromDisco.doGetIndexBlocoArquivoFromIndex(vIndexArquivoEncontrado);

            if (vIndexBlocoArquivo != -1) {
                //#############################################################################
                V_Constantes.vARQUIVOS_ABERTO_.doCloseArquivo(vNomeArquivo, vNomeDiretorio);
                if (V_Constantes.vARQUIVOS_ABERTO_.doGetArquivoAberto(vNomeArquivo, vNomeDiretorio) == null) {
                    System.out.println("##########################################################");
                    System.out.println("############# O ARQUIVO FOI FECHADO !!! ###########");
                    System.out.println("##########################################################");
                }
            }
        } else {
            System.out.println("##########################################################");
            System.out.println("############# ERRO ARQUIVO NAO FOI ENCONTRADO!!! ###########");
            System.out.println("##########################################################");

        }
    }

//#############################################################################
    public void file_write(Arquivo pArquivo, int pIndexPos, String pData) throws Exception {
        byte[] bufferConteudo = new byte[Disco.TAM_SETOR_4K];
        this.vDisco.doLer(pArquivo.vIndexBlocoDados, bufferConteudo);

        byte[] bufferData = pData.getBytes();

        //for (int i = pIndexPos; i < pData_len; i++) {
        System.out.println("pIndexPos " + pIndexPos + " pData_len " + pData.length() + " bufferDeLeitura.length " + bufferConteudo.length);
        if ((pIndexPos + pData.length()) > bufferConteudo.length) {
            System.out.println("if((pIndexPos+pData_len)> bufferDeLeitura.length){");
            return;
        }

        for (int i = 0; i < pData.length(); i++) {
            bufferConteudo[pIndexPos + i] = bufferData[i];
        }

        this.vDisco.doEscrever(pArquivo.vIndexBlocoDados, bufferConteudo);

        byte[] bufferTabela = new byte[Disco.TAM_SETOR_4K];
        this.vDisco.doLer(pArquivo.vIndexBlocoEntradaPasta, bufferTabela);

        Tabela vTabelaFromDisco = ObjSerializer.doDeserialize(bufferTabela, Tabela.class);
        System.out.println("-; " + new String(bufferConteudo));
        int vNovoTam = String_Util.doGetTamanhoArquivo(bufferConteudo);
        System.out.println("teste-vNovoTam " + vNovoTam + " pArquivo.vIndexDoArqNaTabela " + pArquivo.vIndexDoArqNaTabela);
        vTabelaFromDisco.doSetTamanhoFromIndex(pArquivo.vIndexDoArqNaTabela, vNovoTam);
        bufferTabela = ObjSerializer.doSerializeToTamBloco(vTabelaFromDisco);
        this.vDisco.doEscrever(pArquivo.vIndexBlocoEntradaPasta, bufferTabela);

        //System.out.println("teste-conteudoGravado-bufferData-use a rolagem-> \n" + new String(bufferConteudo));
        System.out.println("--TESTE--");
        System.out.println("#####################################################");
        Comandos.doGetStringFormatada80bylinha(new String(bufferConteudo));
        System.out.println("#####################################################");

    }

//#############################################################################
    public String file_read(Arquivo pArquivo, int pIndexPos, int pData_len) {
        byte[] bufferDeLeitura = new byte[Disco.TAM_SETOR_4K];
        this.vDisco.doLer(pArquivo.vIndexBlocoDados, bufferDeLeitura);

        if ((pIndexPos + pData_len) > bufferDeLeitura.length) {
            System.out.println("leitura invalida((pIndexPos+pData_len)> bufferDeLeitura.length)");
            return null;
        }
        StringBuffer sb = new StringBuffer();

        for (int i = 0; i < pData_len; i++) {
            sb.append((char) bufferDeLeitura[pIndexPos + i]);
        }

        System.out.println("teste-pArquivo.vIndexBlocoDados " + pArquivo.vIndexBlocoDados);
        System.out.println("--TESTE--");
        System.out.println("#####################################################");
        Comandos.doGetStringFormatada80bylinha(new String(bufferDeLeitura));
        System.out.println("#####################################################");
        return sb.toString();

    }

//#############################################################################
    public void doMostrarTodosDiretorios() throws Exception {//TODO ajustar

        Bitmap objBitmap = new Bitmap(this.vSuperBloco, this.vDisco);
        System.out.println("teste-objBitmap.doGetTotalBlocoOcupado()" + objBitmap.doGetTotalBlocoOcupado());
        int raiz = 3;
        byte[] bufferDeSaidaDeDados = new byte[SistemaArquivos.TAM_BLOCO_4K];
        this.vDisco.doLer(raiz, bufferDeSaidaDeDados);
        Tabela vTabelaAtual = ObjSerializer.doDeserialize(bufferDeSaidaDeDados, Tabela.class);
        Map<String, Integer> vListaPastaAtual = vTabelaAtual.doGetListaPastasOuArquivos(V_Constantes.TIPO_PASTA);
        String vPastaAtual = lsdir("/");
        //System.out.println("teste-vListaPastaAtual.size() " + vListaPastaAtual.size());

        doShowDirs(vListaPastaAtual, vPastaAtual, vTabelaAtual);
    }

    private void doShowDirs(Map<String, Integer> lista_pasta, String pastaAnterior, Tabela tab_anterior) throws Exception {
        // System.out.println("teste-recusivo-dodirs-pastaAnterior " + pastaAnterior);
        for (Map.Entry<String, Integer> entry : lista_pasta.entrySet()) {
            String pasta = entry.getKey();
            int indexBloco = entry.getValue().intValue();
            //System.out.println("teste-pasta " + pasta + " indexBloco " + indexBloco);

            byte[] bufferLeitura = new byte[SistemaArquivos.TAM_BLOCO_4K];
            this.vDisco.doLer(indexBloco, bufferLeitura);
            Tabela tab_dir_atual = ObjSerializer.doDeserialize(bufferLeitura, Tabela.class);
            Map<String, Integer> lista_dir_atual = tab_dir_atual.doGetListaPastasOuArquivos(V_Constantes.TIPO_PASTA);

            String vDirAtual = pastaAnterior + pasta + "/";
            lsdir(vDirAtual);

            if (lista_dir_atual.size() > 0) {
                doShowDirs(lista_dir_atual, vDirAtual, tab_dir_atual);
            }

        }
    }

//#############################################################################
    public List<String> doGet_dir_niveis(String caminho) {
        //String dir = "/hom/dir/dsa/";
        String[] dirV = caminho.split("/");

        List<String> dirCaminho = new ArrayList<String>();

        for (int i = 0; i < dirV.length; i++) {
            if (dirV[i].length() > 0) {
                dirCaminho.add(dirV[i].toUpperCase());
            }
            //System.out.println("teste-"+dirV[i] + " - " + dirV[i].length());
        }

        if (dirCaminho.isEmpty()) {
            dirCaminho.add("/");
        }
        return dirCaminho;
    }

//#############################################################################    
    public static void main(String[] args) {
        SistemaArquivos s = new SistemaArquivos();
        System.out.println("teste-oi" + s.doGet_dir_niveis("/abc/def/a.d"));
        System.out.println("teste-oi" + s.doGet_dir_niveis("abc"));
        System.out.println("teste-oi" + s.doGet_dir_niveis("/"));
    }

}

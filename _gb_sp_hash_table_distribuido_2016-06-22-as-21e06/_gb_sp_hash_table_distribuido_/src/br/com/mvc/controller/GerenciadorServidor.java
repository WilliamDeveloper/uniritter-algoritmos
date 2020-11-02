package br.com.mvc.controller;

import br.com.system.config.V_Constantes;
import br.com.mvc.model.ComandoRemoto;
import br.com.mvc.model.Servidor;
import br.com.utils.HashString;
import br.com.utils.ParserJSON;
import br.com.utils.RemoteSocketCliente;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.PrintWriter;
import java.net.ConnectException;
import java.net.Socket;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public class GerenciadorServidor {

    private Map<String, Servidor> mapServidores;

//#############################################################################
    public GerenciadorServidor() {
        String caminhoDoArquivo = V_Constantes.CAMINHO_ARQUIVO_SERVERS;
        this.mapServidores = ParserJSON.fromJSONFiletoMap(caminhoDoArquivo, V_Constantes.TIPO_MAP_SERVIDOR);
    }

//#############################################################################
    public Map<String, Servidor> getMapServidores() {
        return this.mapServidores;
    }

//#############################################################################
    public void setMapServidores(Map<String, Servidor> mapServidores) {
        this.mapServidores = mapServidores;
    }

//#############################################################################
    public Servidor getServerFromRangeKey(String chave) {
        for (Map.Entry<String, Servidor> entry : this.mapServidores.entrySet()) {
            Servidor servidor = entry.getValue();
            int hashStr = HashString.getIntHashStr(chave);
            if (hashStr >= Integer.valueOf(servidor.getServerInfo().vHashRangeStart) && hashStr <= Integer.valueOf(servidor.getServerInfo().vHashRangeEnd)) {
                return servidor;
            }
        }
        return null;
    }

//#############################################################################
    public Servidor getServerFromIndice(String indice) {
        return this.mapServidores.get(indice);
    }

//#############################################################################
    public ComandoRemoto sendClienteToServer(ComandoRemoto cr_envio) {
        Servidor servidor = this.getServerFromRangeKey(cr_envio.vChave);
        cr_envio.vServerInfo = servidor.getServerInfo();
        cr_envio.vTipo = V_Constantes.TIPO_CLIENTE;
        String mensagemRecebida = null;
        ComandoRemoto cr_resposta = null;

        if (servidor != null) {
            String TO_ip = servidor.getServerInfo().vIP;
            int TO_port = Integer.valueOf(servidor.getServerInfo().vPorta);

            try {

                RemoteSocketCliente clienteSocket = new RemoteSocketCliente(TO_ip, TO_port);
                clienteSocket.enviar(cr_envio);
                mensagemRecebida = clienteSocket.receber();

                System.out.println("\n teste-mensagemRecebida:" + mensagemRecebida);//teste

                cr_resposta = ParserJSON.fromJSONtoObj(mensagemRecebida, ComandoRemoto.class);

            } catch (Exception ex) {
                //Logger.getLogger(GerenciadorServidor.class.getName()).log(Level.SEVERE, null, ex);
                cr_resposta = new ComandoRemoto();
                cr_resposta.vAcao = V_Constantes.MSG_ERRO_CONEXAO_SERVER;
            }
        } else {
            //se aparecer é por que deu errado o rehash
            cr_resposta = new ComandoRemoto();
            cr_resposta.vAcao = V_Constantes.MSG_ERRO_SERVIDOR_NAO_ENCONTRADO;
        }

        return cr_resposta;
    }

//#############################################################################
    public ComandoRemoto sendServerToServer(ComandoRemoto cr_envio, Servidor toServidor) {
        cr_envio.vTipo = V_Constantes.TIPO_SERVER;
        String mensagemRecebida = null;
        ComandoRemoto cr_resposta = null;

        if (toServidor != null) {
            String TO_nome = toServidor.getServerInfo().vNome;
            String TO_ip = toServidor.getServerInfo().vIP;
            int TO_port = Integer.valueOf(toServidor.getServerInfo().vPorta);

            try {

                RemoteSocketCliente clienteSocket = new RemoteSocketCliente(TO_ip, TO_port);
                clienteSocket.enviar(cr_envio);
                mensagemRecebida = clienteSocket.receber();
                System.out.println("\n teste-mensagemRecebida:" + mensagemRecebida);//teste

                cr_resposta = ParserJSON.fromJSONtoObj(mensagemRecebida, ComandoRemoto.class);

            } catch (Exception ex) {
                //Logger.getLogger(GerenciadorServidor.class.getName()).log(Level.SEVERE, null, ex);
                cr_resposta = new ComandoRemoto();
                cr_resposta.vAcao = V_Constantes.MSG_ERRO_CONEXAO_SERVER;
            }
        }
        return cr_resposta;
    }

//#############################################################################
    public List<ComandoRemoto> getAllServerInfo(Servidor serverFrom) {
        int acumulador = 0;
        //String serverQueRequisitou = serverFrom.vServerInfo.vNome;
        List<ComandoRemoto> listaDeRetorno = new ArrayList<ComandoRemoto>();

        for (int i = 0; i < this.mapServidores.size(); i++) {
            ComandoRemoto cr_envio = new ComandoRemoto();
            ComandoRemoto cr_retorno = null;

            // System.out.println("oi-"+i);//teste
            if (serverFrom.getServerInfo().vNome.equals(String.valueOf(i))) {
                cr_retorno = serverFrom.doPrepareServerInfo();
                //System.out.println("if"+ParserJSON.fromObjToJSON(cr_retorno));//teste
            } else {
                cr_envio.vAcao = V_Constantes.ACAO_SERVER_INFO;
                Servidor serverToSend = this.mapServidores.get(String.valueOf(i));
                cr_retorno = sendServerToServer(cr_envio, serverToSend);
                //System.out.println("else");//teste
            }

            listaDeRetorno.add(cr_retorno);
        }

        return listaDeRetorno;
    }

    public void mostrarDistribuicaoChaves() {
        System.out.println("\n---------------------------------");
        System.out.println();
        for (Map.Entry<String, Servidor> entry : this.mapServidores.entrySet()) {
            String chave = entry.getKey();
            Servidor valor = entry.getValue();
            System.out.println("Servidor=" + chave + ",_keyRangeStart=" + valor.getServerInfo().vHashRangeStart + ",_keyRangeStart=" + valor.getServerInfo().vHashRangeEnd);
        }
        System.out.println("---------------------------------");
    }

    public void check_rehash(Servidor servidor, ComandoRemoto cr_retorno) {

        List<ComandoRemoto> listaServerInfo = this.getAllServerInfo(servidor);

        int qtdTuplas[] = new int[this.mapServidores.size()];

        for (int i = 0; i < this.mapServidores.size(); i++) {
            //System.out.println("testeINFO:::"+ParserJSON.fromObjToJSON(listaServerInfo.get(i)));//teste
            if (listaServerInfo.get(i).vAcao.equals(V_Constantes.MSG_ERRO_CONEXAO_SERVER)) {
                System.out.println("teste- check_rehash foi Abortado pois nao estao todos servidores online");
                return;
            }
            qtdTuplas[i] = Integer.valueOf(listaServerInfo.get(i).vQtdTable);

        }

        int diferenca = 0;
        int maior_diferenca = 0;
        for (int i = 0; i < this.mapServidores.size(); i++) {
            for (int j = i + 1; j < this.mapServidores.size(); j++) {
                diferenca = Math.abs(qtdTuplas[i] - qtdTuplas[j]);
                if (diferenca > maior_diferenca) {
                    maior_diferenca = diferenca;
                }
                //System.out.println("diferenca:::"+diferenca);//teste
            }
        }

        if (maior_diferenca > V_Constantes.MAX_LIMITE_DIFERENCA_MAP) {
            start_rehash(qtdTuplas, listaServerInfo, servidor, cr_retorno);
        }
    }

    public void start_rehash(int qtdTuplas[], List<ComandoRemoto> cr_listaServerInfo, Servidor servidor, ComandoRemoto cr_retorno) {
        int tamIdeal = 0;

        for (int i = 0; i < qtdTuplas.length; i++) {
            tamIdeal += qtdTuplas[i];
        }

        tamIdeal = tamIdeal / 4;
        int countKeys = 0;

        System.out.println("tamIdeal: " + tamIdeal);

        for (int i = 0; i < cr_listaServerInfo.size(); i++) {
            countKeys = 0;
            String nomeServerAtual = cr_listaServerInfo.get(i).vServerInfo.vNome;
            String indexUltimoServidor = String.valueOf(this.mapServidores.size() - 1);
            String indexPrimeiroServidor = "0";

            System.out.println("nomeServerAtual: " + nomeServerAtual + " countKeys: " + countKeys);//teste
            if (nomeServerAtual.equals(indexPrimeiroServidor)) {
                cr_listaServerInfo.get(i).vServerInfo.vHashRangeStart = "0";
            }

            if (nomeServerAtual.equals(indexUltimoServidor)) {
                for (int j = 1; j < cr_listaServerInfo.size(); j++) {
                    List<String> lista = cr_listaServerInfo.get(j).vTabela.getListKeysOrderedByHash();
                    cr_listaServerInfo.get(j - 1).vServerInfo.vHashRangeEnd = String.valueOf(HashString.getIntHashStr(lista.get(0)) - 1);
                    cr_listaServerInfo.get(j).vServerInfo.vHashRangeStart = String.valueOf(HashString.getIntHashStr(lista.get(0)));
                }

                cr_listaServerInfo.get(i).vServerInfo.vHashRangeEnd = String.valueOf(V_Constantes.MAX_INT - 1);
            } else {
                List<String> lista = cr_listaServerInfo.get(i).vTabela.getListKeysOrderedByHash();
                String ultimaKey = null;

                for (String key : lista) {
                    if (countKeys < tamIdeal) {
                        countKeys++;
                        ultimaKey = key;
                    } else if (HashString.getIntHashStr(key) != HashString.getIntHashStr(ultimaKey)) {
                        String valor = cr_listaServerInfo.get(i).vTabela.get(key);
                        List<String> listaMove = new ArrayList<String>();
                        cr_listaServerInfo.get(i + 1).vTabela.put(key, valor);
                        cr_listaServerInfo.get(i).vTabela.remove(key);
                    }
                }
            }

        }
        cr_retorno.vCR_Lista_ServerInfoRange = cr_listaServerInfo;
        System.out.println("RANGE-AJUSTADO:::" + ParserJSON.fromObjToJSON(cr_listaServerInfo));
        System.out.println("FAZ ALGO");

        System.out.println("teste-doSyncronizaRangeKeys");
        this.doLockReHash();
        this.doSyncronizaRangeKeys(cr_listaServerInfo, servidor);

        System.out.println("teste-servidor.doShowInfoServer()");
        servidor.doShowInfoServer();//teste mostra info
        this.doMoveKeys(cr_listaServerInfo, servidor);
        this.doUnLockReHash();

    }

    public void doLockReHash() {
        for (Map.Entry<String, Servidor> entry : this.mapServidores.entrySet()) {
            Servidor TOserver = entry.getValue();

            ComandoRemoto cr_envio = new ComandoRemoto();
            cr_envio.vAcao = V_Constantes.ACAO_REHASH_LOCK;

            ComandoRemoto cr_retorno = sendServerToServer(cr_envio, TOserver);
        }
    }

    public void doUnLockReHash() {
        for (Map.Entry<String, Servidor> entry : this.mapServidores.entrySet()) {
            Servidor TOserver = entry.getValue();
            TOserver.getServerInfo().vStatus = V_Constantes.STATUS_NORMAL;

            ComandoRemoto cr_envio = new ComandoRemoto();
            cr_envio.vAcao = V_Constantes.ACAO_REHASH_UNLOCK;

            ComandoRemoto cr_retorno = sendServerToServer(cr_envio, TOserver);
        }

    }

    public void doSyncronizaRangeKeys(List<ComandoRemoto> listaServerInfo, Servidor FROMservidor) {

        for (Map.Entry<String, Servidor> entry : this.mapServidores.entrySet()) {
            Servidor TOserver = entry.getValue();

            if (!FROMservidor.getServerInfo().vNome.equals(TOserver.getServerInfo().vNome)) {
                ComandoRemoto cr_envio = new ComandoRemoto();
                cr_envio.vAcao = V_Constantes.ACAO_UPDATE_SERVER_RANGE;
                cr_envio.vCR_Lista_ServerInfoRange = listaServerInfo;

                ComandoRemoto cr_retorno = sendServerToServer(cr_envio, TOserver);
            } else {
                ComandoRemoto cr_envio = new ComandoRemoto();
                cr_envio.vAcao = V_Constantes.ACAO_UPDATE_SERVER_RANGE;
                cr_envio.vCR_Lista_ServerInfoRange = listaServerInfo;
                this.doUpdateRangeClienteInfo(cr_envio);
            }
        }
    }

    public void doInfoAllServers() {
        for (Map.Entry<String, Servidor> entry : this.mapServidores.entrySet()) {
            Servidor server = entry.getValue();
            server.doShowInfoServer();
        }
    }

    public void doMoveKeys(List<ComandoRemoto> listaServerInfo, Servidor FROMservidor) {
        Map<String, String> lista_keys_to_move = new HashMap<String, String>();

        Servidor servidor = this.mapServidores.get(FROMservidor.getServerInfo().vNome);

        for (Map.Entry<String, Servidor> entry : this.mapServidores.entrySet()) {
            Servidor TOserver = entry.getValue();
            if (!FROMservidor.getServerInfo().vNome.equals(TOserver.getServerInfo().vNome)) {

                ComandoRemoto cr_envia = new ComandoRemoto();
                cr_envia.vAcao = V_Constantes.ACAO_MOVE_KEY;
                cr_envia.vCR_Lista_ServerInfoRange = listaServerInfo;

                ComandoRemoto cr_retorno = sendServerToServer(cr_envia, TOserver);

            }
        }

        FROMservidor.getTabela().mostrarElementosTabela();//teste

    }

    public void doUpdateRangeClienteInfo(ComandoRemoto cr_recebido) {
        for (Entry<String, Servidor> entry : mapServidores.entrySet()) {
            Servidor servidorInfo = entry.getValue();

            int indice = Integer.valueOf(servidorInfo.getServerInfo().vNome);

            servidorInfo.setServerInfo(cr_recebido.vCR_Lista_ServerInfoRange.get(indice).vServerInfo);
            servidorInfo.setTabela(cr_recebido.vCR_Lista_ServerInfoRange.get(indice).vTabela);

            servidorInfo.doShowInfoServer();//teste
        }

    }

}

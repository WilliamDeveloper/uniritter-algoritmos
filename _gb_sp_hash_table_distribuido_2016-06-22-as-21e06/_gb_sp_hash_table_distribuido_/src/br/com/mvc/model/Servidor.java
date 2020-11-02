package br.com.mvc.model;

import br.com.system.config.V_Constantes;

public class Servidor {

    private ServerInfo vServerInfo = new ServerInfo();
    private Tabela vTabela;
    private int vQtd_servidores;

//#############################################################################
    public Servidor(String pNome, String pIP, String pPorta, int pQtdServidores) {
        this.vQtd_servidores = pQtdServidores;
        this.vServerInfo.vNome = pNome;
        this.vServerInfo.vIP = pIP;
        this.vServerInfo.vPorta = pPorta;
        this.vServerInfo.vStatus = V_Constantes.STATUS_NORMAL;
        this.doRangeInicial();
        this.doShowInfoServer();
    }
    
//#############################################################################
    public ServerInfo getServerInfo() {
        return vServerInfo;
    }

//#############################################################################
    public void setServerInfo(ServerInfo vServerInfo) {
        this.vServerInfo = vServerInfo;
    }

//#############################################################################
    public Tabela getTabela() {
        return vTabela;
    }

//#############################################################################
    public void setTabela(Tabela vTabela) {
        this.vTabela = vTabela;
    }
//#############################################################################

    private void doRangeInicial() {
        String nomeServerFirst = "0";
        String nomeServerLast = "" + (vQtd_servidores - 1);
        int indexServer = Integer.valueOf(this.vServerInfo.vNome);
        int multiplicador = indexServer + 1;

        this.vServerInfo.vHashRangeStart = "" + ((V_Constantes.MAX_INT / this.vQtd_servidores) * indexServer);

        if (this.vServerInfo.vNome.equals(nomeServerLast)) {
            this.vServerInfo.vHashRangeEnd = "" + (V_Constantes.MAX_INT - 1);
        } else {
            this.vServerInfo.vHashRangeEnd = "" + ((multiplicador * (V_Constantes.MAX_INT / this.vQtd_servidores)) - 1);
        }
    }

//#############################################################################
    public ComandoRemoto doPrepareServerInfo() {
        ComandoRemoto cr_envio = new ComandoRemoto();
        cr_envio.vAcao = V_Constantes.ACAO_SERVER_INFO;
        cr_envio.vServerInfo = this.vServerInfo;
        cr_envio.vQtdTable = String.valueOf(this.vTabela.size());
        cr_envio.vTabela = this.vTabela;
        return cr_envio;
    }

//#############################################################################
    public void doUpdateRangeServerInfo(ComandoRemoto cr_recebido) {
        int indice = Integer.valueOf(this.vServerInfo.vNome);
        this.vServerInfo = cr_recebido.vCR_Lista_ServerInfoRange.get(indice).vServerInfo;
    }

//#############################################################################
    public void doShowInfoServer() {
        System.out.println("");
        System.out.println("this._info._nome: " + this.vServerInfo.vNome);
        System.out.println("this._info._ip: " + this.vServerInfo.vIP);
        System.out.println("this._info._porta: " + this.vServerInfo.vPorta);
        System.out.println("this._info._hashRangeStart: " + this.vServerInfo.vHashRangeStart);
        System.out.println("this._info._hashRangeEnd:   " + this.vServerInfo.vHashRangeEnd);
        System.out.println("TESTE MAX INT  ---      :   " + V_Constantes.MAX_INT);//teste
        System.out.println("this._info._status: " + this.vServerInfo.vStatus);
        System.out.println("");

    }



}

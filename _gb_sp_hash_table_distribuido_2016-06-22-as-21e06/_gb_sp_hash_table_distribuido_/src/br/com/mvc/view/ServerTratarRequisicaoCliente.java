package br.com.mvc.view;

import br.com.system.config.V_Constantes;
import br.com.mvc.model.ComandoRemoto;
import br.com.mvc.model.Servidor;
import br.com.utils.ParserJSON;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.PrintWriter;
import java.net.Socket;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ServerTratarRequisicaoCliente extends Thread {

    private Socket vClienteSocket = null;
    private Servidor vServidor = null;

//#############################################################################
    public ServerTratarRequisicaoCliente(Socket pClienteSocket, Servidor pServidor) {
        this.vClienteSocket = pClienteSocket;
        this.vServidor = pServidor;
    }

//#############################################################################
    public boolean isValidRangeServer(ComandoRemoto cr_recebido) {
        //System.out.println("teste" + ParserJSON.fromObjToJSON(cr_recebido));//teste
        //System.out.println("teste" + ParserJSON.fromObjToJSON(vServidor));//teste
        boolean isValidRangeStart = cr_recebido.vServerInfo.vHashRangeStart.equals(this.vServidor.getServerInfo().vHashRangeStart);
        boolean isValidRangeEnd = cr_recebido.vServerInfo.vHashRangeEnd.equals(this.vServidor.getServerInfo().vHashRangeEnd);

        if (isValidRangeStart && isValidRangeEnd) {
            return true;
        } else {
            return false;
        }
    }

//#############################################################################
    @Override
    public void run() {
        System.out.println("\n::::::NOVA-THREAD::::");
        ObjectOutputStream canal_envio = null;
        ObjectInputStream canal_recepsao = null;
        String mensagemRecebida = null;
        try {
            canal_envio = new ObjectOutputStream(this.vClienteSocket.getOutputStream());
            canal_recepsao = new ObjectInputStream(this.vClienteSocket.getInputStream());

            mensagemRecebida = canal_recepsao.readLine();
            System.out.println("teste-mensagemRecebida:" + mensagemRecebida);//teste
            ComandoRemoto cr_recebido = ParserJSON.fromJSONtoObj(mensagemRecebida, ComandoRemoto.class);

            //cuidar o rehash(revisar)
            List<ComandoRemoto> lista_ServerInfo = null;
            if (cr_recebido.vTipo.equals(V_Constantes.TIPO_CLIENTE)) {
                if (isValidRangeServer(cr_recebido) == false) {
                    //pega todos ranges dos servers e manda pro cliente
                    lista_ServerInfo = V_Constantes._GERENCIADOR_SERVIDORES.getAllServerInfo(this.vServidor);
                }
            }

//##################################################################################################
//#######################[INICIO DO TRATAMENTO (ACAO_GET)]##########################################
//##################################################################################################
            if (cr_recebido.vAcao.equals(V_Constantes.ACAO_GET)) {

                if (this.vServidor.getServerInfo().vStatus.equals(V_Constantes.ACAO_REHASH_LOCK) && cr_recebido.vTipo.equals(V_Constantes.TIPO_CLIENTE)) {
                    System.out.println(V_Constantes.MSG_ALERTA_SERVIDOR_EM_REHASH);
                    
                     PrintWriter pw = new PrintWriter(canal_envio, true);
                     ComandoRemoto cr_retorno = new ComandoRemoto();
                     cr_retorno.vAcao = V_Constantes.STATUS_REHASH;
                     pw.println(ParserJSON.fromObjToJSON(cr_retorno));//ok
                } else {
                    System.out.println("\n teste-acao:" + cr_recebido.vAcao);//teste

                    PrintWriter pw = new PrintWriter(canal_envio, true);

                    ComandoRemoto cr_retorno = new ComandoRemoto();
                    cr_retorno.vCR_Lista_ServerInfoRange = lista_ServerInfo;
                    cr_retorno.vAcao = V_Constantes.ACAO_GET;
                    cr_retorno.vChave = cr_recebido.vChave;
                    cr_retorno.vValor = this.vServidor.getTabela().get(cr_recebido.vChave);

                    System.out.println("ENVIANDO GET!");
                    this.mostrarInfoServer();//testes
                    this.mostrarTabela();//testes
                    pw.println(ParserJSON.fromObjToJSON(cr_retorno));
                }

//##################################################################################################
//#######################[INICIO DO TRATAMENTO (ACAO_PUT)]##########################################
//##################################################################################################
            } else if (cr_recebido.vAcao.equals(V_Constantes.ACAO_PUT)) {

                if (this.vServidor.getServerInfo().vStatus.equals(V_Constantes.ACAO_REHASH_LOCK) && cr_recebido.vTipo.equals(V_Constantes.TIPO_CLIENTE)) {
                    System.out.println(V_Constantes.MSG_ALERTA_SERVIDOR_EM_REHASH);
                     
                     PrintWriter pw = new PrintWriter(canal_envio, true);
                     ComandoRemoto cr_retorno = new ComandoRemoto();
                     cr_retorno.vAcao = V_Constantes.STATUS_REHASH;                     
                     pw.println(ParserJSON.fromObjToJSON(cr_retorno));//ok
                } else {
                    System.out.println("\n teste-acao:" + cr_recebido.vAcao);//teste

                    PrintWriter pw = new PrintWriter(canal_envio, true);
                    this.vServidor.getTabela().put(cr_recebido.vChave, cr_recebido.vValor);

                    ComandoRemoto cr_retorno = new ComandoRemoto();
                    cr_retorno.vCR_Lista_ServerInfoRange = lista_ServerInfo;
                    cr_retorno.vAcao = V_Constantes.ACAO_PUT;
                    cr_retorno.vChave = cr_recebido.vChave;
                    cr_retorno.vValor = cr_recebido.vValor;

                    if ((V_Constantes.vCountPut % V_Constantes.MAX_LIMITE_DIFERENCA_MAP) == 0) {
                        V_Constantes._GERENCIADOR_SERVIDORES.check_rehash(this.vServidor, cr_retorno);
                        V_Constantes.vCountPut = 1;
                    }else{
                         V_Constantes.vCountPut++;
                    }

                    System.out.println("INSERIDO COM SUCESSO!");
                    this.mostrarInfoServer();//testes
                    this.mostrarTabela();//testes
                    pw.println(ParserJSON.fromObjToJSON(cr_retorno));
                }

//##################################################################################################
//#######################[INICIO DO TRATAMENTO (ACAO_MOVE_KEY)]#####################################
//##################################################################################################
            } else if (cr_recebido.vAcao.equals(V_Constantes.ACAO_MOVE_KEY)) {
                System.out.println("\n teste-acao:" + cr_recebido.vAcao);//teste
                int nomeServidor = Integer.valueOf(this.vServidor.getServerInfo().vNome);
                this.vServidor.setTabela(cr_recebido.vCR_Lista_ServerInfoRange.get(nomeServidor).vTabela);
                //this.vServidor.getTabela().put(cr_recebido.vChave, cr_recebido.vValor);

                //this.mostrarInfoServer();//testes
                //this.mostrarTabela();//testes

                PrintWriter pw = new PrintWriter(canal_envio, true);
                pw.println(ParserJSON.fromObjToJSON(cr_recebido));//ok
//##################################################################################################
//#######################[INICIO DO TRATAMENTO (ACAO_SERVER_INFO)]##################################
//##################################################################################################
            } else if (cr_recebido.vAcao.equals(V_Constantes.ACAO_SERVER_INFO)) {
                System.out.println("\n teste-acao:" + cr_recebido.vAcao);//teste

                PrintWriter pw = new PrintWriter(canal_envio, true);
                ComandoRemoto cr_retorno = this.vServidor.doPrepareServerInfo();

                this.mostrarInfoServer();

                pw.println(ParserJSON.fromObjToJSON(cr_retorno));

//##################################################################################################
//#######################[INICIO DO TRATAMENTO (ACAO_REHASH_LOCK)]##################################
//##################################################################################################
            } else if (cr_recebido.vAcao.equals(V_Constantes.ACAO_REHASH_LOCK)) {
                System.out.println("\n teste-acao:" + cr_recebido.vAcao);//teste
                this.vServidor.getServerInfo().vStatus = V_Constantes.ACAO_REHASH_LOCK;

                PrintWriter pw = new PrintWriter(canal_envio, true);
                pw.println(ParserJSON.fromObjToJSON(cr_recebido));//ok
//##################################################################################################
//#######################[INICIO DO TRATAMENTO (ACAO_REHASH_UNLOCK)]################################
//##################################################################################################
            } else if (cr_recebido.vAcao.equals(V_Constantes.ACAO_REHASH_UNLOCK)) {
                System.out.println("\n teste-acao:" + cr_recebido.vAcao);//teste
                this.vServidor.getServerInfo().vStatus = V_Constantes.ACAO_REHASH_UNLOCK;
                
                this.mostrarInfoServer();//testes
                this.mostrarTabela();//testes
                
                PrintWriter pw = new PrintWriter(canal_envio, true);
                pw.println(ParserJSON.fromObjToJSON(cr_recebido));//ok
//##################################################################################################
//################[INICIO DO TRATAMENTO (ACAO_UPDATE_SERVER_RANGE)]#################################
//##################################################################################################
            } else if (cr_recebido.vAcao.equals(V_Constantes.ACAO_UPDATE_SERVER_RANGE)) {
                System.out.println("\n teste-acao:" + cr_recebido.vAcao);//teste

                V_Constantes._GERENCIADOR_SERVIDORES.doUpdateRangeClienteInfo(cr_recebido);
                this.vServidor.doUpdateRangeServerInfo(cr_recebido);

                //this.mostrarInfoServer();//teste
                //this.mostrarTabela();//teste

                PrintWriter pw = new PrintWriter(canal_envio, true);
                pw.println(ParserJSON.fromObjToJSON(cr_recebido));//ok

//##################################################################################################
//################[INICIO DO TRATAMENTO (qualquer outro tipo de acao)]##############################
//##################################################################################################
            } else {
                System.out.println("\n teste-acao:" + cr_recebido.vAcao);//teste
                System.out.println("acao nao prevista");

                PrintWriter pw = new PrintWriter(canal_envio, true);
                pw.println(ParserJSON.fromObjToJSON(cr_recebido));//ok

            }

        } catch (IOException ex) {
            Logger.getLogger(ServerTratarRequisicaoCliente.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public void mostrarTabela() {
        vServidor.getTabela().mostrarElementosTabela();
    }

    public void mostrarInfoServer() {
        vServidor.doShowInfoServer();
    }

}

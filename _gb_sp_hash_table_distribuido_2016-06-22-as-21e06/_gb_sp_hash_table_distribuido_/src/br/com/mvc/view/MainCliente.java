package br.com.mvc.view;

import br.com.mvc.controller.GerenciadorServidor;
import br.com.mvc.model.ComandoRemoto;
import br.com.system.config.V_Constantes;
import br.com.utils.ParserJSON;

public class MainCliente {

//#############################################################################
    private static ComandoRemoto doAtualizaServersInfoRangeAndResend(ComandoRemoto cr_retorno, GerenciadorServidor pGerenciadorServidores_, ComandoRemoto cr_envio) {
        if (cr_retorno.vCR_Lista_ServerInfoRange != null) {
            if (!cr_retorno.vCR_Lista_ServerInfoRange.isEmpty()) {
                for (int i = 0; i < cr_retorno.vCR_Lista_ServerInfoRange.size(); i++) {
                    String indice = String.valueOf(i);
                    pGerenciadorServidores_.getMapServidores().get(indice).doUpdateRangeServerInfo(cr_retorno);
                }
                cr_retorno = pGerenciadorServidores_.sendClienteToServer(cr_envio);
            }
        }
        return cr_retorno;
    }

//#############################################################################
    public static void main(String[] args) {

        GerenciadorServidor vGerenciadorServidores_ = new GerenciadorServidor();

        while (true) {

            ComandoRemoto cr_envio = new ComandoRemoto();
            cr_envio.vAcao = cr_envio.getInputAcaoCliente();
            cr_envio.vChave = cr_envio.getInputChaveCliente();

            if (cr_envio.vAcao.equals(V_Constantes.ACAO_GET) == false) {
                cr_envio.vValor = cr_envio.getInputValorDaChaveCliente();
            }

            ComandoRemoto cr_retorno = vGerenciadorServidores_.sendClienteToServer(cr_envio);

            String mensagem = null;

            if (cr_retorno != null) {
                mensagem = "Acao:" + cr_envio.vAcao;

//##################################################################################################
//##################[INICIO DO TRATAMENTO (MSG_ERRO_CONEXAO_SERVER)]################################
//##################################################################################################
                if (cr_retorno.vAcao.equals(V_Constantes.MSG_ERRO_CONEXAO_SERVER)) {
                    mensagem += ",Status:" + V_Constantes.MSG_ERRO_CONEXAO_SERVER;

//##################################################################################################
//#############[INICIO DO TRATAMENTO (MSG_ERRO_SERVIDOR_NAO_ENCONTRADO)]############################
//##################################################################################################
                } else if (cr_retorno.vAcao.equals(V_Constantes.MSG_ERRO_SERVIDOR_NAO_ENCONTRADO)) {
                    mensagem += ",Status:" + V_Constantes.MSG_ERRO_SERVIDOR_NAO_ENCONTRADO;

//##################################################################################################
//###########################[INICIO DO TRATAMENTO (ACAO_PUT)]######################################
//##################################################################################################
                } else if (cr_retorno.vAcao.equals(V_Constantes.ACAO_PUT)) {
                    System.out.println("ouoioioioii" + ParserJSON.fromObjToJSON(cr_retorno));//teste
                    if (cr_retorno.vCR_Lista_ServerInfoRange != null) {
                        //cr_retorno.vCR_Lista_ServerInfoRange.isEmpty()

                        vGerenciadorServidores_.doUpdateRangeClienteInfo(cr_retorno);
                    }

                    cr_retorno = doAtualizaServersInfoRangeAndResend(cr_retorno, vGerenciadorServidores_, cr_envio);
                    mensagem += ",Chave:" + cr_retorno.vChave + ",Valor:" + cr_retorno.vValor + ",Status:" + V_Constantes.MSG_OK_INSERIDO;

//##################################################################################################
//###########################[INICIO DO TRATAMENTO (ACAO_GET)]######################################
//##################################################################################################
                } else if (cr_retorno.vAcao.equals(V_Constantes.ACAO_GET)) {

                    cr_retorno = doAtualizaServersInfoRangeAndResend(cr_retorno, vGerenciadorServidores_, cr_envio);

                    if (cr_retorno.vValor != null) {
                        mensagem += ",Chave:" + cr_retorno.vChave + ",Valor:" + cr_retorno.vValor + ",Status:" + V_Constantes.MSG_OK_GET;
                    } else {
                        mensagem += ",Chave:" + cr_envio.vChave + ",Status:" + V_Constantes.MSG_ERRO_CHAVE_NAO_ENCONTRADA;
                    }
//##################################################################################################
//###################[INICIO DO TRATAMENTO (STATUS_REHASH)]#########################################
//##################################################################################################
                } else if (cr_retorno.vAcao.equals(V_Constantes.STATUS_REHASH)) {
                    System.out.println(V_Constantes.MSG_ALERTA_SERVIDOR_EM_REHASH);
//##################################################################################################
//###################[INICIO DO TRATAMENTO (acao qualquer outra coisa)]#############################
//##################################################################################################
                } else {

                    mensagem += ",Chave:" + cr_envio.vChave + ",Valor:" + cr_retorno.vValor + "---ELSE";

                }
                System.out.println(mensagem);

//##################################################################################################
//########################[INICIO DO TRATAMENTO (retorno NULL)]#####################################
//##################################################################################################
            } else {
                System.out.println("Ocorreu um problema, Retorno NULL"); // teste nunca ocorre
            }
        }
    }

}

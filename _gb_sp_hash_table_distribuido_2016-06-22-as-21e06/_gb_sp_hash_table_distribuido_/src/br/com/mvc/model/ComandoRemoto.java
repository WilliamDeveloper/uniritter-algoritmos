package br.com.mvc.model;

import br.com.system.config.V_Constantes;
import java.util.List;
import javax.swing.JOptionPane;

public class ComandoRemoto {

    public String vAcao = null;
    public String vChave = null;
    public String vValor = null;
    public String vMsgRetorno = null;
    public String vQtdTable = null;
    public String vTipo = null;
    public ServerInfo vServerInfo = null;
    public List<ComandoRemoto> vCR_Lista_ServerInfoRange;
    public Tabela vTabela;

//#############################################################################
    public ComandoRemoto() {

    }

//#############################################################################
    public String getInputAcaoCliente() {
        String acao = null;
        String textoDaCaixaDeDialogo = "DIGITE UMA ACAO (PUT ou GET) :";
        boolean acaoValida = false;

        while (acaoValida == false) {
            acao = JOptionPane.showInputDialog(textoDaCaixaDeDialogo);
            if (acao != null) {
                 acao = acao.toUpperCase();
                 for (String acaoDisponivel : V_Constantes.LISTA_ACOES_CLIENTE) {
                    acaoValida = acao.equals(acaoDisponivel);
                    if(acaoValida == true) { break; }
                 }
            }
        }
        return acao;
    }

//#############################################################################
    public String getInputChaveCliente() {
        String chave = null;
        String textoDaCaixaDeDialogo = "Digite uma [CHAVE] :";
        boolean acaoValida = false;

        while (acaoValida == false) {
            chave = JOptionPane.showInputDialog(textoDaCaixaDeDialogo);

            if (chave != null) {
                //acaoValida = (chave.matches("[a-zA-Z0-9]+") && chave.equals("0") == false);
                acaoValida = !chave.isEmpty();
            }
        }
        return chave;
    }
    
//#############################################################################
    public String getInputValorDaChaveCliente() {
        String valor = null;
        String textoDaCaixaDeDialogo = "Digite um [VALOR] para a  CHAVE :";
        boolean acaoValida = false;

        while (acaoValida == false) {
            valor = JOptionPane.showInputDialog(textoDaCaixaDeDialogo);
            if (valor != null) {             
                acaoValida = !valor.isEmpty();
            }
        }
        return valor;
    }
}
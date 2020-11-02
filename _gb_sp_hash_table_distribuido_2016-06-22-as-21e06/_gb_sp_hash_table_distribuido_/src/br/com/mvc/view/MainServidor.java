package br.com.mvc.view;

import br.com.mvc.model.Tabela;
import br.com.mvc.model.Servidor;
import br.com.system.config.V_Constantes;
import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

public class MainServidor {

//#############################################################################
    public static void main(String[] args) {
        String textoDaCaixaDeDialog = "Informe um numero entre [0 e " + (V_Constantes._GERENCIADOR_SERVIDORES.getMapServidores().size() - 1) + "]";

        boolean portaEstaEmUso = true;

        while (portaEstaEmUso == true) {
            String serverID = JOptionPane.showInputDialog(textoDaCaixaDeDialog);
            Servidor servidor = V_Constantes._GERENCIADOR_SERVIDORES.getServerFromIndice(serverID);
            Tabela tabela = servidor.getTabela();
            ServerSocket server_socket = null;

            try {
                server_socket = new ServerSocket(Integer.valueOf(servidor.getServerInfo().vPorta));
                portaEstaEmUso = false;
                System.out.println("Servidor: " + serverID + ", IP: " + servidor.getServerInfo().vIP + ", Porta: " + servidor.getServerInfo().vPorta);
                V_Constantes._GERENCIADOR_SERVIDORES.mostrarDistribuicaoChaves();
                tabela.mostrarElementosTabela();

                while (true) {
                    Socket cliente_Socket = server_socket.accept();
                    System.out.println("NOVO SOCKET ACEITO");
                    new ServerTratarRequisicaoCliente(cliente_Socket, servidor).start();
                }

            } catch (IOException ex) {
                Logger.getLogger(MainServidor.class.getName()).log(Level.SEVERE, null, ex);

                if (server_socket != null) {
                    try {
                        server_socket.close();
                    } catch (IOException e) {
                        Logger.getLogger(MainServidor.class.getName()).log(Level.SEVERE, null, e);
                    }
                }
            }
        }
    }
}

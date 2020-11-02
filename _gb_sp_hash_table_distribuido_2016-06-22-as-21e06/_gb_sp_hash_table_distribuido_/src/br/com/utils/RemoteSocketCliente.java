package br.com.utils;

import br.com.system.config.V_Constantes;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.PrintWriter;
import java.net.Socket;
import java.util.logging.Level;
import java.util.logging.Logger;

public class RemoteSocketCliente {

    private ObjectOutputStream canal_envio = null;
    private ObjectInputStream canal_recepsao = null;
    private Socket cliente_Socket = null;
    private PrintWriter pw = null;

//#############################################################################
    public RemoteSocketCliente(String ipHost, int porta) throws IOException {
        this.cliente_Socket = new Socket(ipHost, porta);
        this.canal_envio = new ObjectOutputStream(cliente_Socket.getOutputStream());
        this.canal_recepsao = new ObjectInputStream(cliente_Socket.getInputStream());
        this.pw = new PrintWriter(canal_envio, true);
    }

//#############################################################################
    public void enviar(Object objeto) {
        this.pw.println(ParserJSON.fromObjToJSON(objeto));
    }

//#############################################################################
    public String receber() throws IOException {
        return this.canal_recepsao.readLine();
    }

}

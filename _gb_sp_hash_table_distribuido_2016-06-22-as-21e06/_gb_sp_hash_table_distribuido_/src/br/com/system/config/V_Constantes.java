
package br.com.system.config;

import br.com.mvc.controller.GerenciadorServidor;
import br.com.mvc.model.Servidor;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Type;
import java.util.Map;


public class V_Constantes {
    
    public static final Type TIPO_MAP_SERVIDOR = new TypeToken<Map<String, Servidor>>() {}.getType();
    public static final String CAMINHO_ARQUIVO_SERVERS = "src/br/com/system/config/JSON_Servidores.json";
    public static final String IP_LOCALHOST = "127.0.0.1";    
    //public static final int QTD_SERVIDORES = 4;    

//#############################################################################        
    public static final GerenciadorServidor _GERENCIADOR_SERVIDORES = new GerenciadorServidor();

//#############################################################################    
    public static final int MAX_INT = Integer.MAX_VALUE;    
    public static final int MAX_LIMITE_DIFERENCA_MAP = 50;   
    public static int vCountPut = 1;
    
//#############################################################################
    public static final String STATUS_REHASH = "STATUS_REHASH";
    public static final String STATUS_NORMAL = "STATUS_NORMAL";
    
 //#############################################################################
    public static final String ACAO_PUT = "PUT";
    public static final String ACAO_GET = "GET";
    public static final String ACAO_REHASH_LOCK = "ACAO_REHASH_LOCK";
    public static final String ACAO_REHASH_UNLOCK = "ACAO_REHASH_UNLOCK";
    public static final String ACAO_REPOSTA = "ACAO_REPOSTA";
    public static final String ACAO_UPDATE_SERVER_RANGE = "ACAO_UPDATE_SERVER_RANGE";
    public static final String ACAO_SERVER_INFO = "ACAO_SERVER_INFO";
    public static final String ACAO_MOVE_KEY = "ACAO_MOVE_KEY";
    
//#############################################################################
    public static final String TIPO_CLIENTE = "TIPO_CLIENTE";
    public static final String TIPO_SERVER = "TIPO_SERVER";
    
//#############################################################################
    public static final String MSG_ERRO_CONEXAO_SERVER = "MSG_ERRO_CONEXAO_SERVER";
    public static final String MSG_ERRO_CHAVE_NAO_ENCONTRADA = "MSG_ERRO_CHAVE_NAO_ENCONTRADA";
    public static final String MSG_ERRO_SERVIDOR_NAO_ENCONTRADO = "MSG_ERRO_SERVIDOR_NAO_ENCONTRADO";
//#############################################################################
    public static final String MSG_ALERTA_SERVIDOR_EM_REHASH = "O servidor esta efetuando REHASH Tente novamente mais tarde!";
//#############################################################################
    public static final String MSG_OK_INSERIDO = "MSG_OK_INSERIDO";
    public static final String MSG_OK_GET = "MSG_OK_GET";
    
//#############################################################################
    public static final String LISTA_ACOES_CLIENTE[] = new String[]{
        ACAO_PUT
        ,ACAO_GET   
    };
    
   
}

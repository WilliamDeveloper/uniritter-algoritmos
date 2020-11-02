
package br.com.system.config;

import br.com.mvc.model.Servidor;
import br.com.mvc.model.Tabela;
import br.com.system.config.V_Constantes;
import br.com.utils.ParserJSON;
import java.util.HashMap;
import java.util.Map;


public class JSON_ServidoresConfigInicial {
       
    public static void main(String[] args) {
        
       String localhost = "127.0.0.1";
       String caminho = V_Constantes.CAMINHO_ARQUIVO_SERVERS;
       int V_QTD_SERVIDORES = 4;
//HashString.getIntHashStr("william");
       
       Servidor s1 = new Servidor("0",localhost,"10281",V_QTD_SERVIDORES);
       Tabela t1 = new Tabela();
       s1.setTabela(t1);

       for (int i = 0; i < 50; i++) {
            t1.put(String.valueOf(i), String.valueOf(50+i));
       }

       
       Servidor s2 = new Servidor("1",localhost,"10282",V_QTD_SERVIDORES);
       Tabela t2 = new Tabela();
       s2.setTabela(t2);

       
       Servidor s3 = new Servidor("2",localhost,"10283",V_QTD_SERVIDORES);
       Tabela t3 = new Tabela();
       s3.setTabela(t3);

       Servidor s4 = new Servidor("3",localhost,"10284",V_QTD_SERVIDORES);
       Tabela t4 = new Tabela();
       s4.setTabela(t4);

       
       Map<String,Servidor> configServidores = new HashMap<String,Servidor>();
       configServidores.put(s1.getServerInfo().vNome, s1);
       configServidores.put(s2.getServerInfo().vNome, s2);
       configServidores.put(s3.getServerInfo().vNome, s3);       
       configServidores.put(s4.getServerInfo().vNome, s4); 
       
       String str = ParserJSON.fromObjToJSON(configServidores);
       System.out.println(str);
       System.out.println("\n"+str.replaceAll("},", "\n"));
       ParserJSON.saveJSONFile(configServidores,caminho);
       
       //testes
       Map<String,Servidor> mj = ParserJSON.fromJSONFiletoMap(caminho, V_Constantes.TIPO_MAP_SERVIDOR);
       System.out.println(mj.get("0").getServerInfo().vNome);
     
        
    }    
}

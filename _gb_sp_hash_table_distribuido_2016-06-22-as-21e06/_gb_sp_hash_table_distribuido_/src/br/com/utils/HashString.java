package br.com.utils;

import br.com.system.config.V_Constantes;

public class HashString {

    public static int getIntHashStr(String chave) {
        int retorno_hash = 0;

        for (int i = 0; i < chave.length(); i++) {
            retorno_hash = (retorno_hash + chave.charAt(i) % V_Constantes.MAX_INT);
        }

        return retorno_hash;
    }
    public static void main(String[] args) {
        System.out.println("A."+HashString.getIntHashStr("03"));
        System.out.println("A."+HashString.getIntHashStr("William"));
    }

}

package br.com.utils;

import br.com.entidade.Disco;

public class String_Util {

    public static byte[] strToByte(String s) {
        byte[] strBytes = s.getBytes();
        if (strBytes.length > Disco.TAM_SETOR_4K) {
            System.out.println("O tamanho da String é maior que: " + Disco.TAM_SETOR_4K + "!!!");
            return null;
        }

        byte[] setorDeBytes = new byte[Disco.TAM_SETOR_4K];

        for (int i = 0; i < Disco.TAM_SETOR_4K; i++) {
            if (i < strBytes.length) {
                setorDeBytes[i] = strBytes[i];
            } else {
                setorDeBytes[i] = 0;
            }
        }
        return setorDeBytes;
    }
    
    public static int doGetTamanhoArquivo(byte[] buffer){
        int cont = 0;
        
        for (int i = 0; i < buffer.length; i++) {
            if(buffer[i] != 0){
                cont++;
            }
        }
        
        return cont;
    }

    public static boolean doValidaStrIsNumber(String str) {
        return str.matches("[0-9]+");
    }

    public static boolean doValidaAZ09(String str) {
        return str.matches("[a-zA-Z0-9]+");
    }

    public static void main(String[] args) {
        byte[] bufferData = "william".getBytes();
        System.out.println("bufferData " + bufferData.length + " oi " + "william".length());
    }
    
}

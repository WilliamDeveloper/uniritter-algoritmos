package br.com.curvaeliptica;

import java.math.BigDecimal;
import java.math.BigInteger;

public class Util {

    //ex.: 4² = 16
    // raiz 16 = 4
    public static boolean isQuadradoPerfeito(String valor) {
        int input = Integer.valueOf(valor);
        int num = ((int) Math.sqrt(input));

        if (num * num == input) {
            return true;
        } else {
            return false;
        }
    }

    public static int raizQuadrada(String valor) {
        int input = Integer.valueOf(valor);
        int num = ((int) Math.sqrt(input));
        return num;
    }

    public static boolean isValidNumber(String pValor) {
        try {
            int vValor = Integer.parseInt(pValor.trim());
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }
    
    
    public static boolean isValidNumber(String... pValor) {        
        for (String vValor : pValor) {
           if(isValidNumber(vValor) == false) {
               return false;
           }
        }        
      return true;
    }

    public static String doParentesNumber(String pString) {
        int vValor = Integer.parseInt(pString.trim());
        return (vValor < 0) ? "(" + vValor + ")" : "" + vValor;
    }

    public static boolean isNotNull(Object... args) {
        for (Object arg : args) {
            if(arg == null){
                return false;
            }
        }
        return true;
    }
    

/*
    public static void main(String[] args) {
        System.out.println("-> " + Util.isQuadradoPerfeito("9"));
        System.out.println("-> " + Util.raizQuadrada("9"));
    }
*/
}

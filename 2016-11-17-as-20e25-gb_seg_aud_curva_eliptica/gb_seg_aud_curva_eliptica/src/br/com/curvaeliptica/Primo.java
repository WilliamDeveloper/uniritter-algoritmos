package br.com.curvaeliptica;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

public class Primo {

    private Primo() {
    }

    //##############################################################
    public static String[] doGerarPrimosAtehArray(String pInicio, String pFim) {
        List<BigInteger> objectArray = doGerarPrimosAteh(pInicio, pFim);
        List<String> vListaStr = new ArrayList<String>();

        for (BigInteger bigInteger : objectArray) {
            vListaStr.add(bigInteger.toString());
        }

        String[] stringArray = vListaStr.toArray(new String[vListaStr.size()]);
        return stringArray;
    }

    //##############################################################
    public static ArrayList<BigInteger> doGerarPrimosAteh(String pInicio, String pFim) {
        ArrayList<BigInteger> listaDePrimos = new ArrayList<BigInteger>();

        BigInteger vNumeroLimite = new BigInteger(pFim);
        BigInteger vPossivelNumeroPrimo = new BigInteger(pInicio);
        BigInteger resto = BigInteger.ZERO;

        for (BigInteger vIndexForJ = new BigInteger("2"); vIndexForJ.compareTo(vNumeroLimite) <= 0; vIndexForJ = vIndexForJ.add(BigInteger.ONE)) {
            int contador = 0;

            for (BigInteger vIndexForI = new BigInteger("2"); vIndexForI.compareTo(vPossivelNumeroPrimo) <= 0; vIndexForI = vIndexForI.add(BigInteger.ONE)) {
                resto = vPossivelNumeroPrimo.mod(vIndexForI);
                if (resto.compareTo(BigInteger.ZERO) == 0) {
                    contador++;
                    if (contador > 1) {
                        break;
                    }
                }
            }

            if (contador == 1) {
                listaDePrimos.add(vPossivelNumeroPrimo);
            }

            vPossivelNumeroPrimo = vPossivelNumeroPrimo.add(BigInteger.ONE);
        }
        return listaDePrimos;
    }

    //##############################################################
    private static boolean doVerificaNumeroPrimo(String pNumero) {
        BigInteger vNumero = new BigInteger(pNumero);
        if (vNumero.compareTo(new BigInteger("1")) == 0) {
            return false;
        } else if (vNumero.compareTo(new BigInteger("2")) == 0) {
            return true;
        } else if (vNumero.mod(new BigInteger("2")).compareTo(new BigInteger("0")) == 0) {
            return false;
        } else {
            int cont = 0;

            for (BigInteger vIndexForI = new BigInteger("1"); vIndexForI.compareTo(vNumero) <= 0; vIndexForI = vIndexForI.add(BigInteger.ONE)) {
                BigInteger resto = vNumero.mod(vIndexForI);
                if (resto.compareTo(new BigInteger("0")) == 0) {
                    cont++;
                    if (cont > 2) {
                        return false;
                    }
                }
            }
            return true;
        }
    }

//##############################################################
    private static void doTestarSequencialPrimos() {
        ArrayList<BigInteger> lista = Primo.doGerarPrimosAteh(VG_Constantes._PRIMO_INICIO, VG_Constantes._PRIMO_FIM);
        int cont = 0;
        for (BigInteger l : lista) {
            if (cont++ % 10 == 0) {
                System.out.println("");
            }
            System.out.print(l + " ");
        }
    }
//##############################################################
/*
    public static void main(String[] args) {
        Primo.doTestarSequencialPrimos();

        String numero = VG_Constantes._PRIMO_FIM;
        if (Primo.doVerificaNumeroPrimo(numero)) {
            System.out.println("\n" + numero + " eh primo");
        } else {
            System.out.println("\n\n" + numero + " NAO eh primo");
        }
    }
*/
}

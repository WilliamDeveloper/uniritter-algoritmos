package br.com.curvaeliptica;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

class Crivo {

    public BigInteger vY_i;
    public BigInteger vY_ii;
    public BigInteger vY2;
}

public class CurvaEliptica {

    private BigInteger aA;
    private BigInteger aB;
    private BigInteger aP;

    public CurvaEliptica(BigInteger aA, BigInteger aB, BigInteger aP) {
        this.aA = aA;
        this.aB = aB;
        this.aP = aP;
    }

    public CurvaEliptica(String aA, String aB, String aP) {
        this.aA = new BigInteger(aA);        
        this.aB = new BigInteger((aB.isEmpty())?"0":aB);
        this.aP = new BigInteger(aP);
    }

    public BigInteger getaA() {
        return aA;
    }

    public BigInteger getaB() {
        return aB;
    }

    public BigInteger getaP() {
        return aP;
    }

    @Override
    public String toString() {
        return "Y² = (X³ + " + this.aA + "X + " + this.aB + ") mod " + this.aP;
    }

    public List<Ponto> doGetListaPontosGrupoEliptico_Aula() {
        int vP = Integer.valueOf(this.aP.toString());
        List<BigInteger> vListaCrivos = new ArrayList<>();
        List<Ponto> vListaPontos = new ArrayList<>();

        for (int i = 0; i < vP; i++) {
            for (int j = vP; j <= (vP * vP); j = j + vP) {
                if (Util.isQuadradoPerfeito(String.valueOf(i + j))) {
                    vListaCrivos.add(new BigInteger(String.valueOf(i)));
                    break;
                }
            }
        }

        System.out.print("CRIVOS X: { ");
        for (BigInteger vX : vListaCrivos) {

            System.out.print(" " + vX);
            int vRaiz = Integer.valueOf(vX.pow(3).add(this.aA.multiply(vX)).add(this.aB).toString());

            if (Util.isQuadradoPerfeito(String.valueOf(vRaiz))) {
                BigInteger raiz = new BigInteger(String.valueOf(Util.raizQuadrada(String.valueOf(vRaiz))));
                BigInteger vY1 = new BigInteger(raiz.toString()).mod(this.aP);
                BigInteger vY2 = new BigInteger("-" + raiz.toString()).mod(this.aP);
                if(vY1.compareTo(vY2) == 0){
                    vListaPontos.add(new Ponto(vX, vY1));
                }else{
                    vListaPontos.add(new Ponto(vX, vY1));
                    vListaPontos.add(new Ponto(vX, vY2));
                }
                
            }
        }
        System.out.print(" }\n");

        System.out.print("E" + this.aP.toString() + "{" + VG_Constantes._PONTO_INFINITO);
        for (Ponto vPonto : vListaPontos) {
            System.out.print(", " + vPonto);
        }
        System.out.println("}\n");

        return vListaPontos;

    }

    public List<Ponto> doGetListaPontosGrupoEliptico_Completo() {
        int vP = Integer.valueOf(this.aP.toString());
        int vQtdCrivos = (vP - 1) / 2;
        List<Crivo> vListaCrivos = new ArrayList<>();
        List<Ponto> vListaPontos = new ArrayList<>();

        for (int vIndex_X = 1; vIndex_X <= vQtdCrivos; vIndex_X++) {
            Crivo vCrivo = new Crivo();
            BigInteger vX = new BigInteger(String.valueOf(vIndex_X));

            vCrivo.vY_i = vX;
            vCrivo.vY_ii = this.aP.subtract(vX);

            //y_i = x^2 mod p 
            //ou
            //y_ii = (p-x)^2 mod p
            vCrivo.vY2 = vX.pow(2).mod(this.aP);
            vListaCrivos.add(vCrivo);
        }

        for (int vIndex_X = 0; vIndex_X < vP; vIndex_X++) {
            BigInteger vX = new BigInteger(String.valueOf(vIndex_X));

            //y^2 = ( X^3 + A.X + B ) mod p
            BigInteger vY2 = vX.pow(3).add(this.aA.multiply(vX)).add(this.aB).mod(this.aP);
            for (Crivo vCrivo : vListaCrivos) {
                if (vY2.compareTo(vCrivo.vY2) == 0) {
                    Ponto vPonto1 = new Ponto(vX, vCrivo.vY_i);
                    Ponto vPonto2 = new Ponto(vX, vCrivo.vY_ii);
                    vListaPontos.add(vPonto1);
                    vListaPontos.add(vPonto2);
                    break;
                }
            }
        }

        doMostrarListaCrivosEListaPontos(vListaCrivos, vListaPontos);

        return vListaPontos;

    }

    private void doMostrarListaCrivosEListaPontos(List<Crivo> vListaCrivos, List<Ponto> vListaPontos) {
        System.out.print("CRIVOS X: { ");
        for (Crivo vCrivo : vListaCrivos) {

            System.out.print(" " + vCrivo.vY2);

        }
        System.out.print(" }\n");

        System.out.print("E" + this.aP.toString() + "{" + VG_Constantes._PONTO_INFINITO);
        for (Ponto vPonto : vListaPontos) {
            System.out.print(", " + vPonto);
        }
        System.out.print("}");
    }

}

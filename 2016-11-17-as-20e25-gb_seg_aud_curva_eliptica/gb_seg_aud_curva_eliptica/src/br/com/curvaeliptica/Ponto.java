package br.com.curvaeliptica;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

public class Ponto {

    private BigInteger aX;
    private BigInteger aY;
    private BigInteger _TRES_ = new BigInteger("3");
    private BigInteger _DOIS_ = new BigInteger("2");

    public Ponto() {
        this.aX = null;
        this.aY = null;
    }

    public Ponto(BigInteger pX, BigInteger pY) {
        this.aX = pX;
        this.aY = pY;
    }

    public Ponto(String pX, String pY) {
        this.aX = new BigInteger(pX);
        this.aY = new BigInteger(pY);
    }

    public BigInteger getX() {
        return aX;
    }

    public BigInteger getY() {
        return aY;
    }

    public boolean equals(Ponto outroPonto) {
        return this.getX().compareTo(outroPonto.getX()) == 0 && this.getY().compareTo(outroPonto.getY()) == 0;
    }

    public boolean isSimetrico(Ponto pOutroPonto, CurvaEliptica pCurva) {
        System.out.println("teste p1 " + this + " => p2 " + pOutroPonto);
        return this.getX().compareTo(pOutroPonto.getX()) == 0 && this.getY().compareTo(pCurva.getaP().subtract(pOutroPonto.getY())) == 0;
    }

    public Ponto negarPonto(CurvaEliptica pCurva) {
        BigInteger vValorY = pCurva.getaP().subtract(this.getY());
        Ponto pNegado = new Ponto(this.getX(), vValorY);
        System.out.println("P=" + this + " , -P=" + pNegado + " , [curva.p (" + pCurva.getaP() + ") - Y (" + this.getY() + ")]");
        return pNegado;
    }

    public boolean isInfinity() {
        return (this.aX == null && this.aY == null);
    }

    @Override
    public String toString() {
        if (this.isInfinity()) {
            return "(" + VG_Constantes._PONTO_INFINITO + ")";
        }
        return "(" + this.aX + "," + this.aY + ")";
    }

    //##########################################################################
    public Ponto doSubtrair_Completo(Ponto outroPonto, CurvaEliptica pCurva) {
        System.out.println("\nteste p1 -" + this + " - p2 " + outroPonto);
        VG_Constantes._PASSO_A_PASSO_.setNovoPasso("\nP1" + this + " - P2" + outroPonto);
        return this.doAdd_Completo(outroPonto.negarPonto(pCurva), pCurva);
    }

    public Ponto doAdd_Completo(Ponto outroPonto, CurvaEliptica pCurva) {
        System.out.println("\nteste p1 " + this + " + p2 " + outroPonto);
        
        if (this.isInfinity()) {
            System.out.println("isInfinity");
            return outroPonto;
        }

        if (outroPonto.isInfinity()) {
            System.out.println("isInfinity");
            return this;
        }        

        BigInteger vA = pCurva.getaA();
        BigInteger vP = pCurva.getaP();
        BigInteger vP1X = this.getX();
        BigInteger vP1Y = this.getY();
        BigInteger vP2X = new BigInteger(outroPonto.getX().toString());
        BigInteger vP1XQuadrado = vP1X.pow(2);
        BigInteger vTmpInt1;
        BigInteger vTmpInt2;
        BigInteger vLambda;

        //modinverse [A * B mod C = 1]
        VG_Constantes._PASSO_A_PASSO_.setNovoPasso("\n\n----------------------------------------------------------");
        VG_Constantes._PASSO_A_PASSO_.setNovoPasso("\nP1" + this + " + P2" + outroPonto + " , a=" + pCurva.getaA() + " , p=" + pCurva.getaP());

        if (this.equals(outroPonto)) {
            if (vP1Y.compareTo(new BigInteger("0")) == 0) {
                VG_Constantes._PASSO_A_PASSO_.setStatus(VG_Constantes._STATUS_ERRO_DIVISAO_POR_ZERO);
                VG_Constantes._PASSO_A_PASSO_.setResultadoFinal(VG_Constantes._PONTO_INFINITO);
                //return null;
                return new Ponto();
            }

            // lambda = (3.X1^2 + A) / (2.Y1)
            vTmpInt1 = _TRES_.multiply(vP1XQuadrado.mod(vP)).add(vA);
            vTmpInt2 = _DOIS_.multiply(vP1Y).modInverse(vP);
            vLambda = vTmpInt1.multiply(vTmpInt2);

            VG_Constantes._PASSO_A_PASSO_.setNovoPasso("\nL = ( 3 * ((X1)² mod p) + A) * (( 2 * Y1) modinverse p)");
            VG_Constantes._PASSO_A_PASSO_.setNovoPasso("\nL = ( 3 * ((" + vP1X + ")² mod " + vP + ") + " + vA + ") * (( 2 * " + vP1Y + ") modinverse "+vP+")");
            VG_Constantes._PASSO_A_PASSO_.setNovoPasso("\nL = ( 3 * ((" + vP1XQuadrado + ") mod " + vP + ") + " + vA + ") * ((" + _DOIS_.multiply(vP1Y) + ") modinverse "+vP+")");
            VG_Constantes._PASSO_A_PASSO_.setNovoPasso("\nL = ( 3 * (" + vP1XQuadrado.mod(vP)+ ") + " + vA + ") * ( " + _DOIS_.multiply(vP1Y) + " modinverse "+vP+")");
            VG_Constantes._PASSO_A_PASSO_.setNovoPasso("\nL = ( "+_TRES_.multiply(vP1XQuadrado.mod(vP))+"  + " + vA + ") * ("+vTmpInt2+")");
            VG_Constantes._PASSO_A_PASSO_.setNovoPasso("\nL = " + vTmpInt1 + " * " + vTmpInt2);
            VG_Constantes._PASSO_A_PASSO_.setNovoPasso("\nL = " + vLambda);

           
        } else {
            // lambda = (Y2 -Y1) / (X2 - X1)
            vTmpInt1 = outroPonto.getY().subtract(this.getY());
            vTmpInt2 = outroPonto.getX().subtract(this.getX());

            if (vTmpInt2.compareTo(new BigInteger("0")) == 0) {
                VG_Constantes._PASSO_A_PASSO_.setStatus(VG_Constantes._STATUS_ERRO_DIVISAO_POR_ZERO);
                VG_Constantes._PASSO_A_PASSO_.setResultadoFinal(VG_Constantes._PONTO_INFINITO);
                //return null;
                return new Ponto();
            }

            vTmpInt2 = vTmpInt2.modInverse(vP);

            vLambda = vTmpInt1.multiply(vTmpInt2);

            VG_Constantes._PASSO_A_PASSO_.setNovoPasso("\nL = (Y2 -Y1) * ((X2 - X1) modinverse p)");
            VG_Constantes._PASSO_A_PASSO_.setNovoPasso("\nL = (" + outroPonto.getY() + " - " + this.getY() + ") * ((" + outroPonto.getX() + "-" + this.getX() + ") modinverse " + vP+")");
            VG_Constantes._PASSO_A_PASSO_.setNovoPasso("\nL = (" + vTmpInt1 +  ") * ((" + outroPonto.getX().subtract(this.getX()) + ") modinverse " + vP+")");
            VG_Constantes._PASSO_A_PASSO_.setNovoPasso("\nL = " + vTmpInt1 + " * " + vTmpInt2);
            VG_Constantes._PASSO_A_PASSO_.setNovoPasso("\nL = " + vLambda);
        }

        //System.out.println("vLambda " + vLambda);

        BigInteger vX3 = vLambda.pow(2).subtract(vP1X).subtract(vP2X).mod(pCurva.getaP());
        VG_Constantes._PASSO_A_PASSO_.setNovoPasso("\n\nX3= (" + vLambda + "² - " + vP1X + " - " + vP2X + ") mod " + pCurva.getaP());
        VG_Constantes._PASSO_A_PASSO_.setNovoPasso("\nX3=" + vX3);

        BigInteger vY3 = vLambda.multiply(vP1X.subtract(vX3)).subtract(vP1Y).mod(pCurva.getaP());
        VG_Constantes._PASSO_A_PASSO_.setNovoPasso("\n\nY3= (" + vLambda + "*(" + vP1X + "-" + vX3 + ")-" + vP1Y + ") mod " + pCurva.getaP());
        VG_Constantes._PASSO_A_PASSO_.setNovoPasso("\nY3=" + vY3);

        Ponto p3 = new Ponto(vX3, vY3);
        VG_Constantes._PASSO_A_PASSO_.setNovoPasso("\n" + p3);

        return p3;
    }

    public Ponto doMultiplicar_Completo(String pStrMultiplicador, CurvaEliptica pCurva) {
        BigInteger pMultiplicador = new BigInteger(pStrMultiplicador);
        System.out.println("pMultiplicador " + pMultiplicador.toString());

        if (pMultiplicador.equals(BigInteger.ONE)) {
            System.out.println("Bah1");
            return this;
        }

        if (pMultiplicador.equals(_DOIS_)) {
            System.out.println("Bah2 " + pMultiplicador.toString());
            return this.doAdd_Completo(this, pCurva);
        }

        if (pMultiplicador.mod(_DOIS_).compareTo(BigInteger.ZERO) == 0) {
            System.out.println("BahPAR " + pMultiplicador.toString());
            Ponto vRaizQuadrada = this.doMultiplicar_Completo(pMultiplicador.divide(_DOIS_).toString(), pCurva);

            if (vRaizQuadrada != null) {
                VG_Constantes._PASSO_A_PASSO_.setStatus(VG_Constantes._STATUS_SEM_ERRO);
                vRaizQuadrada = vRaizQuadrada.doAdd_Completo(vRaizQuadrada, pCurva);
            }
            return vRaizQuadrada;
        } else {
            System.out.println("BahIMPAR " + pMultiplicador.toString());
            pMultiplicador = pMultiplicador.subtract(BigInteger.ONE);

            Ponto ponto = this.doMultiplicar_Completo(pMultiplicador.toString(), pCurva);

            if (ponto != null) {
                VG_Constantes._PASSO_A_PASSO_.setStatus(VG_Constantes._STATUS_SEM_ERRO);
                ponto = ponto.doAdd_Completo(this, pCurva);
                
            }
            return ponto;
        }
    }

    //##########################################################################
    public Ponto doSubtrair_Aula(Ponto outroPonto, CurvaEliptica pCurva) {
        System.out.println("teste p1 -" + this + " => p2 " + outroPonto);
        VG_Constantes._PASSO_A_PASSO_.setNovoPasso("\nP1" + this + " - P2" + outroPonto);
        return this.doAdd_Aula(outroPonto.negarPonto(pCurva), pCurva);
    }

    public Ponto doAdd_Aula(Ponto outroPonto, CurvaEliptica pCurva) {
        System.out.println("teste p1 " + this + " => p2 " + outroPonto);

        if (outroPonto == null) {
            return null;
        }

        BigInteger vP1X = new BigInteger(this.getX().toString());
        BigInteger vP1Y = new BigInteger(this.getY().toString());
        BigInteger vP2X = new BigInteger(outroPonto.getX().toString());
        BigInteger vP1XQuadrado = vP1X.pow(2);
        BigInteger vTmpInt1;
        BigInteger vTmpInt2;

        if (this.equals(outroPonto)) {
           // System.out.println(this+"#$->if=="+outroPonto);
            //BigInteger lambda 
            vTmpInt1 = _TRES_.multiply(vP1XQuadrado).add(pCurva.getaA());
            vTmpInt2 = _DOIS_.multiply(vP1Y);
            
            VG_Constantes._PASSO_A_PASSO_.setNovoPasso("\n\n----------------------------------------------------------");
            VG_Constantes._PASSO_A_PASSO_.setNovoPasso("\nP1" + this + " + P2" + outroPonto + " , a=" + pCurva.getaA() + " , p=" + pCurva.getaP());
            VG_Constantes._PASSO_A_PASSO_.setNovoPasso("\nL = ( 3 * (X1)² + A) / ( 2 * Y1)");
            VG_Constantes._PASSO_A_PASSO_.setNovoPasso("\nL = ( 3 * " + vP1X + "² + " + pCurva.getaA() + " )/( 2*" + vP1Y + ")");
            VG_Constantes._PASSO_A_PASSO_.setNovoPasso("\nL = " + vTmpInt1 + "/" + vTmpInt2);

        } else {
           // System.out.println(this+"#$->else!="+outroPonto);
            vTmpInt1 = outroPonto.getY().subtract(this.getY());
            vTmpInt2 = outroPonto.getX().subtract(this.getX());
            
            VG_Constantes._PASSO_A_PASSO_.setNovoPasso("\n\n----------------------------------------------------------");
            VG_Constantes._PASSO_A_PASSO_.setNovoPasso("\nP1" + this + " + P2" + outroPonto + " , a=" + pCurva.getaA() + " , p=" + pCurva.getaP());
            VG_Constantes._PASSO_A_PASSO_.setNovoPasso("\nL = ( Y2 - Y1 ) / ( X2 - X1 )");
            VG_Constantes._PASSO_A_PASSO_.setNovoPasso("\nL = " + vTmpInt1 + "/" + vTmpInt2);

        }
        

       // System.out.println("# " + VG_Constantes._PASSO_A_PASSO_.getPassoApasso());

        if (vTmpInt2.compareTo(new BigInteger("0")) == 0) {
            VG_Constantes._PASSO_A_PASSO_.setStatus(VG_Constantes._STATUS_ERRO_DIVISAO_POR_ZERO);
            VG_Constantes._PASSO_A_PASSO_.setResultadoFinal(VG_Constantes._PONTO_INFINITO);
            return null;

        } else if (vTmpInt1.mod(vTmpInt2.abs()).compareTo(BigInteger.ZERO) != 0) {
            VG_Constantes._PASSO_A_PASSO_.setStatus(VG_Constantes._STATUS_ERRO_NUMERO_FRACIONARIO);
            VG_Constantes._PASSO_A_PASSO_.setResultadoFinal(" ");
            return null;
        }

        BigInteger vLambda = vTmpInt1.divide(vTmpInt2);

        VG_Constantes._PASSO_A_PASSO_.setNovoPasso("\nL = " + vLambda);

        BigInteger vX3 = vLambda.pow(2).subtract(vP1X).subtract(vP2X).mod(pCurva.getaP());
        VG_Constantes._PASSO_A_PASSO_.setNovoPasso("\n\nX3= (" + vLambda + "² - " + vP1X + " - " + vP2X + ") mod " + pCurva.getaP());
        VG_Constantes._PASSO_A_PASSO_.setNovoPasso("\nX3=" + vX3);

        BigInteger vY3 = vLambda.multiply(vP1X.subtract(vX3)).subtract(vP1Y).mod(pCurva.getaP());
        VG_Constantes._PASSO_A_PASSO_.setNovoPasso("\n\nY3= (" + vLambda + "*(" + vP1X + "-" + vX3 + ")-" + vP1Y + ") mod " + pCurva.getaP());
        VG_Constantes._PASSO_A_PASSO_.setNovoPasso("\nY3=" + vY3);

        Ponto p3 = new Ponto(vX3, vY3);
        VG_Constantes._PASSO_A_PASSO_.setNovoPasso("\n" + p3);

        return p3;

    }

    public Ponto doMultiplicar_Aula(String pStrMultiplicador, CurvaEliptica pCurva) {
        BigInteger pMultiplicador = new BigInteger(pStrMultiplicador);
        System.out.println("pMultiplicador " + pMultiplicador.toString());

        if (pMultiplicador.equals(BigInteger.ONE)) {
            System.out.println("Bah1");
            return this;
        }

        if (pMultiplicador.equals(_DOIS_)) {
            System.out.println("Bah2 " + pMultiplicador.toString());
            return this.doAdd_Aula(this, pCurva);
        }

        if (pMultiplicador.mod(_DOIS_).compareTo(BigInteger.ZERO) == 0) {
            System.out.println("BahPAR " + pMultiplicador.toString());
            Ponto vRaizQuadrada = this.doMultiplicar_Aula(pMultiplicador.divide(_DOIS_).toString(), pCurva);

            if (vRaizQuadrada != null) {
                vRaizQuadrada = vRaizQuadrada.doAdd_Aula(vRaizQuadrada, pCurva);
            }
            return vRaizQuadrada;
        } else {
            System.out.println("BahIMPAR " + pMultiplicador.toString());
            pMultiplicador = pMultiplicador.subtract(BigInteger.ONE);

            Ponto ponto = this.doMultiplicar_Aula(pMultiplicador.toString(), pCurva);

            if (ponto != null) {
                ponto = ponto.doAdd_Aula(this, pCurva);
            }
            return ponto;
        }
    }

    public static void main(String[] args) {
/*
        Ponto vP1;
        Ponto vP2;
        CurvaEliptica vCurva;

        System.out.println("\n1->");
        vCurva = new CurvaEliptica("4", "9", "17");
        vCurva.doGetListaPontosGrupoEliptico_Completo();
        vP1 = new Ponto("5", "16");
        vP2 = new Ponto("8", "3");

        Ponto vResposta = vP1.doAdd_Completo(vP2, vCurva);
        System.out.println("vResposta" + vResposta);
        System.err.println("---------------------");
        */
        CurvaEliptica vCurva = null;
        VG_Constantes._PASSO_A_PASSO_.doLimparPassoAPasso();
        List<CurvaEliptica> pCurvas = new ArrayList();
        Ponto XX = new Ponto("0","1");
        for (int i = 0; i < 100; i++) {
            VG_Constantes._PASSO_A_PASSO_.doLimparPassoAPasso();
            for (int j = 0; j < 100; j++) {
                vCurva = new CurvaEliptica(""+i, ""+j, "11");
                Ponto XX2 = XX.doMultiplicar_Aula("7", vCurva);
                if(VG_Constantes._PASSO_A_PASSO_.getStatus().equals(VG_Constantes._STATUS_SEM_ERRO) ){
                    System.out.println(vCurva);
                    pCurvas.add(vCurva);
                }                
            }
        }
        
        for (CurvaEliptica pCurva : pCurvas) {
            System.out.println(pCurva);
        }
    }

}

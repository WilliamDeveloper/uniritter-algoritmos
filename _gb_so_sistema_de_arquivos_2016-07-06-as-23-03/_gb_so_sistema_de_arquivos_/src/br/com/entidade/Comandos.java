package br.com.entidade;

import br.com.system.config.V_Constantes;
import br.com.utils.String_Util;
import javax.swing.JOptionPane;

public class Comandos {

//#############################################################################
    public static String doGetNotNullAndNotEmptyAndUpperStr(String str) {
        String valor = null;
        String textoDaCaixaDeDialogo = str;
        boolean acaoValida = false;

        while (acaoValida == false) {
            valor = JOptionPane.showInputDialog(textoDaCaixaDeDialogo);
            if (valor != null) {
                acaoValida = !valor.isEmpty();
            }
        }
        return valor.trim().toUpperCase();
    }

//#############################################################################
    public static String doGetNomePastaOuArquivo(String tipo) {
        String pasta = null;
        boolean acaoInvalida = true;

        while (acaoInvalida == true) {
            pasta = doGetNotNullAndNotEmptyAndUpperStr("[" + tipo + ":] DIGITE UM NOME DE " + tipo + " VÁLIDO:");
            if (pasta != null && pasta.length() <= V_Constantes.TAM_STR_DIR_FILE) {
                if (pasta.contains("\\") || pasta.contains("/")) {
                    acaoInvalida = true;
                } else {
                    acaoInvalida = false;
                }
            }
        }
        return pasta.trim().toUpperCase();
    }

//#############################################################################
    public static String doGetCaminhoDiretorio() {
        String pasta = null;
        boolean acaoValida = false;

        while (acaoValida == false) {
            pasta = doGetNotNullAndNotEmptyAndUpperStr("[DIR:] DIGITE UM CAMINHO VÁLIDO DE DIRETÓRIO:");
            if (pasta != null) {
                String[] split = pasta.split("/");
                for (int i = 0; i < split.length; i++) {
                    if (split[i].length() > V_Constantes.TAM_STR_DIR_FILE) {
                        acaoValida = false;
                        System.out.println("#######################################################");
                        System.out.println("###### CADA DIR DEVE TER NO MAX " + V_Constantes.TAM_STR_DIR_FILE + " CHARACTERES #########");
                        System.out.println("#######################################################");
                        System.out.println("Nome do diretorio Execedeu " + V_Constantes.TAM_STR_DIR_FILE);
                        break;
                    } else {
                        acaoValida = true;
                    }
                }
                if (acaoValida == true || split.length == 0) {
                    acaoValida = pasta.startsWith("/");
                }
            }
        }
        return pasta.toUpperCase();
    }

    //#############################################################################
    public static String doGetCaminhoDiretorioComArquivo() {
        String pasta = null;
        boolean acaoValida = false;

        while (acaoValida == false) {
            pasta = doGetNotNullAndNotEmptyAndUpperStr("[/DIR/ARQ:] DIGITE UM CAMINHO VÁLIDO DE DIRETÓRIO:");
            if (pasta != null) {
                String[] split = pasta.split("/");
                for (int i = 0; i < split.length; i++) {
                    if (split[i].length() > V_Constantes.TAM_STR_DIR_FILE) {
                        acaoValida = false;
                        System.out.println("#######################################################");
                        System.out.println("###### CADA DIR DEVE TER NO MAX " + V_Constantes.TAM_STR_DIR_FILE + " CHARACTERES #########");
                        System.out.println("#######################################################");
                        System.out.println("Nome do diretorio Execedeu " + V_Constantes.TAM_STR_DIR_FILE);
                        break;
                    } else {
                        acaoValida = true;
                    }
                }
                if (acaoValida == true || split.length == 0) {
                    acaoValida = pasta.startsWith("/");
                }
            }
        }
        return pasta.toUpperCase();
    }

//#############################################################################
    private static String doGetAcaoValida(String str) {

        boolean acaoValida = false;
        String acao = " ";
        while (acaoValida == false) {
            acao = doGetNotNullAndNotEmptyAndUpperStr(str);
            for (String acaoDisponivel : V_Constantes.LISTA_ACOES_CLIENTE) {
                acaoValida = acao.equals(acaoDisponivel);
                if (acaoValida == true) {
                    break;
                }
            }
        }

        return acao;
    }

//#############################################################################
    public static String doMostrarAcoesDisponivelCliente() {
        String msg = "Digite um dos comandos: ";
        for (int i = 0; i < V_Constantes.LISTA_ACOES_CLIENTE.length; i++) {
            //msg += "\n" + i + " - " + V_Constantes.LISTA_ACOES_CLIENTE[i];//teste
            msg += "\n" +  V_Constantes.LISTA_ACOES_CLIENTE[i];
        }
        System.out.println(msg);
        String acao = Comandos.doGetAcaoValida(msg);
        return acao;
    }

//#############################################################################
    public static int doGetIndexPosCursorTexto(String str) {
        String teste = "["+str+"]Digite um valor inteiro";
        String valor;
        while (true) {
            valor = doGetNotNullAndNotEmptyAndUpperStr(teste);
            if (String_Util.doValidaStrIsNumber(valor)) {
                break;
            }
        }
        return Integer.valueOf(valor);
    }

//#############################################################################
    public static String doGetEntradaTextoArquivo() {
        String teste = "[TEXTO]Digite o que deseja adicionar no arquivo";
        String valor = null;

        boolean acaoValida = false;
        while (acaoValida == false) {
            valor = JOptionPane.showInputDialog(teste);
            if (valor != null) {
                acaoValida = !valor.isEmpty();
            }
        }
        return valor;
    }

//#############################################################################
    public static void doGetStringFormatada80bylinha(String str) {
        System.out.println("\nTESTE...");
        System.out.println("##########################################################################");//teste
        System.out.println("##Conteudo formatado para 80 caracter por linha para facilitar a leitura##");//teste
        System.out.println("##########################################################################");//teste

        System.out.println("doGetStringFormatada80bylinha");
        StringBuffer sb = new StringBuffer();

        int ultimoIndice = 0;
        for (int i = 0; i < str.length(); i++) {

            sb.append(str.charAt(i));
            if (i == str.length() - 1) {
                System.out.println((ultimoIndice + 1) + "~" + (i) + " : " + sb);
            } else if (sb.length() == 80) {
                System.out.println((i - 79) + "~" + (i) + " : " + sb);
                ultimoIndice = i;
                sb = new StringBuffer();
            }
        }
    }
}

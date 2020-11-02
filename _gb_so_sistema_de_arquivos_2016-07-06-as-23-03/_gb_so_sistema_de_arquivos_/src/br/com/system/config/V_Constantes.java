package br.com.system.config;

import br.com.entidade.Comandos;
import br.com.entidade.ArquivosAbertos;
import br.com.entidade.Tabela;

public class V_Constantes {
    public static final int MAX_FILE_OPEN = 2;
    public static ArquivosAbertos vARQUIVOS_ABERTO_ = new ArquivosAbertos();
    
    public static final int TAM_4K = 4 * 1024;
    public static final int TAM_8K = 8 * 1024;
    public static final int TAM_DISCO_4M = 4 * 1024 * 1024;
    public static final int TAM_DISCO_8M = 8 * 1024 * 1024;
    public static final int TAM_DISCO_16M = 16 * 1024 * 1024;//mb*kb*by
    public static final int TAM_DISCO_32M = 32 * 1024 * 1024;//mb*kb*by
    //public static final int TAM_DE_CADA_SETOR = 4 * 1024;
    public static final String str_teste1 = "THIS IS A TEST";
    public static final String str_teste2 = "THIS IS A CONTENT OF A SECTOR THAT I WANT TO BE BIGGER BLA BLA BLA";
    public static final String str_teste3 = "WHAT || EVER";
    public static final String str_teste4 = "THIS IS A CONTENT OF A SECTOR THAT I WANT TO BE BIGGER BLA BLA BLTHIS IS A CONTENT OF A SECTOR THAT I WANT TO BE BIGGER BLA BLA BLTHIS IS A CONTENT OF A SECTOR THAT I WANT TO BE BIGGER BLA BLA BLTHIS IS A CONTENT OF A SECTOR THAT I WANT TO BE BIGGER BLA BLA BLTHIS IS A CONTENT OF A SECTOR THAT I WANT TO BE BIGGER BLA BLA BLTHIS IS A CONTENT OF A SECTOR THAT I WANT TO BE BIGGER BLA BLA BLTHIS IS A CONTENT OF A SECTOR THAT I WANT TO BE BIGGER BLA BLA BLAAAAAAATHIS IS A CONTENT OF A SECTOR THAT I WANT TO BE BA";
    public static final String str_teste5 = "THIS IS A CONTENT OF A SECTOR THAT I WANT TO BE BIGGER BLA BLA BLTHIS IS A CONTENT OF A SECTOR THAT I WANT TO BE BIGGER BLA BLA BLTHIS IS A CONTENT OF A SECTOR THAT I WANT TO BE BIGGER BLA BLA BLTHIS IS A CONTENT OF A SECTOR THAT I WANT TO BE BIGGER BLA BLA BLTHIS IS A CONTENT OF A SECTOR THAT I WANT TO BE BIGGER BLA BLA BLTHIS IS A CONTENT OF A SECTOR THAT I WANT TO BE BIGGER BLA BLA BLTHIS IS A CONTENT OF A SECTOR THAT I WANT TO BE BIGGER BLA BLA BLAAAAAAATHIS IS A CONTENT OF A SECTOR THAT I WANT TO BE BA";

    public static final int TAM_BIT = 1;
    public static final int TAM_BYTE = 8; //8 bit
    public static final int TAM_KBYTE = 1024; //1024 byte
    public static final int TAM_MBYTE = 1024; //1024 kbyte

    public static final char TIPO_SEM_TIPO = '-';
    public static final char TIPO_PASTA = 'D';
    public static final char TIPO_ARQUIVO = 'A';

    public static final int TAM_MAX_BLOCO_BITMAPS_2 = 2; //

    public static final int TAM_STR_DIR_FILE = 3; //1024 kbyte

    public static final String MSG_ERRO = "ERRO";
    
    public static final String ACAO_MKFS = "MKFS";
    public static final String ACAO_MOUNT = "MOUNT";
    public static final String ACAO_MKDIR = "MKDIR";
    public static final String ACAO_RMDIR = "RMDIR";
    public static final String ACAO_LSDIR = "LSDIR";
    public static final String ACAO_FILE_CREATE = "FILE_CREATE";
    public static final String ACAO_FILE_OPEN = "FILE_OPEN";
    public static final String ACAO_FILE_CLOSE = "FILE_CLOSE";
    public static final String ACAO_FILE_WRITE = "FILE_WRITE";
    public static final String ACAO_FILE_DELETE = "FILE_DELETE";
    public static final String ACAO_FILE_READ = "FILE_READ";
    public static final String ACAO_SAIR = "SAIR";

    public static final String LISTA_ACOES_CLIENTE[] = new String[]{
        ACAO_MKDIR, ACAO_LSDIR, ACAO_RMDIR, ACAO_FILE_CREATE,ACAO_FILE_DELETE, ACAO_FILE_OPEN,ACAO_FILE_CLOSE, ACAO_FILE_WRITE, ACAO_FILE_READ, ACAO_SAIR
    };

    
    //deve ser a ultima dessa classe
    public static final int TAM_LIMITE_REGISTROS_TABELA = Tabela.doGetLimiteRegistroTabela();
}

package br.com.util.file;

import br.com.config.VGlobal;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class LeitorArquivo {

    private BufferedReader bufferedReader = null;
    private BufferedWriter bufferedWriter = null;
    private static LeitorArquivo leitorArquivo = null;

    public static LeitorArquivo getInstance() {
        if (leitorArquivo == null) {
            leitorArquivo = new LeitorArquivo();
        }
        return leitorArquivo;
    }

    public synchronized void escreverLinha(String linha, String camanhoDoArquivo) {
        try {
            this.bufferedWriter = new BufferedWriter(new FileWriter(camanhoDoArquivo));
            this.bufferedWriter.write(linha);
            this.bufferedWriter.newLine();
            this.bufferedWriter.flush();
        } catch (IOException ex) {
            Logger.getLogger(LeitorArquivo.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                this.bufferedWriter.close();
                this.bufferedWriter = null;
            } catch (IOException ex) {
                Logger.getLogger(LeitorArquivo.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }

    public synchronized ArrayList getLinhasArrayList(String camanhoDoArquivo) {
        String s = "";
        ArrayList<String> list = new ArrayList();
       
        try {
            InputStream is = Thread.currentThread().getContextClassLoader().getResourceAsStream(camanhoDoArquivo);
            this.bufferedReader = new BufferedReader(new InputStreamReader(is));
            while ((s = bufferedReader.readLine()) != null) {
                list.add(s);
            }
        } catch (FileNotFoundException ex) {
            Logger.getLogger(LeitorArquivo.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(LeitorArquivo.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try {
                this.bufferedReader.close();
                this.bufferedReader = null;
            } catch (IOException ex) {
                Logger.getLogger(LeitorArquivo.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
        return list;
    }
    
        public synchronized int[] getLinhasInt(String camanhoDoArquivo) {
        String s = "";
        int[] array;
        ArrayList<String> list = new ArrayList();
       
        try {
            InputStream is = Thread.currentThread().getContextClassLoader().getResourceAsStream(camanhoDoArquivo);
            this.bufferedReader = new BufferedReader(new InputStreamReader(is));
            while ((s = bufferedReader.readLine()) != null) {
                list.add(s);
            }
        } catch (FileNotFoundException ex) {
            Logger.getLogger(LeitorArquivo.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(LeitorArquivo.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try {
                this.bufferedReader.close();
                this.bufferedReader = null;
            } catch (IOException ex) {
                Logger.getLogger(LeitorArquivo.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
        array = new int[list.size()];
        for (int i = 0; i < list.size(); i++) {
            array[i] = Integer.parseInt(list.get(i));
        }
        
        
        return array;
    }

    public static void main(String[] args) throws IOException {
        System.out.println(LeitorArquivo.getInstance().getLinhasArrayList(VGlobal.NOME_DO_ARQUIVO_00).get(0));

    }
}

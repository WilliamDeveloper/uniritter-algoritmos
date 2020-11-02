
package br.com.mvc.model;

import br.com.utils.HashString;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class Tabela {
    public Map<String,String> registros;

//#############################################################################
    public Tabela(){
        this.registros = new HashMap<String,String>();
    }
    
//#############################################################################
    public synchronized  void setRegistro(Map<String,String> registro){
        this.registros = registro;
    }
    
//#############################################################################
    public synchronized void put(String chave,String valor){
        this.registros.put(chave, valor);
    }

//#############################################################################
    public synchronized String get(String chave){
        return registros.get(chave);
    }

//#############################################################################
    public synchronized  int size(){
        return registros.size();
    }
    
//#############################################################################
    public synchronized void remove(String chave){
        this.registros.remove(chave);
    }

//#############################################################################
    public synchronized  List<String> getListKeysOrderedByHash(){
        List<String> list = new ArrayList<String>(this.registros.keySet());
        
        Comparator<String> comp = new Comparator<String>(){
            @Override
            public int compare(String left, String right){
                return Integer.compare(HashString.getIntHashStr(left), HashString.getIntHashStr(right));
            }
        };        
        Collections.sort(list,comp);
        return list;
    }
 
//#############################################################################
    public synchronized void mostrarElementosTabela(){
        System.out.println("\n---------------------------------");
        System.out.println("Total_registos: "+this.registros.size());
        for (Map.Entry<String, String> entry : this.registros.entrySet()) {
            String chave = entry.getKey();
            String valor = entry.getValue();
            System.out.println("chave="+chave+",valor="+valor);
        }
        System.out.println("---------------------------------\n");
    }    
    /*
    public static void main(String[] args) {
        Tabela t = new Tabela();
        
        //t.put(""+RandomUtil.randomRange(0, 50), ""+i);
        System.out.println("f".codePointAt(0));
        System.out.println("3".codePointAt(0));
        System.out.println("4".codePointAt(0));
        t.put("33", "33");
        t.put("34", "33");
        t.put("40", "33");
        t.put("45", "45");
        t.put("1", "1");
        t.put("13", "13");
        t.put("47", "47");
        t.put("8", "8");
        t.put("42", "42");
        t.put("43", "43");
        t.put("430", "43");
        t.put("43Asadsa", "43");
        t.put("Ffafdsaf", "43");
        t.put("f", "43");
        t.put("G", "43");
        t.put("william", "43");
        t.put("william goulart pacheco", "43");
        t.put("william", "43");
        
        System.out.println(t.registros);
        System.out.println(t.getListKeysOrderedByHash());
        System.out.println(""+HashString.getIntHashStr("10"));
        System.out.println("AQUi-"+HashString.getIntHashStr("zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"));
        
        System.out.println(""+HashString.getIntHashStr("0"));
        System.out.println(""+HashString.getIntHashStr("1"));
        System.out.println(""+HashString.getIntHashStr("2"));
        System.out.println(""+HashString.getIntHashStr("9"));
        for (Map.Entry<String, String> entry : t.registros.entrySet()) {
            Object key = entry.getKey();
            Object value = entry.getValue();
            System.out.println("chave="+key+",valor="+value);
        }        
    }    
  */
}
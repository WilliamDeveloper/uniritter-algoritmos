/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.utils;


import br.com.entidade.Registro;
import br.com.entidade.SuperBlock;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author william
 */

class Exemplo1  implements Serializable{}
class Exemplo2  implements Serializable{boolean oi;}
class Exemplo3  implements Serializable{int oi;}
class Exemplo4  implements Serializable{boolean oi1;int oi2;}

public class ObjSizeFromSerialize {
    public static void main(String[] args) throws IllegalAccessException {
        //exemplo2 a  = new exemplo2();
        //SuperBlock a = new SuperBlock();
        Registro  r[] = new Registro[10];
        System.out.println("- ss "+(ObjSizeFromSerialize.getSizeObj(r)));
        
        for (int i = 0; i < 10; i++) {
            System.out.println("- ss "+i+" "+(ObjSizeFromSerialize.getSizeObj(r)));
            r[i] = new Registro();
        }
        
        Exemplo1 a = new Exemplo1();
        Exemplo2 b = new Exemplo2();
        Exemplo3 c = new Exemplo3();
        
       // String st = "String with 20 chars";
       // System.out.println("strlegth: "+st.length()+" str "+Character.BYTES+" TAMBITS "+st.getBytes().toString());
        //System.out.println("strlegth: "+st.length()+" str "+Integer.BYTES+" TAMBITS "+st.getBytes().toString());
        //System.out.println(st.length()+"- ss "+(ObjSizeFromSerialize.getSizeObj(a)/8));
        System.out.println("- ss "+(ObjSizeFromSerialize.getSizeObj(a)));
        System.out.println("- ss "+(ObjSizeFromSerialize.getSizeObj(b)));
        System.out.println("- ss "+(ObjSizeFromSerialize.getSizeObj(c)));
        System.out.println("- ss "+(ObjSizeFromSerialize.getSizeObj(r)));
        System.out.println(Character.BYTES);
        //System.out.println(""+Runtime.getRuntime().totalMemory());
//        MemoryUtil mmm = new MemoryUtil
       // System.out.println("" + MemoryUtil.sizeOf(a));
    }
    
    public static long getSizeObj(Serializable  objSerializable){
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        ObjectOutputStream oos;
        try {
            oos = new ObjectOutputStream(baos);
            oos.writeObject(objSerializable);
            oos.flush();
            oos.close();
        } catch (IOException ex) {
            Logger.getLogger(ObjSizeFromSerialize.class.getName()).log(Level.SEVERE, null, ex);
        }        
        return baos.size();
    }
    

}

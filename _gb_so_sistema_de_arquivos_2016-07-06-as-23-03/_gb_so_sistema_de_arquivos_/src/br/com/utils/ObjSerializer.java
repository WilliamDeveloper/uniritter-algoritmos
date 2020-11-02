package br.com.utils;

import br.com.entidade.Registro;
import br.com.entidade.SistemaArquivos;
import br.com.entidade.SuperBlock;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ObjSerializer {

    public static byte[] doSerialize(Object obj) {
        if (obj == null) {
            return new byte[0];
        }
        try {
            ByteArrayOutputStream byteArrayOut = new ByteArrayOutputStream();
            ObjectOutputStream objectOut = new ObjectOutputStream(byteArrayOut);
            objectOut.writeObject(obj);
            return byteArrayOut.toByteArray();
        } catch (final IOException e) {
            e.printStackTrace();
            return new byte[0];
        }
    }

    public static byte[] doSerializeToTamBloco(Object obj) {
        byte[] buffer = doSerialize(obj);
        byte[] bufferBloco = new byte[SistemaArquivos.TAM_BLOCO_4K];
        int diferenca = bufferBloco.length - buffer.length;

        if (diferenca > 0) {
            for (int i = 0; i < bufferBloco.length; i++) {
                if (i < buffer.length) {
                    bufferBloco[i] = buffer[i];
                } else {
                    bufferBloco[i] = 0;
                }
            }
        } else {
            bufferBloco = buffer;
        }

        return bufferBloco;
    }

    public static <T> T doDeserialize(byte[] objectBytes, Class<T> type) throws Exception{
        if (objectBytes == null || objectBytes.length == 0) {
            return null;
        }
        try {
            ByteArrayInputStream byteArrayIn = new ByteArrayInputStream(objectBytes);
            ObjectInputStream objectIn = new ObjectInputStream(byteArrayIn);
            return (T) objectIn.readObject();
        } catch (final Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static int getSizeByteOfSerializedObj(Serializable objSerializable) {
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

    public static void main(final String[] args) throws Exception {
        SuperBlock sb = new SuperBlock();
        sb.doSetNumeroTotalDeBlocos(10);
        sb.doSetTotalDeBlocosOcupadosPeloBitmap(2);
        sb.doSetIndexBlocoRaiz(3);
        //     doSerialize to the byte array
        byte[] objectBytes = ObjSerializer.doSerialize(sb);
        //   doDeserialize from the byte array
        SuperBlock blogUserFromBytes = ObjSerializer.doDeserialize(objectBytes, SuperBlock.class);
        System.out.println(blogUserFromBytes.doGetNumeroTotalDeBlocos());
        System.out.println(ObjSerializer.getSizeByteOfSerializedObj(sb));
        
        Registro [] rr = new Registro[100];
        System.out.println(ObjSerializer.getSizeByteOfSerializedObj(rr));

    }
    /*
    OBS.: a classe que deseja serializar precisa utilizar Serializable como o ex. abaixo
    
    public class SuperBlock implements Serializable{
        public int vTotalDeBlocosNoDisco; // ex. 10
        public int vTotalDeBlocosOcupadosPeloBitmap; //ex. 2
        public int vBlocoOndeIniciaARaiz; //ex. 3
    }
     */

}

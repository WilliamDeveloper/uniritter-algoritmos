/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.utils;

/**
 *
 * @author william
 */
public class MinMaxValue {

    public static void main(String args[]) {

        System.out.println("boolean-> min: " + Boolean.FALSE+" max: " + Boolean.TRUE+" bit: 1");
        System.out.println();
        System.out.println("byte-> min: " + Byte.MIN_VALUE+" max: " + Byte.MAX_VALUE+" byte: "+Byte.BYTES + " bits: "+Byte.BYTES*8);
        System.out.println();
        System.out.println("short-> min: " + Short.MIN_VALUE+" max: " + Short.MAX_VALUE+" byte: "+Short.BYTES+ " bits: "+Short.BYTES*8);
        System.out.println();
        System.out.println("character-> min: " + (int) Character.MIN_VALUE+" max: " + (int) Character.MAX_VALUE+" byte: "+Character.BYTES+ " bits: "+Character.BYTES*8);
        System.out.println();
        System.out.println("int-> min: " + Integer.MIN_VALUE+" max: " + Integer.MAX_VALUE+" byte: "+Integer.BYTES+ " bits: "+Integer.BYTES*8);
        System.out.println();
        System.out.println("long-> min: " + Long.MIN_VALUE+" max: " + Long.MAX_VALUE+" byte: "+Long.BYTES+ " bits: "+Long.BYTES*8);
        System.out.println();
        System.out.println("float-> min: " + Float.MIN_VALUE+" max: " + Float.MAX_VALUE+" byte: "+Float.BYTES+ " bits: "+Float.BYTES*8);
        System.out.println();
        System.out.println("double-> min: " + Double.MIN_VALUE+" max: " + Double.MAX_VALUE+" byte: "+Double.BYTES+ " bits: "+Double.BYTES*8);
        System.out.println();
        
      /*  
        2 Bytes = 16 Bits = 2^16 different characters are supported.
Therefore, characters from most of the languages will fit inside 2 Bytes.
However, there certain languages or characters (Esp from Chinese, Japanese languages) which require more than 2 bytes to store the data.
In such case, combination of two or more java characters represent single character (or alphabate) of such language. (See UTF-8).
*/
    }

}

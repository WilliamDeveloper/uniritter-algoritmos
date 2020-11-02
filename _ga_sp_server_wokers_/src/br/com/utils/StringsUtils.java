
package br.com.utils;


public class StringsUtils {
    
public static String padLeft(String str, int tamanho, String character){
  StringBuilder padded = new StringBuilder(str);
  while (padded.length() < tamanho){
     padded.insert(0, character);
  }
  return padded.toString();
}
  
public static String padRight(String str, int tamanho, String padChar){
  StringBuilder padded = new StringBuilder(str);
  while (padded.length() < tamanho){
    padded.append(padChar);   
  }
  return padded.toString();
}

public static String padCenter(String str, int tamanho, String padChar){    
  int metade = (tamanho + str.length()) / 2 ;
  str =  padLeft(str, metade, padChar);
  str =   padRight(str, tamanho, padChar);    
  return str;
}

  public static void main(String args[]) throws Exception {
      int tamanho = (12+"1234567890").length();
      int metade = tamanho / 2 ;
      String str = "10445454";
      System.out.println(tamanho);
    System.out.println(StringsUtils.padRight(str, tamanho,"#") + "*");
    System.out.println(StringsUtils.padLeft(str, tamanho,"#") + "*");
    System.out.println(StringsUtils.padCenter(str, tamanho,"#") + "*");
    
  }
}

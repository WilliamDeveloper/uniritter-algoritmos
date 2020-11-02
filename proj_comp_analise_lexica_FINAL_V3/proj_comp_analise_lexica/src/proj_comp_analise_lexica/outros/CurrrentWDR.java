/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package proj_comp_analise_lexica.outros;

import java.io.File;

public class CurrrentWDR {

public static void main(String[] args) throws Exception {

System.out.println(System.getProperty("user.dir"));

System.out.println(new File(".").getAbsolutePath());

System.out.println(new File(".").getCanonicalPath());

System.out.println(new File(".").getName());

System.out.println(new File(".").getParent());

System.out.println(new File(".").getPath());

System.out.println(new File(".").getAbsoluteFile());

System.out.println(new File(".").getCanonicalFile());

System.out.println(new File(".").getParentFile());

	 String workingDir = System.getProperty("user.dir");
	 System.out.println("Current working directory : " + workingDir+"\\build\\classes\\proj_comp_analise_lexica\\entrada.txt");
	//arrayListFitaEntrada = new TxtLoader().getArrayListCaractersFromTxt(workingDir+"\\build\\classes\\proj_comp_analise_lexica\\entrada.txt");

	 Character c = '\n';
	 Character tmpChar = (Character.isWhitespace(c) || c == '\n'||c == '\t')? '\n' : c;
	   System.out.println("---> "+tmpChar);
	   System.out.println('\n'); 
	   System.out.println('\t'); 
	   System.out.println('\n'); 
	   //\r\n quebra linha
	   //32  SPACE 
	   //9  TAB (horizontal tab) 
	   //13 quebra linha
	   /*
	   Caro David, a quebra de linha na realidade é (são) um(ns) caractere(s). 
	   No windows, a quebra de linha é o caractere 10 e 13 (da tabela ascii) juntos. 
	   No linux, a quebra de linha é apenas o caractere 10. 
	   O bloco de notas, é um editor de texto simples, 
	   ele só irá dar uma quebra de linha quando encontrar um caractere 10 e 13 (seguidos). 
	   Os demais editores, quando encontram o caractere 10, 
	   coloca a quebra de linha (caso o caractere 13 exista, ele simplesmente será ignorado).
	   */
	   
	   //System.getProperties("line.separator");
	   System.out.println("code: "+String.valueOf('\r').codePointAt(0)+ " char: "+Character.getName(String.valueOf('\r').codePointAt(0)));
	   System.out.println("code: "+String.valueOf('\r').codePointAt(0)+ " char: "+Character.getName(13));
	   System.out.println("code: "+String.valueOf('\n').codePointAt(0)+ " char: "+Character.getName(10));
	   
	   
	   
	Character testeChar = ' ';
	
	String minhavo = "hdushdsauhduashd\n\t\n";
	   for (int i = 0; i < minhavo.length(); i++) {	
	 c = minhavo.charAt(i);
//	tmpChar = (Character.isWhitespace(c) || c == '\n'||c == '\t'|| c == null)? '\n' : c;
	testeChar = (c == ' ' || c == '\n'||c == '\t')? ' ' : c;
	testeChar = Character.isLetter(c)? 'a' : testeChar;
	testeChar = Character.isDigit(c)? '1' : testeChar;
	testeChar = (c == '.')?'.':testeChar;
	testeChar = null;
	       System.out.println(testeChar.charValue());
	   }	 
}

}
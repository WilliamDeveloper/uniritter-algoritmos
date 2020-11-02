package proj_comp_analise_lexica;

public class Main {
    public static void main(String[] args) {
	AnalisadorLexico analisadorLexico = new  AnalisadorLexico();
	
	
	System.out.println("##### INICIO DO RECONHECIMENTO LEXICO #####");
	System.out.println(String.format("%0$70s", "-").replace(' ', '-'));
	
	analisadorLexico.sp_start();
	
	System.out.println(String.format("%0$70s", "-").replace(' ', '-'));
	System.out.println("##### INICIO DO RECONHECIMENTO LEXICO #####");	
	
    }
}


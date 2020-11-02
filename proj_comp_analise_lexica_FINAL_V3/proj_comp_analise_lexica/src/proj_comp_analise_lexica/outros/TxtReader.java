package proj_comp_analise_lexica.outros;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import proj_comp_analise_lexica.model.TxtLoader;

public class TxtReader {
    public static void main(String[] args) {
 TxtLoader rt = new TxtLoader();
    //rt.salvarTxt();
    //rt.lerTxt();
    rt.lerTodos();
    rt.txtSave("oiâáseiçao", "douze.txt");

    } 
}
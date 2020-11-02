package proj_comp_analise_lexica.outros.Automatos;
interface Automatos {
    public int sp_muda_estado(Character c) ;
    public String sf_get_nome_termo();
    public void sp_limpar_estado_atual();
    //public boolean sf_verifica_fim_termo();
}

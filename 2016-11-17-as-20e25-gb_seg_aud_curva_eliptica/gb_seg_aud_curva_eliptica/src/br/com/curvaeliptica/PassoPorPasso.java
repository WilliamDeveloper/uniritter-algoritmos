package br.com.curvaeliptica;

public class PassoPorPasso {

    private String status;
    private String resultadoFinal;
    private StringBuffer passoPorPasso = new StringBuffer();
    
    public PassoPorPasso(){
        this.doLimparPassoAPasso();
    }
    
    public void doLimparPassoAPasso(){
        this.passoPorPasso.delete(0, this.passoPorPasso.length());
        this.status = VG_Constantes._STATUS_SEM_ERRO;
        this.resultadoFinal = "?";
    }

    public void setResultadoFinal(String vResultadoFinal) {
        this.resultadoFinal = vResultadoFinal;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public void setNovoPasso(String pPasso) {
        this.passoPorPasso.append(pPasso);
    }

    public String getStatus() {
        return status;
    }

    public String getResultadoFinal() {
        return resultadoFinal;
    }

    public String getPassoApasso() {
        return this.passoPorPasso.toString();
    }

}

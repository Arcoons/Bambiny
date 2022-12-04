/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloVO;

/**
 *
 * @author Minguihobi
 */
public class MatriculaVO {

    private String idMatr, idUsua, idAlum,alumMatr, regiMatr, fechMatr, estaMatr;

    public MatriculaVO(String idMatr, String idUsua, String idAlum, String alumMatr, String regiMatr, String fechMatr, String estaMatr) {
        this.idMatr = idMatr;
        this.idUsua = idUsua;
        this.idAlum = idAlum;
        this.alumMatr = alumMatr;
        this.regiMatr = regiMatr;
        this.fechMatr = fechMatr;
        this.estaMatr = estaMatr;
    }

    public String getIdMatr() {
        return idMatr;
    }

    public void setIdMatr(String idMatr) {
        this.idMatr = idMatr;
    }

    public String getIdUsua() {
        return idUsua;
    }

    public void setIdUsua(String idUsua) {
        this.idUsua = idUsua;
    }

    public String getIdAlum() {
        return idAlum;
    }

    public void setIdAlum(String idAlum) {
        this.idAlum = idAlum;
    }

    public String getAlumMatr() {
        return alumMatr;
    }

    public void setAlumMatr(String alumMatr) {
        this.alumMatr = alumMatr;
    }

    public String getRegiMatr() {
        return regiMatr;
    }

    public void setRegiMatr(String regiMatr) {
        this.regiMatr = regiMatr;
    }

    public String getFechMatr() {
        return fechMatr;
    }

    public void setFechMatr(String fechMatr) {
        this.fechMatr = fechMatr;
    }

    public String getEstaMatr() {
        return estaMatr;
    }

    public void setEstaMatr(String estaMatr) {
        this.estaMatr = estaMatr;
    }

    
    public MatriculaVO() {
    }

}

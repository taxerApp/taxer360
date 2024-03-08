/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dto;

/**
 *
 * @author David
 */
public class CuestionarioDto {
    private int id;
    private String pregunta;
    private int idCompetencia;
    private int idNivelCompetencia;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPregunta() {
        return pregunta;
    }

    public void setPregunta(String pregunta) {
        this.pregunta = pregunta;
    }

    public int getIdCompetencia() {
        return idCompetencia;
    }

    public void setIdCompetencia(int idCompetencia) {
        this.idCompetencia = idCompetencia;
    }

   

    public int getIdNivelCompetencia() {
        return idNivelCompetencia;
    }

    public void setIdNivelCompetencia(int idNivelCompetencia) {
        this.idNivelCompetencia = idNivelCompetencia;
    }
    
    
}

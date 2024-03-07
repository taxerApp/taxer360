/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dto;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author David
 */
public class ExcelDto {
    private int indiceColumna;
    private String encabezado;
    private List<String> lstValores = new ArrayList<String>();

    public String getEncabezado() {
        return encabezado;
    }

    public void setEncabezado(String encabezado) {
        this.encabezado = encabezado;
    }

    public List<String> getLstValores() {
        return lstValores;
    }

    public void setLstValores(List<String> lstValores) {
        this.lstValores = lstValores;
    }

    public int getIndiceColumna() {
        return indiceColumna;
    }

    public void setIndiceColumna(int indiceColumna) {
        this.indiceColumna = indiceColumna;
    }
    
    
}

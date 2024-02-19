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
public class MenuDto {
    private int id;
    private String nombreMenu;
    private String idPantalla;
    private int status;
    private int orden;
    private int idTipoMenu;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombreMenu() {
        return nombreMenu;
    }

    public void setNombreMenu(String nombreMenu) {
        this.nombreMenu = nombreMenu;
    }

    public String getIdPantalla() {
        return idPantalla;
    }

    public void setIdPantalla(String idPantalla) {
        this.idPantalla = idPantalla;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getOrden() {
        return orden;
    }

    public void setOrden(int orden) {
        this.orden = orden;
    }

    public int getIdTipoMenu() {
        return idTipoMenu;
    }

    public void setIdTipoMenu(int idTipoMenu) {
        this.idTipoMenu = idTipoMenu;
    }
}

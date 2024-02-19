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
public class SubMenuDto {
    private String idPantalla;
    private String nombreSubMenu;
    private int idMenuPadre;
    private int orden;

    public String getIdPantalla() {
        return idPantalla;
    }

    public void setIdPantalla(String idPantalla) {
        this.idPantalla = idPantalla;
    }

    public String getNombreSubMenu() {
        return nombreSubMenu;
    }

    public void setNombreSubMenu(String nombreSubMenu) {
        this.nombreSubMenu = nombreSubMenu;
    }

    public int getIdMenuPadre() {
        return idMenuPadre;
    }

    public void setIdMenuPadre(int idMenuPadre) {
        this.idMenuPadre = idMenuPadre;
    }

    public int getOrden() {
        return orden;
    }

    public void setOrden(int orden) {
        this.orden = orden;
    }
    
    
}

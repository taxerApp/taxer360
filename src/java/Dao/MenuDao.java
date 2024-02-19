/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Conexion.Conexion;
import Dto.MenuDto;
import Dto.SubMenuDto;
import Dto.Usuario;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author David
 */
public class MenuDao extends Conexion{
    public MenuDao(){
     
    }
    
    public List<MenuDto> geMenu(int idTipoUsuario) {
       List<MenuDto> lstMenu = new ArrayList<MenuDto>();
        Connection Cn = getConexion();
        CallableStatement ps = null;
        ResultSet rs = null;
        try {
            String squl = "{call getMenuRol(?)}";
            ps = Cn.prepareCall(squl);
            ps.setInt(1, idTipoUsuario);
       
        
            try {
                ps.execute();
                rs = ps.getResultSet();

                while (rs.next()) {
             
                    MenuDto objMenu = new MenuDto();
             
               objMenu.setId(rs.getInt("id"));
               objMenu.setNombreMenu(rs.getString("nombreMenu"));
               objMenu.setIdPantalla(rs.getString("idPantalla"));
               objMenu.setStatus(rs.getInt("status"));
               objMenu.setOrden(rs.getInt("orden"));
               objMenu.setIdTipoMenu(rs.getInt("idTipoMenu"));
                    lstMenu.add(objMenu);

                  

                }
            } catch (Exception e) {
                e.printStackTrace();
            }

        } catch (SQLException e) {

        } finally {
            try {
                Cn.close();
                if (ps != null) {
                    ps.close();
                }

                if (rs != null) {
                    rs.close();
                }

            } catch (SQLException ex) {
                Logger.getLogger(ControlAccesoDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return lstMenu;

    }
   
     public SubMenuDto getSubMenu(int idMenuPadre) {
        SubMenuDto objSubMenu = new SubMenuDto();
        Connection Cn = getConexion();
        CallableStatement ps = null;
        ResultSet rs = null;
        try {
            String squl = "{call getSubMenuRol(?)}";
            ps = Cn.prepareCall(squl);
            ps.setInt(1, idMenuPadre);
           
        
            try {
                ps.execute();
                rs = ps.getResultSet();

                while (rs.next()) {
             objSubMenu.setIdPantalla(rs.getString("idPantalla"));
             objSubMenu.setNombreSubMenu(rs.getString("nombreSubMenu"));
             objSubMenu.setIdMenuPadre(rs.getInt("idMenuPadre"));
             objSubMenu.setOrden(rs.getInt("orden"));
                   
             
               

                  

                }
            } catch (Exception e) {
                e.printStackTrace();
            }

        } catch (SQLException e) {

        } finally {
            try {
                Cn.close();
                if (ps != null) {
                    ps.close();
                }

                if (rs != null) {
                    rs.close();
                }

            } catch (SQLException ex) {
                Logger.getLogger(ControlAccesoDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return objSubMenu;

    }
}

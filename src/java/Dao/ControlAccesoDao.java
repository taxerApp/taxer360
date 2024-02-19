/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Conexion.Conexion;
import Dto.Usuario;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author David
 */
public class ControlAccesoDao extends Conexion {

    public ControlAccesoDao() {

    }

  

       /*Desde aqui empiezan los querys*/
    
    public Usuario login(String usuario,String pw) {
        Usuario objUsuario = new Usuario();
        Connection Cn = getConexion();
        CallableStatement ps = null;
        ResultSet rs = null;
        try {
            String squl = "{call login(?,?)}";
            ps = Cn.prepareCall(squl);
            ps.setString(1, usuario);
            ps.setString(2, pw);
        
            try {
                ps.execute();
                rs = ps.getResultSet();

                while (rs.next()) {
             
                   
                objUsuario.setId(rs.getInt("id"));
                objUsuario.setNombreDeUsuario(rs.getString("NombreDeUsuario"));
               objUsuario.setTipoUsuario(rs.getString("tipoUsuario"));

                  

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
        return objUsuario;

    }
   
}

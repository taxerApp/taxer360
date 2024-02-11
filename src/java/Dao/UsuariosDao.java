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
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author David
 */
public class UsuariosDao extends Conexion {
    
    public UsuariosDao(){
        
    }
      public List<Usuario> getUsuarios(int rol, int status) {
        List<Usuario> lstUsuario = new ArrayList<Usuario>();
        Connection Cn = getConexion();
        CallableStatement ps = null;
        ResultSet rs = null;
        System.out.println("rol "+rol);
        System.out.println("status "+status);
        try {
            String squl = "{call consultaUsuarios(?,?)}";
            ps = Cn.prepareCall(squl);
            ps.setInt(1, rol);
            ps.setInt(2, status);
            try {
                ps.execute();
                rs = ps.getResultSet();

                while (rs.next()) {
                   System.out.println("usuario *** "+rs.getString("nombreCompleto"));
                    Usuario obj = new Usuario();
                    obj.setId(rs.getInt("id"));
                    
                    lstUsuario.add(obj);

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
                Logger.getLogger(UsuariosDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return lstUsuario;

    }
      
    
}

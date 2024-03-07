/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Conexion.Conexion;
import Dto.FiguraPuestoDto;
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
public class PonderacionDao  extends Conexion {

    public PonderacionDao() {
    }
    
    
    public List<FiguraPuestoDto> getFiguraPuesto() {
        List<FiguraPuestoDto> lstFiguraPuesto = new ArrayList<FiguraPuestoDto>();
        FiguraPuestoDto objUsuario = new FiguraPuestoDto();
        Connection Cn = getConexion();
        CallableStatement ps = null;
        ResultSet rs = null;
        try {
            String squl = "select * from catFiguraPuesto";
            ps = Cn.prepareCall(squl);
          
            
            try {
                ps.execute();
                rs = ps.getResultSet();
                
                while (rs.next()) {
                    FiguraPuestoDto objFigura = new FiguraPuestoDto();
                    objFigura.setId(rs.getInt("id"));
                    objFigura.setFigura(rs.getString("figura"));
                   
                    lstFiguraPuesto.add(objFigura);
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
                Logger.getLogger(PonderacionDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return lstFiguraPuesto;
        
    }
    
    public String registraPonderacion(int idEmpresa,String figuraPuesto, double ponderacion) {
        Connection Cn = getConexion();
        CallableStatement ps = null;
        ResultSet rs = null;
        String respuesta = "";
        try {
            String squl = "select registraPonderacion(?,?,?) as resp";
            ps = Cn.prepareCall(squl);
            ps.setInt(1, idEmpresa);
            ps.setString(2, figuraPuesto);
            ps.setDouble(3, ponderacion);
           

            try {
                ps.execute();
                rs = ps.getResultSet();

                while (rs.next()) {
                    respuesta=rs.getString("resp");
                 
                   

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
        return respuesta;

    }
}

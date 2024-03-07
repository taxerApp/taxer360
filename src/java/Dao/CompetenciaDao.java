/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Conexion.Conexion;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author David
 */
public class CompetenciaDao extends Conexion{

    public CompetenciaDao() {
    }
    public String registraCompetencia(int idEmpresa, String competencia) {
        Connection Cn = getConexion();
        CallableStatement ps = null;
        ResultSet rs = null;
        String respuesta = "";
        try {
            String squl = "select registraCompetencia(?,?) as resp";
            ps = Cn.prepareCall(squl);
            ps.setInt(1, idEmpresa);
            ps.setString(2, competencia);
           

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

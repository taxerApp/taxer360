/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Conexion.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author David
 */
public class EvaluacionDao extends Conexion{

    public EvaluacionDao() {
    }
     public boolean registraEvaluacion(int idEmpresa, String nombrePeriodo, String fInicio, String fFin) {
        boolean registro = false;
        Connection Cn = getConexion();
        PreparedStatement ps = null;
        try {

            ps = Cn.prepareStatement(" insert into evaluacion (idEmpresa,nombrePeriodo,fInicio,fFin)values (?,?,?,?)");
            ps.setInt(1, idEmpresa);
            ps.setString(2, nombrePeriodo);
            ps.setString(3, fInicio);
            ps.setString(4, fFin);
          
            try {
                ps.execute();
                registro = true;
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

            } catch (SQLException ex) {
                Logger.getLogger(EvaluacionDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return registro;
    }
}

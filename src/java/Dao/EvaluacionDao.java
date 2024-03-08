/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Conexion.Conexion;
import Dto.EmpresaDto;
import Dto.EvaluacionDto;
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
public class EvaluacionDao extends Conexion {

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

    public List<EvaluacionDto> consultaEvaluaciones(int idEmpresa) {
        List<EvaluacionDto> lstEvaluacion = new ArrayList<EvaluacionDto>();
        Connection Cn = getConexion();
        CallableStatement ps = null;
        ResultSet rs = null;
        try {
            String squl = "{call getEvaluaciones(?)}";
            ps = Cn.prepareCall(squl);
            ps.setInt(1, idEmpresa);

            try {
                ps.execute();
                rs = ps.getResultSet();

                while (rs.next()) {

                    EvaluacionDto objEvaluacion = new EvaluacionDto();

                    objEvaluacion.setId(rs.getInt("id"));
                    objEvaluacion.setPeriodo(rs.getString("periodo"));
                    objEvaluacion.setfFin(rs.getString("fFin").substring(0,10));
                    objEvaluacion.setfInicio(rs.getString("fFin").substring(0,10));

                    lstEvaluacion.add(objEvaluacion);

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
        return lstEvaluacion;

    }
}

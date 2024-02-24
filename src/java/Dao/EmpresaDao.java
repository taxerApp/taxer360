/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Conexion.Conexion;
import Dto.EmpresaDto;
import Dto.MenuDto;
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
public class EmpresaDao extends Conexion {

    public EmpresaDao() {
    }

    public boolean registraEmpresa(String empresa, String rfc, String razonSocial) {
        boolean registro = false;
        Connection Cn = getConexion();
        PreparedStatement ps = null;
        try {

            ps = Cn.prepareStatement(" insert into empresa  (empresa,isCliente,status,rfc,razonSocial) values( ?,?,?,?,?)");
            ps.setString(1, empresa);
            ps.setInt(2, 1);
            ps.setInt(3, 1);
            ps.setString(4, rfc);
            ps.setString(5, razonSocial);
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
                Logger.getLogger(EmpresaDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return registro;
    }

    public List<EmpresaDto> consultaEmpresa(int idEmpresa, int bnd) {
        List<EmpresaDto> lstEmpresa = new ArrayList<EmpresaDto>();
        Connection Cn = getConexion();
        CallableStatement ps = null;
        ResultSet rs = null;
        try {
            String squl = "{call consultaEmpresa(?,?)}";
            ps = Cn.prepareCall(squl);
            ps.setInt(1, idEmpresa);
            ps.setInt(2, bnd);

            try {
                ps.execute();
                rs = ps.getResultSet();

                while (rs.next()) {

                    EmpresaDto objEmpresa = new EmpresaDto();
                    objEmpresa.setId(rs.getInt("id"));
                    objEmpresa.setEmpresa(rs.getString("empresa"));
                    objEmpresa.setIsCliebnte(rs.getInt("isCliente"));
                    objEmpresa.setStatus(rs.getInt("status"));
                    objEmpresa.setRfc(rs.getString("rfc"));
                    objEmpresa.setRazonSocial(rs.getString("razonSocial"));
                    lstEmpresa.add(objEmpresa);

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
        return lstEmpresa;

    }

}

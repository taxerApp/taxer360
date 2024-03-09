/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Conexion.Conexion;
import Dto.EmpresaDto;
import Dto.MenuDto;
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
public class EmpresaDao extends Conexion {

    public EmpresaDao() {
    }

    public String registraEmpresa(String empresa, String rfc, String razonSocial, String correo, String pwNPerfil) {
        Connection Cn = getConexion();
        CallableStatement ps = null;
        ResultSet rs = null;
        String respuesta = "";
        try {
            String squl = "select registraEmpresa(?,?,?,?,?) as resp";
            ps = Cn.prepareCall(squl);
            ps.setString(1, empresa);
            ps.setString(2, rfc);
            ps.setString(3, razonSocial);
            ps.setString(4, correo);
            ps.setString(5, pwNPerfil);

            try {
                ps.execute();
                rs = ps.getResultSet();

                while (rs.next()) {
                    respuesta = rs.getString("resp");

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

//    public boolean registraEmpresa(String empresa, String rfc, String razonSocial, String correo) {
//        boolean registro = false;
//        Connection Cn = getConexion();
//        PreparedStatement ps = null;
//        try {
//
//            ps = Cn.prepareStatement(" insert into empresa  (empresa,isCliente,status,rfc,razonSocial,correo) values( ?,?,?,?,?,?)");
//            ps.setString(1, empresa);
//            ps.setInt(2, 1);
//            ps.setInt(3, 1);
//            ps.setString(4, rfc);
//            ps.setString(5, razonSocial);
//            ps.setString(6, correo);
//            try {
//                ps.execute();
//                registro = true;
//            } catch (Exception e) {
//                e.printStackTrace();
//            }
//
//        } catch (SQLException e) {
//
//        } finally {
//            try {
//                Cn.close();
//                if (ps != null) {
//                    ps.close();
//                }
//
//            } catch (SQLException ex) {
//                Logger.getLogger(EmpresaDao.class.getName()).log(Level.SEVERE, null, ex);
//            }
//        }
//        return registro;
//    }
    public String actualizaEmpresa(String empresa, String rfc, String razonSocial,
            int status, String correo, int idEmpresa, String contrasenia) {
        Connection Cn = getConexion();
        CallableStatement ps = null;
        ResultSet rs = null;
        String respuesta = "";
        try {
            String squl = "select editaEmpresa(?,?,?,?,?,?,?) as resp";
            ps = Cn.prepareCall(squl);
            ps.setString(1, empresa);
            ps.setString(2, rfc);
            ps.setString(3, razonSocial);
            ps.setString(4, correo);
            ps.setString(5, contrasenia);
            ps.setInt(6, status);
            ps.setInt(7, idEmpresa);

            try {
                ps.execute();
                rs = ps.getResultSet();

                while (rs.next()) {
                    respuesta = rs.getString("resp");

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
                Logger.getLogger(EmpresaDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return respuesta;

    }

//    public boolean actualizaEmpresa(String empresa, String rfc, String razonSocial,
//            int status, String correo, int id, String contrasenia) {
//        boolean registro = false;
//        Connection Cn = getConexion();
//        PreparedStatement ps = null;
//        try {
//
//            ps = Cn.prepareStatement(" update empresa set empresa = ?,  rfc = ?, razonSocial = ?, status = ?, correo=?, contrasenia=? where id = ?");
//            ps.setString(1, empresa);
//            ps.setString(2, rfc);
//            ps.setString(3, razonSocial);
//            ps.setInt(4, status);
//            ps.setString(5, correo);
//            ps.setString(6, contrasenia);
//            ps.setInt(7, id);
//            try {
//                ps.execute();
//                registro = true;
//            } catch (Exception e) {
//                e.printStackTrace();
//            }
//
//        } catch (SQLException e) {
//
//        } finally {
//            try {
//                Cn.close();
//                if (ps != null) {
//                    ps.close();
//                }
//
//            } catch (SQLException ex) {
//                Logger.getLogger(EmpresaDao.class.getName()).log(Level.SEVERE, null, ex);
//            }
//        }
//        return registro;
//    }
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
                    objEmpresa.setCorreo(rs.getString("correo"));
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

    public Usuario getPw(int idEmpresa) {

        Usuario objUsuario = new Usuario();
        Connection Cn = getConexion();
        CallableStatement ps = null;
        ResultSet rs = null;
        try {
            String squl = "select correo,pw from usuario where idEmpresa=?";
            ps = Cn.prepareCall(squl);
            ps.setInt(1, idEmpresa);

            try {
                ps.execute();
                rs = ps.getResultSet();

                while (rs.next()) {
                    objUsuario.setCorreo(rs.getString("correo"));
                    objUsuario.setPw(rs.getString("pw"));

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

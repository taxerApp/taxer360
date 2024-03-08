/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Conexion.Conexion;
import Dto.CompetenciaDto;
import Dto.CuestionarioDto;
import Dto.EvaluacionDto;
import Dto.NivelCompetenciaDto;
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
public class CuestionarioDao extends Conexion {
    
    public CuestionarioDao() {
    }
    
    public List<NivelCompetenciaDto> consultaNivelCompetencia() {
        List<NivelCompetenciaDto> lstNivelCompetencia = new ArrayList<NivelCompetenciaDto>();
        Connection Cn = getConexion();
        CallableStatement ps = null;
        ResultSet rs = null;
        try {
            String squl = "select id,nivel from catNivelCompetencia";
            ps = Cn.prepareCall(squl);
            
            try {
                ps.execute();
                rs = ps.getResultSet();
                
                while (rs.next()) {
                    
                    NivelCompetenciaDto objNivelCompetenciaDto = new NivelCompetenciaDto();
                    objNivelCompetenciaDto.setId(rs.getInt("id"));
                    objNivelCompetenciaDto.setNivel(rs.getString("nivel"));
                    lstNivelCompetencia.add(objNivelCompetenciaDto);
                    
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
        return lstNivelCompetencia;
        
    }    
    
    public List<CompetenciaDto> consultaCompetencias(int idEvaluacion) {
        List<CompetenciaDto> lstCompetencia = new ArrayList<CompetenciaDto>();
        Connection Cn = getConexion();
        CallableStatement ps = null;
        ResultSet rs = null;
        try {
            String squl = "select id,competencia from competencia where idEvaluacion=?";
            ps = Cn.prepareCall(squl);
            ps.setInt(1, idEvaluacion);
            try {
                ps.execute();
                rs = ps.getResultSet();
                
                while (rs.next()) {
                    
                    CompetenciaDto objCompetencia = new CompetenciaDto();
                    objCompetencia.setId(rs.getInt("id"));
                    objCompetencia.setCompetencia(rs.getString("competencia"));
                    objCompetencia.setIdEvaluacion(idEvaluacion);
                    lstCompetencia.add(objCompetencia);
                    
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
        return lstCompetencia;
        
    }    
    
    public List<CuestionarioDto> consultaCuestionariosCargados(int idCompetencia, int idNivelComoetencia) {
        List<CuestionarioDto> lstCuestionario = new ArrayList<CuestionarioDto>();
        Connection Cn = getConexion();
        CallableStatement ps = null;
        ResultSet rs = null;
        try {
            String squl = " select id,pregunta, idCompetencia,idNivelCompetencia from cuestionarioPreguntas "
                    + " where idCompetencia =? and idNivelCompetencia=?";
            ps = Cn.prepareCall(squl);
            ps.setInt(1, idCompetencia);
            ps.setInt(2, idNivelComoetencia);
            try {
                ps.execute();
                rs = ps.getResultSet();
                
                while (rs.next()) {
                    
                    CuestionarioDto objCuestionario = new CuestionarioDto();
                    objCuestionario.setId(rs.getInt("id"));
                    objCuestionario.setIdCompetencia(rs.getInt("idCompetencia"));
                    objCuestionario.setIdNivelCompetencia(rs.getInt("idNivelCompetencia"));
                    objCuestionario.setPregunta(rs.getString("pregunta"));
                    lstCuestionario.add(objCuestionario);
                    
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
        return lstCuestionario;
        
    }    
}

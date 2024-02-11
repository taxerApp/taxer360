/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conexion;
import static Utils.Variables.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author David
 */
public class Conexion {
Connection conexion = null;
    Statement comando = null;
    ResultSet registro;

    public Conexion() {
      
    }
 
  

	
public Connection getConexion(){
Connection cn = null;
       try {
         
             Class.forName("com.mysql.cj.jdbc.Driver");
          
            //Se inicia la conexión
            conexion = DriverManager.getConnection(servidor, usuario, password);
 
        } catch (SQLException ex) {
            //JOptionPane.showMessageDialog(null, ex, "Error en la conexión a la base de datos: " + ex.getMessage(), JOptionPane.ERROR_MESSAGE);
              System.out.println("Error en la conexión a la base de datos: " + ex.getMessage());

            conexion = null;
        } catch (Exception ex) {
                System.out.println("Error en la conexión a la base de datos: " + ex.getMessage());
            conexion = null;
        } finally {
            //JOptionPane.showMessageDialog(null, "Conexión Exitosa");
            return conexion;
        }
}
}

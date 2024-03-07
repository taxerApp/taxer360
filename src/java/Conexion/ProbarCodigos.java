/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conexion;

import Utils.CargarExcelColaboradores;
import Utils.GeneraCodigoVerificacion;
import Utils.SendMail;
import java.io.File;

/**
 *
 * @author David
 */
public class ProbarCodigos {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
//        GeneraCodigoVerificacion g = new GeneraCodigoVerificacion();
//        String contrasenia=g.generaCodigo();
//        System.out.println(""+g.generaCodigo());
//        SendMail mail = new SendMail();
//        String to="david_jimenez_ruiz@outlook.com";
//        String subj="Credenciales de acceso";
//        
//        String msj="Tu correo ha sido registrado en la plataforma Be-Learning Evaluación 360."
//                + "\n\n\n"
//                + "Tus credenciales de acceso son:\n\n\n"
//                + "Usuario: "+to+"\n\n"
//                +"Contraseña: "+contrasenia;
//        
//        mail.enviaCorreo(msj, to, subj);

 CargarExcelColaboradores objCargaExcel = new CargarExcelColaboradores();
        objCargaExcel.CargarExcelColaboradores("C:\\Users\\elektra\\Downloads\\Layout (Grupos de evaluación)_Actualizado.xlsx");        
      /*imprimo valores solo para ver que la informacion este bien*/
        System.out.println("Columnas de ponderacion *** ");
            System.out.println(" *** Columna " + objCargaExcel.getArrPonderacion()[0].getEncabezado());
            System.out.println(" *** Columna " + objCargaExcel.getArrPonderacion()[1].getEncabezado());
            System.out.println(" *** Columna " + objCargaExcel.getArrPonderacion()[2].getEncabezado());
            System.out.println(" *** Columna " + objCargaExcel.getArrPonderacion()[3].getEncabezado());
    
            
            System.out.println("Columnas de ponderacion desde lista *** ");
            System.out.println(" *** Columna " + objCargaExcel.getLstPonderacion().get(0).getEncabezado());
            System.out.println(" *** Columna " + objCargaExcel.getLstPonderacion().get(1).getEncabezado());
            System.out.println(" *** Columna " + objCargaExcel.getLstPonderacion().get(2).getEncabezado());
            System.out.println(" *** Columna " + objCargaExcel.getLstPonderacion().get(3).getEncabezado());
    
    }
    
}

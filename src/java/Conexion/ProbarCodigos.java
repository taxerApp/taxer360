/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conexion;

import Utils.GeneraCodigoVerificacion;
import Utils.SendMail;

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
        GeneraCodigoVerificacion g = new GeneraCodigoVerificacion();
        String contrasenia=g.generaCodigo();
        System.out.println(""+g.generaCodigo());
        SendMail mail = new SendMail();
        String to="david_jimenez_ruiz@outlook.com";
        String subj="Credenciales de acceso";
        
        String msj="Tu correo ha sido registrado en la plataforma Be-Learning Evaluación 360."
                + "\n\n\n"
                + "Tus credenciales de acceso son:\n\n\n"
                + "Usuario: "+to+"\n\n"
                +"Contraseña: "+contrasenia;
        
        mail.enviaCorreo(msj, to, subj);
    }
    
}

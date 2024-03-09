/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utils;

/**
 *
 * @author David
 */
public class EnviaCorreos {

    public EnviaCorreos() {
    }

    public  void enviaCorreoNPerfilAdminEmpresa(String correo, String contrasenia) {
        SendMail mail = new SendMail();
        String subj = "Credenciales de acceso";
        String msj = MensajesCorreos.msjNuevoUsuAdminEmpresa.replace("?1", correo).replace("?2", contrasenia);

        mail.enviaCorreo(msj, correo, subj);
    }
    
      public  void enviaCorreoEPerfilAdminEmpresa(String correo, String contrasenia) {
        SendMail mail = new SendMail();
        String subj = "Credenciales de acceso";
        String msj = MensajesCorreos.msjEUsuAdminEmpresa.replace("?1", correo).replace("?2", contrasenia);

        mail.enviaCorreo(msj, correo, subj);
    }
      
       public  void reenviaPWEmpresa(String correo, String contrasenia) {
        SendMail mail = new SendMail();
        String subj = "Credenciales de acceso";
        String msj = MensajesCorreos.msjReenviaPw.replace("?1", correo).replace("?2", contrasenia);

        mail.enviaCorreo(msj, correo, subj);
    }
}

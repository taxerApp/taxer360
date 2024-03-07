/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utils;


import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import org.apache.commons.codec.binary.Base64;
//import org.apache.tomcat.util.codec.binary.Base64;


/**
 *
 * @author David
 */
public class CodificaDecodificaBase64 {

    private static void temporal() throws IOException {
           // Mostramos la ruta definida en el sistema para los archivos temporales

        String dir = System.getProperty("java.io.tmpdir");

        //System.out.println("Java tmp dir: " + dir);

 

        // Creamos un arhivo vacio indicando un texto para el inicio y final 

        // (prefijo y sufijo) del archivo. Muy util para saber cuales son nuestro

        // archivos temporales

        File f = File.createTempFile("archivoTemporal_",".lwp");

       // System.out.println("Path: " + f.getAbsolutePath() );

 

        // guardamos texto en el archivo temporal

//        BufferedWriter bw = new BufferedWriter(new FileWriter(f));
//
//        bw.write("La Web del Programador\n");
//
//        bw.close();

 

        // leemos cada linea del archivo temporal

        String str;

        BufferedReader br = new BufferedReader(new FileReader(f));

        while((str = br.readLine()) != null) {

            System.out.println("Texto guardado en el archivo temporal: "+str);

        }

        br.close();

 

        // Eliminamos el archivo temporal cuando ya no lo necesitemos

        f.delete();

 
    } 

//    



    public static String codificarBase64(byte[] file) throws Exception {
        // este es el metodo que se utiliza para codificar los archivos
        return new String(Base64.encodeBase64(file), "UTF-8");
    }

    public static void decodificarBase64(String base64, String url) {

        System.out.println("url "+url);
        File file = new File(url);
        try (
                FileOutputStream fos = new FileOutputStream(file);) {
            byte[] decoder = Base64.decodeBase64(base64);
            fos.write(decoder);

temporal();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}

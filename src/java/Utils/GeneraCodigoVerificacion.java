/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utils;

import java.nio.charset.Charset;
import java.util.Random;

/**
 *
 * @author David
 */
public class GeneraCodigoVerificacion {

    public GeneraCodigoVerificacion() {

    }

    public String generaCodigo() {
        int i = 8;
        byte[] bytearray;
        String mystring;
        StringBuffer thebuffer;

        bytearray = new byte[256];
        new Random().nextBytes(bytearray);

        mystring = new String(bytearray, Charset.forName("UTF-8"));

        thebuffer = new StringBuffer();

        for (int m = 0; m < mystring.length(); m++) {

            char n = mystring.charAt(m);

            if (((n >= 'A' && n <= 'Z')
                    || (n >= '0' && n <= '9'))
                    && (i > 0)) {

                thebuffer.append(n);
                i--;
            }
        }

        return thebuffer.toString();
    }
}

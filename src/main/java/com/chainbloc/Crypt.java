/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.chainbloc;
import java.io.UnsupportedEncodingException;
import javax.xml.bind.DatatypeConverter;
/**
 *
 * @author re
 */
public class Crypt {
    public static void main(String[] args) throws Exception {
    byte[] message = "hello world".getBytes("UTF-8");
String encoded = DatatypeConverter.printBase64Binary(message);
byte[] decoded = DatatypeConverter.parseBase64Binary(encoded);

System.out.println(encoded);
System.out.println(new String(decoded, "UTF-8"));
    }
    
    public static String encodeMessage(String txt) throws UnsupportedEncodingException{
        byte[] message = txt.getBytes("UTF-8");
        String encoded = DatatypeConverter.printBase64Binary(message);        
        return encoded;
    }
    public static String decodeMessage(String txt) throws UnsupportedEncodingException{
        byte[] decoded = DatatypeConverter.parseBase64Binary(txt);        
        return new String(decoded, "UTF-8");
    }
    public static String xorMessage(String message, String key) {
        try {
            if (message == null || key == null) return null;

            char[] keys = key.toCharArray();
            char[] mesg = message.toCharArray();

            int ml = mesg.length;
            int kl = keys.length;
            char[] newmsg = new char[ml];

            for (int i = 0; i < ml; i++) {
                newmsg[i] = (char)(mesg[i] ^ keys[i % kl]);
            }//for i

            return new String(newmsg);
        } catch (Exception e) {
            return null;
        }
    }//xorMessage
}

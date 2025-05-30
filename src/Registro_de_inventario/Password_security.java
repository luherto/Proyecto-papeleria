/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Registro_de_inventario;

import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import java.util.Base64;

/**
 *
 * @author valen
 */
public class Password_security {
    public static String GenerateSecurePassword(String password, String salt) throws NoSuchAlgorithmException, InvalidKeySpecException{
        int iterations = 1000;
        int keyLength =256;
        
        KeySpec spec = new PBEKeySpec(password.toCharArray(), salt.getBytes(), iterations, keyLength);
        SecretKeyFactory factory = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA256");
        byte[] hash = factory.generateSecret(spec).getEncoded();
        return Base64.getEncoder().encodeToString(hash);
    }
    
    public static String GetNewSalt(){
        SecureRandom random = new SecureRandom();
        byte[] salt = new byte[16];
        random.nextBytes(salt);
        return Base64.getEncoder().encodeToString(salt);
    }
    
    public static Boolean VerifyPassword(String inputPassword, String storedPassword, String salt) throws Exception{
        String hashedInput = GenerateSecurePassword(inputPassword, salt);
        return hashedInput.equals (storedPassword);
    }
}

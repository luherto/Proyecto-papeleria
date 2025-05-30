/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Registro_de_inventario;
import com.mysql.cj.protocol.Resultset;
import java.sql.Connection;
import javax.swing.JOptionPane;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author valen
 */
public class User_service {
    
    //La funcion registro sera agregada despues
    public static boolean User_Register(Connection conn, String username, String password){
        try {
            String salt = Password_security.GetNewSalt();
            String hashed_password = Password_security.GenerateSecurePassword(password, salt);
            
            String sql = "INSERT INTO Usuarios (user_name, password_hash, salt) VALUES (?,?,?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, username);
            statement.setString(2, hashed_password);
            statement.setString(3, salt);
            
            return statement.executeUpdate()>0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
    
    public static Boolean User_Authentication(Connection conn, String username, String password){
        try {
            String sql ="SELECT password_hash, salt FROM Usuarios WHERE user_name = ? ";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, username);
            
            ResultSet rs = statement.executeQuery();
            if(rs.next()){
                String storedHash = rs.getString("password_hash");
                String salt  = rs.getString("salt");
                
                return Password_security.VerifyPassword(password, storedHash, salt);
            }
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}

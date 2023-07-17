/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.emedinaa.quality;

import com.emedinaa.quality.model.User;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author eduardo.alfaro
 */
public class SqliteConnector {
    
    
      private Connection connect() {  
        // SQLite connection string  
        String url = "jdbc:sqlite:/Users/eduardo.alfaro/Documents/Edu/URP/Calidad/JSP/Restaurante.db";
        Connection conn = null;  
        try {  
            conn = DriverManager.getConnection(url);  
        } catch (SQLException e) {  
            System.out.println("Connection error "+e.getMessage());  
        }  
        return conn;  
    }  
   
  
    public String  selectAll() {  
        String sql = "SELECT * FROM Login";  
          
        try {  
            Connection conn = this.connect();  
            Statement stmt  = conn.createStatement();  
            ResultSet rs    = stmt.executeQuery(sql);  
              
            // loop through the result set  
            while (rs.next()) {  
                System.out.println(rs.getInt("id") +  "\t" +   
                                   rs.getString("usuario") + "\t" +  
                                   rs.getDouble("pass"));  
            }  
            return "ok";
        } catch (SQLException e) {  
            System.out.println("selectAll error "+e.getMessage());  
            return "error "+e.getMessage();
        }  
    }  
    
      
    public String login(String username, String password) {  
        String sql = "select * from Login WHERE usuario=? and pass=?"; 
          
        try {  
            Connection conn = this.connect();  
            PreparedStatement stmt  = conn.prepareStatement(sql); 
            System.out.println("username " +username);
            System.out.println("password " +password);
            
            stmt.setString(1, username);
            stmt.setString(2, password);
            ResultSet rs    = stmt.executeQuery();  
            
            List<User> users = new ArrayList<>();
            while (rs.next()) { 
                int id = rs.getInt("id");
                String user = rs.getString("usuario");
                
                System.out.println(id +  "\t" +   
                                   user + "\t" +  
                                   rs.getString("pass")); 
                
                 users.add(new User(id,username));
            }
            
            if(!users.isEmpty()) {
                 return "Credencial correcta";
            } else {
                return "Credencial incorrecta";
            }
        } catch (SQLException e) {  
            System.out.println("selectAll error "+e.getMessage());  
            return "Ocurrió un error "+e.getMessage();
        }  
    }  
}

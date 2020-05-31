/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package configuraciones;
import java.sql.*;
/**
 *
 * @author river
 */
public class Conexion {
    Connection con;
    String url="jdbc:mysql://localhost:3306/pokitienda";
    String user="root";
    String pass="n0m3l0";
    
    public Connection getConnection(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url,user,pass);
        }catch(Exception e){
            
        }
        return con;
    }
}

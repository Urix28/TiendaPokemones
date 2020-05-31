/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author river
 */
/*import configuraciones.Conexion;
import java.sql.*;
public class LoginDAO {
     Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;
    public Login validarUsuario(String user, String pass) {
        Login lo = new Login();
        String sql = "select * from empleado where Nombre=? and Contra=?";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, Contra);
            rs = ps.executeQuery();
            while (rs.next()) {
                lo.setUser(rs.getString("Nombre"));
                lo.setPass(rs.getString("Contra"));
                
            }
        } catch (Exception e) {
        }
        return lo;
    }
}*/
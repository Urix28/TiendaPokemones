/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;
import configuraciones.Conexion;
import java.sql.*;

/**
 *
 * @author river
 */
public class Usuario {
    private int usuario_Codigo;
        private String usuario_Curp;
        private String usuario_Fecha;
        private Integer usuario_Telefono;
	private String usuario_Nombre;
	private String usuario_ApellidoPaterno;
        private String usuario_ApellidoMaterno;
	private String usuario_User;
	private String usuario_Clave;
	private int usuario_Privilegio;
        private int usuario_CodigoPostal;
    public Usuario() {
    }
   public Usuario verificarUsuario(String user, String clave){
        Usuario u=null;
        Conexion cn = new Conexion();
        PreparedStatement pr=null;
        ResultSet rs=null;
        try{
           
            String sql="SELECT * FROM usuario WHERE Nombre=? AND Contra=?";
            pr=cn.getConnection().prepareStatement(sql);
            pr.setString(1, user);
            pr.setString(2, clave);
            rs=pr.executeQuery();
            
            while(rs.next()){
                u=new Usuario();
                u.setUsuario_codigo(rs.getInt("IdUsuario"));
                u.setUsuario_Curp("Curp");
                u.setUsuario_ApellidoPaterno(rs.getString("Appat"));
                u.setUsuario_ApellidoMaterno(rs.getString("Apmat"));
                u.setUsuario_nombre(rs.getString("Nombre"));
                u.setUsuario_Fecha(rs.getString("FechaNacimiento"));
                u.setUsuario_CodigoPostal(rs.getInt("Cp"));
                u.setUsuario_clave(rs.getString("Contra"));
                u.setUsuario_Telefono(rs.getInt("Telef"));
                u.setUsuario_privilegio(rs.getInt("privilegio"));
                
                
                break;
            }
        }catch(SQLException ex){
            ex.printStackTrace();
            u=null;
        }finally{
            try{
                rs.close();
                pr.close();
                rs.close();
            }catch(SQLException ex){

            }
        }
        return u;
    }

    public int getUsuario_CodigoPostal() {
        return usuario_CodigoPostal;
    }

    public void setUsuario_CodigoPostal(int usuario_CodigoPostal) {
        this.usuario_CodigoPostal = usuario_CodigoPostal;
    }

    public String getUsuario_ApellidoPaterno() {
        return usuario_ApellidoPaterno;
    }

    public void setUsuario_ApellidoPaterno(String usuario_ApellidoPaterno) {
        this.usuario_ApellidoPaterno = usuario_ApellidoPaterno;
    }

    public String getUsuario_ApellidoMaterno() {
        return usuario_ApellidoMaterno;
    }

    public void setUsuario_ApellidoMaterno(String usuario_ApellidoMaterno) {
        this.usuario_ApellidoMaterno = usuario_ApellidoMaterno;
    }
   

    public int getUsuario_Codigo() {
        return usuario_Codigo;
    }

    public void setUsuario_Codigo(int usuario_Codigo) {
        this.usuario_Codigo = usuario_Codigo;
    }

    public String getUsuario_Curp() {
        return usuario_Curp;
    }

    public void setUsuario_Curp(String usuario_Curp) {
        this.usuario_Curp = usuario_Curp;
    }

    public String getUsuario_Fecha() {
        return usuario_Fecha;
    }

    public void setUsuario_Fecha(String usuario_Fecha) {
        this.usuario_Fecha = usuario_Fecha;
    }

    public Integer getUsuario_Telefono() {
        return usuario_Telefono;
    }

    public void setUsuario_Telefono(Integer usuario_Telefono) {
        this.usuario_Telefono = usuario_Telefono;
    }

    public String getUsuario_Nombre() {
        return usuario_Nombre;
    }

    public void setUsuario_Nombre(String usuario_Nombre) {
        this.usuario_Nombre = usuario_Nombre;
    }


    public String getUsuario_User() {
        return usuario_User;
    }

    public void setUsuario_User(String usuario_User) {
        this.usuario_User = usuario_User;
    }

    public String getUsuario_Clave() {
        return usuario_Clave;
    }

    public void setUsuario_Clave(String usuario_Clave) {
        this.usuario_Clave = usuario_Clave;
    }

    public int getUsuario_Privilegio() {
        return usuario_Privilegio;
    }

    public void setUsuario_Privilegio(int usuario_Privilegio) {
        this.usuario_Privilegio = usuario_Privilegio;
    }
       
	/** Metodos GET de la clase usuario */
	public int getUsuario_codigo(){
		 return this.usuario_Codigo;
	}
	public String getUsuario_nombre(){
		 return this.usuario_Nombre;
	}
	public String getUsuario_apellido(){
		 return this.usuario_ApellidoPaterno;
	}
	public String getUsuario_user(){
		 return this.usuario_User;
	}
	public String getUsuario_clave(){
		 return this.usuario_Clave;
	}
	public int getUsuario_privilegio(){
		 return this.usuario_Privilegio;
	}

	/** Metodos SET de la clase usuario */

	public void setUsuario_codigo(int usuario_Codigo){
		 this.usuario_Codigo=usuario_Codigo;
	}
	public void setUsuario_nombre(String usuario_Nombre){
		 this.usuario_Nombre=usuario_Nombre;
	}
	public void setUsuario_apellido(String usuario_Apellido){
		 this.usuario_ApellidoPaterno=usuario_Apellido;
	}
	public void setUsuario_user(String usuario_User){
		 this.usuario_User=usuario_User;
	}
	public void setUsuario_clave(String usuario_Clave){
		 this.usuario_Clave=usuario_Clave;
	}
	public void setUsuario_privilegio(int usuario_Privilegio){
		 this.usuario_Privilegio=usuario_Privilegio;
	}

}


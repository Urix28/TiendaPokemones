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
public class Login{
 private String IdUsuario,Curp,Appat,Apmat,Nombre,FechaNacimiento,Cp,Contra,Telef,rol;

    public Login(String IdUsuario, String Curp, String Appat, String Apmat, String Nombre, String FechaNacimiento, String Cp, String Contra, String Telef, String rol) {
        this.IdUsuario = IdUsuario;
        this.Curp = Curp;
        this.Appat = Appat;
        this.Apmat = Apmat;
        this.Nombre = Nombre;
        this.FechaNacimiento = FechaNacimiento;
        this.Cp = Cp;
        this.Contra = Contra;
        this.Telef = Telef;
        this.rol = rol;
    }

    public String getIdUsuario() {
        return IdUsuario;
    }

    public void setIdUsuario(String IdUsuario) {
        this.IdUsuario = IdUsuario;
    }

    public String getCurp() {
        return Curp;
    }

    public void setCurp(String Curp) {
        this.Curp = Curp;
    }

    public String getAppat() {
        return Appat;
    }

    public void setAppat(String Appat) {
        this.Appat = Appat;
    }

    public String getApmat() {
        return Apmat;
    }

    public void setApmat(String Apmat) {
        this.Apmat = Apmat;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getFechaNacimiento() {
        return FechaNacimiento;
    }

    public void setFechaNacimiento(String FechaNacimiento) {
        this.FechaNacimiento = FechaNacimiento;
    }

    public String getCp() {
        return Cp;
    }

    public void setCp(String Cp) {
        this.Cp = Cp;
    }

    public String getContra() {
        return Contra;
    }

    public void setContra(String Contra) {
        this.Contra = Contra;
    }

    public String getTelef() {
        return Telef;
    }

    public void setTelef(String Telef) {
        this.Telef = Telef;
    }

    public String getRol() {
        return rol;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }
 

 
}
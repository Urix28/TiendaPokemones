<%-- 
    Document   : GuardarRegistro
    Created on : 31/05/2020, 11:04:32 AM
    Author     : river
--%>

<%@page import="java.util.regex.Matcher"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Guardar Registro</title>
        <script src="sweetalert2.all.min.js"></script>
    </head>
    <%@page import="com.mysql.jdbc.exceptions.MySQLIntegrityConstraintViolationException"%>
    <%@page import="java.util.regex.Pattern"%>
    <%@ page language="java" import="java.sql.*,java.util.*,java.text.*" %>
    <%
                Connection con = null;
                String url = "jdbc:mysql://localhost:3306/";
                String user = "root";
                String password = "root";
                String db = "pokitienda";
                
                String driver = "com.mysql.jdbc.Driver";
                String acceso = "";
                try{
                    Class.forName(driver);
                    con = DriverManager.getConnection(url+db, user, password);
                    // si se dan cuenta pasamos los 3 parametros + el nombre de la bd
                    try{
                        Statement set = con.createStatement();
                        //Pattern Letras = Pattern.compile("^[a-zA-Z ]*$");
                        String nombre = request.getParameter("Nombre");
                        String Appat = request.getParameter("Appat");
                        String Apmat = request.getParameter("Apmat");
                        String Curp = request.getParameter("Curp");
                        String Fecha = request.getParameter("fecha");
                        String Direccion = request.getParameter("Direccion");
                        int Cp = Integer.parseInt(request.getParameter("Cp"));
                        int Telefono = Integer.parseInt(request.getParameter("Telefono"));
                        String Contraseña = request.getParameter("Clave");
                        
                        
                        
                        
                        
                        if(Cp==0 || Telefono==0 || nombre=="" || Appat=="" || Apmat=="" || Curp == "" || Fecha == "" || Direccion == ""){
                             out.print("<body><script>Swal.fire('Error','Algun campo esta vacio seras regresado','error')</script></body>");
                             acceso = "Registro.jsp";
                             RequestDispatcher vista=request.getRequestDispatcher(acceso);
                             vista.forward(request, response);
                           
                        }else{
                        if(String.valueOf(Cp).matches("[0-9]*") && String.valueOf(Cp).length() == 5 && String.valueOf(Telefono).matches("[0-9]*") && String.valueOf(Telefono).length() == 10){
                            if(nombre.matches("^[a-zA-Z ]*$") && Appat.matches("^[a-zA-Z ]*$") && Apmat.matches("^[a-zA-Z ]*$") && Direccion.matches("^[a-zA-Z ]*$") && Curp.matches("[A-Z][A,E,I,O,U,X][A-Z]{2}[0-9]{2}[0-1][0-9][0-3][0-9][M,H][A-Z]{2}[B,C,D,F,G,H,J,K,L,M,N,Ñ,P,Q,R,S,T,V,W,X,Y,Z]{3}[0-9,A-Z][0-9]")){
                               try{
                                String sql = "INSERT INTO usuario (Curp, Appat, Apmat, Nombre, FechaNacimiento, Cp, Contra, Telef)"
                                + "values('"+Curp+"','"+Appat+"','"+Apmat+"','"+nombre+"','"+Fecha+"','"+Cp+"','"+Contraseña+"','"+Telefono+"')";
                                
                                    

                                
                                    int val = set.executeUpdate(sql);
                                    //si todo esta "bien" tenemos que cerrar la conexion
                                    con.close(); 
                                    response.sendRedirect("Index.jsp");
                               }catch(MySQLIntegrityConstraintViolationException e){
                                    out.print("<body><script>Swal.fire('Error','Algun campo no esta llenado seras regresado','error')</script></body>");
                                    acceso = "Registro.jsp";
                                     RequestDispatcher vista=request.getRequestDispatcher(acceso);
                                    vista.forward(request, response);
                                }    
                                
                            }else{
                                out.print("<body><script>Swal.fire('Error','Los campos Nombre, Apellido Paterno, Apellido Materno y Direccion solo puden tener letras','error')</script></body>");
                                acceso = "Registro.jsp";
                             RequestDispatcher vista=request.getRequestDispatcher(acceso);
                             vista.forward(request, response);
                                
                            }
                        }else{
                            out.print("<body><script>Swal.fire('Error','El campo Codigo Postal y Telefono solo puede contener numeros seras regresado','error')</script></body>");
                            acceso = "Registro.jsp";
                             RequestDispatcher vista=request.getRequestDispatcher(acceso);
                             vista.forward(request, response);
                            
                        }
                        }
                        
                        //ahora si, esta seccion les va a servir para poder validar
                        //la entrada de los datos, y si lo tienen que hacer
                        //la validacion en js no es suficiente
                        
                        //ahora vamos a meter el insert de una forma diferente
                        
                        
                        
                    }catch(SQLException ex){
                        System.out.println("No se conecto a la tabla");
                        System.out.println(ex.getMessage());
                        System.out.println(ex.getStackTrace());
                        
                        
                    }
                    
                    
                    
                    
                }catch(Exception e){
                    System.out.println("No se conecto a la Base");
                        System.out.println(e.getMessage());
                        System.out.println(e.getStackTrace());
                }
    
    
    %>

    
</html>

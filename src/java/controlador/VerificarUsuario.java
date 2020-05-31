/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.Usuario;

/**
 *
 * @author river
 */
public class VerificarUsuario extends HttpServlet {
 /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
       String user=request.getParameter("Nombre");
        String clave=request.getParameter("Clave");
        
        Usuario verf=new Usuario();
        
        verf=verf.verificarUsuario(user, clave);
        //System.out.println(u);
        
        if(verf!=null){
            //El usuario existe en la base de datos y clave correcta
            //Creamos la sesion
            HttpSession sesion=request.getSession(true);
            sesion.setAttribute("usuario", verf);
            sesion.setAttribute("privilegio", verf.getUsuario_privilegio());
            HttpSession sesionOk = request.getSession();
            sesionOk.setAttribute("usuario",user);
               
            if(verf.getUsuario_privilegio()==0){
                //El usuario tiene el privilegio de cliente
                response.sendRedirect("Controlador?accion=home");
            }else{
                //El usuario tiene el privilegio de empleado de la empresa
                response.sendRedirect("Vista_admin.jsp");
            }
        }else{
            //El usuario no existe o clave incorrecta
           response.sendRedirect("error.jsp");
            
            
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

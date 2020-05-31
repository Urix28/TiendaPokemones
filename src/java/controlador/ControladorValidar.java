package controlador;

/*import modelo.Login; 
import modelo.LoginDAO; 
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ControladorValidar extends HttpServlet {

    LoginDAO edao = new LoginDAO();
    Login em = new Login();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
               String user=request.getParameter("txtUsuario");
        String clave=request.getParameter("txtClave");
        
        Login u=new Login();
        u=u.validarUsuario(user, clave);
        
        
        if(u!=null){
            //El usuario existe en la base de datos y clave correcta
            //Creamos la sesion
            HttpSession sesion=request.getSession(true);
            sesion.setAttribute("usuario", u);
            
            HttpSession sesionOk = request.getSession();
            sesionOk.setAttribute("usuario",user);
               
            if(u.getUsuario_privilegio()==0){
                //El usuario tiene el privilegio de cliente
                response.sendRedirect("MostrarProductos.jsp");
            }else{
                //El usuario tiene el privilegio de empleado de la empresa
                response.sendRedirect("MostrarProductosEmpelado.jsp");
            }
        }else{
            //El usuario no existe o clave incorrecta
            response.sendRedirect("error.jsp");
            
            
        }


    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}*/

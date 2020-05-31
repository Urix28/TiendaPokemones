package controlador;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Compras;
import modelo.Pokemon;
import modelo.PokemonDAO;

/**
 *
 * @author river
 */
public class Controlador extends HttpServlet {

    PokemonDAO pdao = new PokemonDAO();
    Pokemon p = new Pokemon();
    List<Pokemon> pokemones = new ArrayList<>();
    
    List<Compras> listaCarrito = new ArrayList<>();
    int item;
    double totalPagar=0.0;
    int cantidad=1;
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");
        pokemones = pdao.listar();
        switch(accion){
          
            case "AgregarCarrito":
                int pos=0; 
                cantidad=1; 
                int idp = Integer.parseInt(request.getParameter("id"));
                p = pdao.listaId(idp);
                
                if (listaCarrito.size()>0) {
                    
                    for (int i = 0; i < listaCarrito.size(); i++) {
                        
                        if (idp==listaCarrito.get(i).getIdProducto()){
                            pos=i; 
                        }
                        
                    }
                    
                    if (idp==listaCarrito.get(pos).getIdProducto()){
                        cantidad=listaCarrito.get(pos).getCantidad()+cantidad;
                        double subtotal=listaCarrito.get(pos).getPrecioCompra()*cantidad;
                        listaCarrito.get(pos).setCantidad(cantidad);
                        listaCarrito.get(pos).setSubTotal(subtotal);
                    } else{
                        item = item+1;
                        
                        Compras co = new Compras();
                        co.setItem(item);
                        co.setIdProducto(p.getId());
                        co.setNombres(p.getNombres());
                        co.setDescripcion(p.getDescripcion());
                        co.setPrecioCompra(p.getPrecio());
                        co.setCantidad(cantidad);
                        co.setSubTotal(cantidad*p.getPrecio());
                        listaCarrito.add(co);  
                    }
                    
                } else {
                    
                item = item+1;
                Compras co = new Compras();
                co.setItem(item);
                co.setIdProducto(p.getId());
                co.setNombres(p.getNombres());
                co.setDescripcion(p.getDescripcion());
                co.setPrecioCompra(p.getPrecio());
                co.setCantidad(cantidad);
                co.setSubTotal(cantidad*p.getPrecio());
                listaCarrito.add(co);                    
                }
                
                request.setAttribute("contador", listaCarrito.size());
                request.getRequestDispatcher("Controlador?accion=home").forward(request, response);
                

                break;
                
            case "Delete":
                
                int idproducto=Integer.parseInt(request.getParameter("idp"));
                for (int i = 0; i < listaCarrito.size(); i++) {
                    if (listaCarrito.get(i).getIdProducto()==idproducto){
                        listaCarrito.remove(i);           
                    }
                }
                
            break; 
                
            case "Carrito":
                totalPagar=0.0;
                request.setAttribute("carrito", listaCarrito);
                for (int i = 0; i < listaCarrito.size(); i++) {
                    totalPagar = totalPagar + listaCarrito.get(i).getSubTotal();
                    
                }
                request.setAttribute("totalPagar", totalPagar);
                request.getRequestDispatcher("carrito.jsp").forward(request, response);
                
                break;
                
            case "GestionarP":
                request.setAttribute("pokemones", pokemones);
                request.getRequestDispatcher("CRUDProductos.jsp").forward(request, response);
                
                break;
            default:    
            request.setAttribute("pokemones", pokemones);
            request.getRequestDispatcher("Productos.jsp").forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
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
     *
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
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
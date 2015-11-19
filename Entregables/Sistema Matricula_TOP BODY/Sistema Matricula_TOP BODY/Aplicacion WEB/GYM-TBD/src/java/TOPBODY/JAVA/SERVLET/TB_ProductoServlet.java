/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package TOPBODY.JAVA.SERVLET;

import TOPBODY.JAVA.BEAN.*;
import TOPBODY.JAVA.DAO.*;
import java.util.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author HECTOR JORGE
 */
public class TB_ProductoServlet extends HttpServlet {

    TB_ProductoBean objproB=null;
    TB_ProductoDao objproD=null;
    ArrayList<TB_ProductoBean> Lista=null;
    ArrayList<TB_ProductoBean> Lista2=null;
    String pagina="";
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        int op=Integer.parseInt(request.getParameter("op"));
        
        switch(op)
        {
            case 0:
            {
                String opcad=request.getParameter("opp");
                
                if(opcad.equals("Categoria"))
        {
            
        request.setAttribute("mensajecbo", "Categoria");
        
        }else
            {   if(opcad.equals("Marca"))
                {
                    request.setAttribute("mensajecbo", "Marca");
                    
                }else
                    {   if(opcad.equals("Nombre"))
                        {
                            
                            request.setAttribute("mensajecbo", "Nombre");
                            
                        }else
                            {   if(opcad.equals("----"))
                                {
                                    request.setAttribute("mensajecbo", "----");
                                }
                            }
                    }
            }
                
                
                pagina="/Mantenimiento_producto.jsp";
                
            break;
            }
            
            
            case 1:
            {
                
                String marca=request.getParameter("txtmarca");
                objproB=new TB_ProductoBean();
                objproB.setMarca(marca);
                
                objproD =new TB_ProductoDao();
                Lista=objproD.buscarmarca(objproB);
                request.setAttribute("LISTA", Lista);
                pagina="/Mantenimiento_producto.jsp";
            break;
            }
            case 2:
            {
                String nombre=request.getParameter("txtNombre");
                
                objproB=new TB_ProductoBean();
                objproB.setDescripcion(nombre);
        
                objproD=new TB_ProductoDao();
                Lista2=objproD.buscarnombre(objproB);
                request.setAttribute("LISTA2", Lista2);
                pagina="/Mantenimiento_producto.jsp";
            break;
            }
            case 3:
            {
                objproD=new TB_ProductoDao();
                Lista=objproD.cargarTablaProteina();
                request.setAttribute("LISTA3",Lista);
                pagina="/Mantenimiento_producto.jsp";
                break;
            }
            case 4:
            {
                objproD=new TB_ProductoDao();
                Lista=objproD.cargarTablaVitamina();
                request.setAttribute("LISTA3",Lista);
                pagina="/Mantenimiento_producto.jsp";
                break;
            }
            case 5:
            {
                objproD=new TB_ProductoDao();
                Lista=objproD.cargarTablaQuemador();
                request.setAttribute("LISTA3",Lista);
                pagina="/Mantenimiento_producto.jsp";
                break;
            }
            case 6:
            {
                String descripcion=request.getParameter("txtdescripcion");
                int precio=Integer.parseInt(request.getParameter("txtprecio"));
                String marca=request.getParameter("txtmarca");
                String categoria=request.getParameter("txtcategoria");
                String imagen=request.getParameter("txtdescripcion");
                
                objproD=new TB_ProductoDao();
                objproD.nuevopro(descripcion,precio,marca,categoria,imagen);
                pagina="/Mantenimiento_producto_nuevo.jsp";
                break;
            }
            case 7:
            {
                String codigo=request.getParameter("txtcodigo");
                int cod=Integer.parseInt(codigo);
                objproB=new TB_ProductoBean();
                objproB.setCodproducto(cod);
                
                objproD=new TB_ProductoDao();
                Lista=objproD.buscar(objproB);
                request.setAttribute("LISTADO",Lista);
                
                request.setAttribute("MSN","SI");
                pagina="/Mantenimiento_producto_modificar.jsp";
                break;
         
            }
            case 8:
            {
                String preciocad,codcad,descripcion,marca,categoria,imagen;
                int codigo;
                double precio;
                codcad=request.getParameter("txtcodigo");
                codigo=Integer.parseInt(codcad);
                descripcion=request.getParameter("txtdescripcion");
                preciocad=request.getParameter("txtprecio");
                precio=Integer.parseInt(preciocad);
                marca=request.getParameter("txtmarca");
                categoria=request.getParameter("txtcategoria");
                imagen=request.getParameter("txtimagen");
                
                objproB=new TB_ProductoBean();
                objproB.setCodproducto(codigo);
                objproB.setDescripcion(descripcion);
                objproB.setPrecio(precio);
                objproB.setMarca(marca);
                objproB.setCategoria(categoria);
                objproB.setImagen(imagen);

                objproD=new TB_ProductoDao();
                int i=objproD.modificar(objproB);
                
                pagina="/Mantenimiento_producto_modificar.jsp";
                break;
                
            }
            case 9:
            {
                pagina="/Mantenimiento_producto_modificar.jsp";
                break;
            }
            case 10:
            {
                pagina="/Mantenimiento_producto_nuevo.jsp";
                break;
            }
        }
          
        getServletContext().getRequestDispatcher(pagina).forward(request, response);
    }
        
       

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
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
     * Handles the HTTP
     * <code>POST</code> method.
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

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package TOPBODY.JAVA.SERVLET;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import TOPBODY.JAVA.BEAN.*;
import TOPBODY.JAVA.DAO.*;
/**
 *
 * @author Robinson
 */
public class TB_FreezingServlet extends HttpServlet {

    TB_FreezingBean objcmb=null;
    TB_FreezingDao objcmDao=new TB_FreezingDao();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String op, pagina="";
        
        op=request.getParameter("op");
        if(op.equals("Enviar"))
        {
            String codsociocad=request.getParameter("txtcodigo");
            int codsocio= Integer.parseInt(codsociocad);
            String nombre=request.getParameter("txtnombre");
            String correo=request.getParameter("txtcorreo");
            String fechainicio=request.getParameter("validBeforeDatepicker");
            String fechafin=request.getParameter("validAfterDatepicker");
            String comentario=request.getParameter("txtcomentario");

            
            objcmDao=new TB_FreezingDao();
            int i=objcmDao.SolicitudFreezing(codsocio,nombre,correo,fechainicio,fechafin,comentario);
            
            if(i==1)
            {
            request.setAttribute("mensaje", "Enviado Correctamente");
            }
            
            pagina="/TB_FreezingSocio.jsp";
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

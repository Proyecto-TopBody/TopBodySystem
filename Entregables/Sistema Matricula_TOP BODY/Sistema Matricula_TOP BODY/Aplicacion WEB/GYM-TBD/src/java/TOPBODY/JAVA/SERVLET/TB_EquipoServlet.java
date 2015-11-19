/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package TOPBODY.JAVA.SERVLET;

import TOPBODY.JAVA.BEAN.TB_EquipoBean;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import TOPBODY.JAVA.BEAN.*;
import TOPBODY.JAVA.DAO.*;
import java.util.*;
/**
 *
 * @author Robinson
 */
public class TB_EquipoServlet extends HttpServlet {

    TB_EquipoBean objeqB=null;
    TB_EquipoDao objeqD=null;
    ArrayList<TB_EquipoBean> Lista=null;
    String pagina="";
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String categoria=request.getParameter("re");
                objeqB=new TB_EquipoBean();
                objeqB.setCategoria(categoria);
                
                objeqD =new TB_EquipoDao();
                Lista=objeqD.buscarcategoria(objeqB);
                request.setAttribute("LISTA", Lista);
                pagina="/Mantenimiento_equipo.jsp";
         
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

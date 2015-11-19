/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package TOPBODY.JAVA.SERVLET;

import TOPBODY.JAVA.BEAN.TB_AsistenciaBean;
import TOPBODY.JAVA.DAO.TB_AsistenciaDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Robinson
 */
public class TB_AsistenciaServlet1 extends HttpServlet {

   
    
    TB_AsistenciaBean objeqB=null;
    TB_AsistenciaDao objeqD=null;
    ArrayList<TB_AsistenciaBean> Lista=null;
    String pagina="";
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        
        String categoria=request.getParameter("op");
        String cod=request.getParameter("txtcodigo");
        int codigo=Integer.parseInt(cod);
        
                objeqB=new TB_AsistenciaBean();
                objeqB.setCodsocio(codigo);
                
                objeqD =new TB_AsistenciaDao();
                Lista=objeqD.mostrarasistencia(objeqB);
                request.setAttribute("LISTADO", Lista);
                pagina="/TB_VerAsistenciaSocio.jsp";
         
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

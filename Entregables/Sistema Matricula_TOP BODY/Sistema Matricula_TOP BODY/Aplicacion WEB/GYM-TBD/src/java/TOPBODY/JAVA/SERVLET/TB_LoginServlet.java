/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package TOPBODY.JAVA.SERVLET;

import TOPBODY.JAVA.DAO.*;
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
public class TB_LoginServlet extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        TB_SocioDao objSD=new TB_SocioDao();
        TB_EmpleadoDao objED=new TB_EmpleadoDao();
        TB_AdminDao objAD=new TB_AdminDao();
        String pagina="";
        String usuario=request.getParameter("txtusu");
        String clave=request.getParameter("txtpas");
        int op=Integer.parseInt(request.getParameter("op"));
        
        switch(op)
        {
        case 1:
        {
            objAD =new TB_AdminDao();
            boolean rpta=objAD.login(usuario,clave);
            
            if(rpta==true)
            {
                pagina="/main_Mantenimiento_Admin.jsp";
            }
            else
            {
                objED=new TB_EmpleadoDao();
                boolean rpta1=objED.login(usuario,clave);
                
                if(rpta1==true)
                {
                    pagina="/main_Mantenimiento_Empleado.jsp";
                }
                else
                {
                    objSD=new TB_SocioDao();
                    boolean rpta2=objSD.login(usuario,clave);
                    
                    if(rpta2==true)
                    {
                        pagina="/main_Mantenimiento_Socio.jsp";
                    }
                    else
                    {
                        pagina="/Login.jsp";
                        request.setAttribute("erlo", "Usuario no encontrado");
                    }
                }
            }
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

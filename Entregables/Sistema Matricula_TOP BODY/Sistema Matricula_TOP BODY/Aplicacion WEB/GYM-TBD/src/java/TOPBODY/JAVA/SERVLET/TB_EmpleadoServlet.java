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
import java.util.ArrayList;

/**
 *
 * @author HECTOR JORGE
 */
public class TB_EmpleadoServlet extends HttpServlet {
    
    TB_EmpleadoBean objB=null;
    TB_EmpleadoDao objpD=null;
    ArrayList<TB_EmpleadoBean> Lista=null;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String opcad, pagina="";
        int option;
        
        opcad=request.getParameter("op");
       if(opcad.equals("Registrar"))
        {
            option=2;
        }else{
        option=Integer.parseInt(opcad);
        }
        
        switch(option){
            case 1:
            {
                pagina="/TB_MatricularEmpleado.jsp";
                break;
            }
            case 2:
            {
                String nombre, apellido, cargo, direccion, distrito, telefono, dni, 
                fechanacimiento, sexo, estadocivil, numerohijos, sueldocad, usuario, clave;
                int hijos;
                int sueldo;
                nombre=request.getParameter("txtNombre");
                apellido=request.getParameter("txtApellido");
                cargo=request.getParameter("txtCargo");
                direccion=request.getParameter("txtDireccion");
                distrito=request.getParameter("txtDistrito");
                telefono=request.getParameter("txtTelefono");
                dni=request.getParameter("txtDni");
                fechanacimiento=request.getParameter("validDefaultDatepicker");
                sexo=request.getParameter("rdSexo");
                estadocivil=request.getParameter("txtEstadoCivil");
                numerohijos=request.getParameter("txtNumeroHijos");
                sueldocad=request.getParameter("txtSueldo");
                sueldo=Integer.parseInt(sueldocad);
                hijos=Integer.parseInt(numerohijos);
                usuario=request.getParameter("txtUsuario");
                clave=request.getParameter("txtClave");
                
                TB_EmpleadoBean objTBSB=new TB_EmpleadoBean();
                objTBSB.setNombres(nombre);
                objTBSB.setApellidos(apellido);
                objTBSB.setCargo(cargo);
                objTBSB.setDireccion(direccion);
                objTBSB.setDistrito(distrito);
                objTBSB.setTelf_fijo(telefono);
                objTBSB.setDNI(dni);
                objTBSB.setFecha_nacimiento(fechanacimiento);
                objTBSB.setSexo(sexo);
                objTBSB.setEstado_civil(estadocivil);
                objTBSB.setNum_hijos(hijos);
                objTBSB.setUsuario(usuario);
                objTBSB.setSueldo(sueldo);
                objTBSB.setClave(clave);
                
                TB_EmpleadoDao objTBSD =new TB_EmpleadoDao();
                int i=objTBSD.MatricularEmpleado(objTBSB);
                
                pagina="/TB_MatricularEmpleado.jsp";
                break;
            }
                
            case 3:
            {
                pagina="/Mantenimiento_empleado.jsp";
            break;
            }
                
            case 4:
            {
                pagina="/TB_ModificarEmpleado.jsp";
            break;
            }
                
            case 5:
            {
                String codcad, nombre, apellido, cargo, direccion, distrito, telefono, dni, 
                fechanacimiento, sexo, estadocivil, numerohijos, sueldocad, usuario, clave;
                int hijos, codigo;
                int sueldo;
                codcad=request.getParameter("txtCodigo");
                codigo=Integer.parseInt(codcad);
                nombre=request.getParameter("txtNombre");
                apellido=request.getParameter("txtApellido");
                cargo=request.getParameter("txtCargo");
                direccion=request.getParameter("txtDireccion");
                distrito=request.getParameter("txtDistrito");
                telefono=request.getParameter("txtTelefono");
                dni=request.getParameter("txtDni");
                fechanacimiento=request.getParameter("validDefaultDatepicker");
                sexo=request.getParameter("rdSexo");
                estadocivil=request.getParameter("txtEstadoCivil");
                numerohijos=request.getParameter("txtNumeroHijos");
                hijos=Integer.parseInt(numerohijos);
                sueldocad=request.getParameter("txtSueldo");
                sueldo= Integer.parseInt(sueldocad);
                usuario=request.getParameter("txtUsuario");
                clave=request.getParameter("txtClave");
                
                objB=new TB_EmpleadoBean();
                objB.setCodempleado(codigo);
                objB.setNombres(nombre);
                objB.setApellidos(apellido);
                objB.setCargo(cargo);
                objB.setDireccion(direccion);
                objB.setDistrito(distrito);
                objB.setTelf_fijo(telefono);
                objB.setDNI(dni);
                objB.setFecha_nacimiento(fechanacimiento);
                objB.setSexo(sexo);
                objB.setEstado_civil(estadocivil);
                objB.setNum_hijos(hijos);
                objB.setSueldo(sueldo);
                objB.setUsuario(usuario);
                objB.setClave(clave);

                objpD=new TB_EmpleadoDao();
                int i=objpD.ModificarEmpleado(objB);
                
                pagina="/TB_ModificarEmpleado.jsp";
                break;
            }
                
            case 6:
            {
                pagina="/Mantenimiento_empleado.jsp";
                break;
            }
                
            case 7:
            {
                TB_EmpleadoDao objPerDAO=new TB_EmpleadoDao();
                Lista=objPerDAO.cargarTablaEmpleado();
                request.setAttribute("LISTA", Lista);    
                pagina="/TB_EliminarEmpleado.jsp";
                break;
            }
                
            case 8:
            {
                String codcad=request.getParameter("elegir");
                int codigo=Integer.parseInt(codcad);
            
                TB_EmpleadoBean objPerb=new TB_EmpleadoBean();
                objPerb.setCodempleado(codigo);
            
                TB_EmpleadoDao objPerDAO=new TB_EmpleadoDao();
                int i=objPerDAO.EliminarRegistro(objPerb);
                
                if(i==1)
                {
                    request.setAttribute("mensaje","registro eliminado");
                }
                else
                {
                    request.setAttribute("mensaje","registro no eliminado");
                }
                
                objPerDAO=new TB_EmpleadoDao();
                Lista=objPerDAO.cargarTablaEmpleado();
                request.setAttribute("LISTA", Lista);
                pagina="/TB_EliminarEmpleado.jsp";
                break;
            }
                
            case 9:
            {
                pagina="/Mantenimiento_empleado.jsp";
                break;
            }
                
            case 10:
            {
                
                pagina="/TB_ListarEmpleado.jsp";
                
                objpD=new TB_EmpleadoDao();
                Lista=objpD.cargarTablaEmpleado();
                request.getSession().setAttribute("empleados", Lista);
                break;
            }
                
            case 11:
            {
                pagina="/Mantenimiento_empleado.jsp";
                break;
            }
                
            case 12:
            {
                String codigo=request.getParameter("txtCodigo");
                int cod=Integer.parseInt(codigo);
                objB=new TB_EmpleadoBean();
                objB.setCodempleado(cod);
                
                objpD=new TB_EmpleadoDao();
                Lista=objpD.buscar(objB);
                request.setAttribute("LISTADO",Lista);
                
                request.setAttribute("MSN","SI");
                pagina="/TB_ModificarEmpleado.jsp";
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
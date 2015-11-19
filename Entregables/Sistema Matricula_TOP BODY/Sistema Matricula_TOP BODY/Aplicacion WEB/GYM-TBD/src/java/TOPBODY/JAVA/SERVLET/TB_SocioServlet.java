
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

public class TB_SocioServlet extends HttpServlet {
        TB_SocioBean objB=null;
        TB_SocioDao objpD=null;
        ArrayList<TB_SocioBean> Lista=null;
        
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
                pagina="/TB_MatricularSocio.jsp";
            break;
            }
                
            case 2:
            {
                String nombre, apellido, ocupacion, direccion, distrito, telf_fijo, celular, DNI, fechanacimiento, sexo, estadocivil,correo,periodo,importecad, fechainicio,fechafin, usuario,clave,numerohijos;
                int hijos;
                double importe;
                nombre=request.getParameter("txtNombre");
                apellido=request.getParameter("txtApellido");
                ocupacion=request.getParameter("txtOcupacion");
                direccion=request.getParameter("txtDireccion");
                distrito=request.getParameter("txtDistrito");
                telf_fijo=request.getParameter("txtTelefono");
                celular=request.getParameter("txtCelular");
                DNI=request.getParameter("txtDni");
                fechanacimiento=request.getParameter("validDefaultDatepicker");
                sexo=request.getParameter("rdSexo");
                estadocivil=request.getParameter("txtEstadoCivil");
                numerohijos=request.getParameter("txtNumeroHijos");
                hijos=Integer.parseInt(numerohijos);
                correo=request.getParameter("txtCorreo");
                periodo=request.getParameter("txtPeriodo");
                fechainicio=request.getParameter("txtfechainicio");
                fechafin=request.getParameter("txtfechafin");
                importecad=request.getParameter("txtImporte");
                importe= Double.parseDouble(importecad);
                usuario=request.getParameter("txtUsuario");
                clave=request.getParameter("txtClave");
                
                TB_SocioBean objTBSB=new TB_SocioBean();
                objTBSB.setNombres(nombre);
                objTBSB.setApellidos(apellido);
                objTBSB.setOcupacion(ocupacion);
                objTBSB.setDireccion(direccion);
                objTBSB.setDistrito(distrito);
                objTBSB.setTelf_fijo(telf_fijo);
                objTBSB.setCelular(celular);
                objTBSB.setDNI(DNI);
                objTBSB.setFecha_nacimiento(fechanacimiento);
                objTBSB.setSexo(sexo);
                objTBSB.setEstado_civil(estadocivil);
                objTBSB.setNum_hijos(hijos);
                objTBSB.setCorreo(correo);
                objTBSB.setPeriodo(periodo);
                objTBSB.setFechainicio(fechainicio);
                objTBSB.setFechafin(fechafin);
                objTBSB.setImporte(importe);
                objTBSB.setUsuario(usuario);
                objTBSB.setClave(clave);
                
                TB_SocioDao objTBSD =new TB_SocioDao();
                int i=objTBSD.MatricularSocio(objTBSB);
                
                TB_SocioDao objPerDAO=new TB_SocioDao();
                Lista=objPerDAO.factura(usuario);
                request.setAttribute("LISTA", Lista); 
                request.setAttribute("MSN", "imprimir");
               pagina="/Factura.jsp";
               break;
        
            }
                
            case 3:
            {
                pagina="/Mantenimiento_Socio.jsp";
                break;
            }
                
            case 4:
            {
                
                pagina="/TB_ModificarSocio.jsp";
                break;
            }
                
            case 5:
            {
                String nombres,apellidos,ocupacion,
                        direccion,distrito,telf_fijo,celular,
                        DNI,fechanacimiento,sexo,estadocivil,
                        numerohijos,correo,periodo,fechainicio,fechafin,importecad,usuario,clave;
                int codsocio,hijos;
                double importe;
                codsocio=Integer.parseInt(request.getParameter("txtCodigo"));
                nombres=request.getParameter("txtNombre");
                apellidos=request.getParameter("txtApellido");
                ocupacion=request.getParameter("txtOcupacion");
                direccion=request.getParameter("txtDireccion");
                distrito=request.getParameter("txtDistrito");
                telf_fijo=request.getParameter("txtTelefono");
                celular=request.getParameter("txtCelular");
                DNI=request.getParameter("txtDni");
                fechanacimiento=request.getParameter("validDefaultDatepicker");
                sexo=request.getParameter("rdSexo");
                estadocivil=request.getParameter("txtEstadoCivil");
                numerohijos=request.getParameter("txtNumeroHijos");
                hijos=Integer.parseInt(numerohijos);
                correo=request.getParameter("txtCorreo");
                periodo=request.getParameter("txtPeriodo");
                fechainicio=request.getParameter("validBeforeDatepicker");
                fechafin=request.getParameter("validAfterDatepicker");
                importecad=request.getParameter("txtImporte");
                importe= Double.parseDouble(importecad);
                usuario=request.getParameter("txtUsuario");
                clave=request.getParameter("txtClave");
                
                objB=new TB_SocioBean();
                objB.setCodsocio(codsocio);
                objB.setNombres(nombres);
                objB.setApellidos(apellidos);
                objB.setOcupacion(ocupacion);
                objB.setDireccion(direccion);
                objB.setDistrito(distrito);
                objB.setTelf_fijo(telf_fijo);
                objB.setCelular(celular);
                objB.setDNI(DNI);
                objB.setFecha_nacimiento(fechanacimiento);
                objB.setSexo(sexo);
                objB.setEstado_civil(estadocivil);
                objB.setNum_hijos(hijos);
                objB.setCorreo(correo);
                objB.setPeriodo(periodo);
                objB.setFechainicio(fechainicio);
                objB.setFechafin(fechafin);
                objB.setImporte(importe);
                objB.setUsuario(usuario);
                objB.setClave(clave);
                
                objpD=new TB_SocioDao();
                int i=objpD.ModificarSocio(objB); 
                
                pagina="/TB_ModificarSocio.jsp";
                break;
            }
                
            case 6:
            {
                pagina="/Mantenimiento_socio.jsp";
            break;
            }
                
            case 7:
            {
                TB_SocioDao objPerDAO=new TB_SocioDao();
                Lista=objPerDAO.cargarTablaSocio();
                request.setAttribute("LISTA", Lista);    
                pagina="/TB_EliminarSocio.jsp";
                break;
            }
                
            case 8:
            {
                String codcad=request.getParameter("elegir");
                int codigo=Integer.parseInt(codcad);

                TB_SocioBean objPerb=new TB_SocioBean();
                objPerb.setCodsocio(codigo);

                TB_SocioDao objPerDAO=new TB_SocioDao();
                int i=objPerDAO.EliminarRegistro(objPerb);
                
                if(i==1)
                {
                    request.setAttribute("mensaje","registro eliminado");
                }
                else
                {
                    request.setAttribute("mensaje","registro no eliminado");
                }
                
                objPerDAO=new TB_SocioDao();
                Lista=objPerDAO.cargarTablaSocio();
                request.setAttribute("LISTA", Lista);
                pagina="/TB_EliminarSocio.jsp";
                break;
            }
            case 9:
            {
                pagina="/Mantenimiento_socio.jsp";
                break;
            }
                
            case 10:
            {
                pagina="/TB_ListarSocio.jsp";

                objpD=new TB_SocioDao();
                Lista=objpD.cargarTablaSocio();
                request.getSession().setAttribute("socios", Lista);
                break;
            }
                
            case 11:
            {
                pagina="/Mantenimiento_socio.jsp";
                break;
            }
                
            case 12:
            {
                String codigo=request.getParameter("txtCodigo");
                int cod=Integer.parseInt(codigo);
                objB=new TB_SocioBean();
                objB.setCodsocio(cod);
                
                objpD=new TB_SocioDao();
                Lista=objpD.buscar(objB);
                request.setAttribute("LISTADO",Lista);
                
                request.setAttribute("MSN","SI");
                pagina="/TB_ModificarSocio.jsp";
                break;
            }
                
            case 13:
            {
                String codigo=request.getParameter("txtCodigo1");
                int cod=Integer.parseInt(codigo);
                objB=new TB_SocioBean();
                objB.setCodsocio(cod);
                
                objpD=new TB_SocioDao();
                Lista=objpD.buscar(objB);
                request.setAttribute("LISTADO",Lista);
                
                request.setAttribute("MSN","SI");
                pagina="/Factura.jsp";
                break;
            }
            case 14:
            {
                String codigo=request.getParameter("txtCodigo1");
                int cod=Integer.parseInt(codigo);
                objB=new TB_SocioBean();
                objB.setCodsocio(cod);
                
                objpD=new TB_SocioDao();
                Lista=objpD.buscar(objB);
                request.setAttribute("LISTADO",Lista);
                
                request.setAttribute("MSN","SI");
                pagina="/TB_AsistenciaSocio.jsp";
                break;
            }
            case 15:
            {
                String codsociocad;
                int codsocio;
                codsociocad=request.getParameter("txtCodigo");
                codsocio=Integer.parseInt(codsociocad);
                
                TB_SocioBean objTBSB=new TB_SocioBean();
                objTBSB.setCodsocio(codsocio);
                
                TB_SocioDao objTBSD =new TB_SocioDao();
                int i=objTBSD.AsistenciaSocio(objTBSB);
                
                pagina="/TB_AsistenciaSocio.jsp";
                break;
            }
            case 16:
            {
                pagina="/TB_AsistenciaSocio.jsp";
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

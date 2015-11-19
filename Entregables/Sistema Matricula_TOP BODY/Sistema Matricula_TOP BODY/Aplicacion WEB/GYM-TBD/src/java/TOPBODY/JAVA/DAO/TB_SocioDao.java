/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package TOPBODY.JAVA.DAO;
import TOPBODY.JAVA.UTIL.*;
import TOPBODY.JAVA.BEAN.*;
import java.sql.*;
import java.util.*;

public class TB_SocioDao {
    Connection cn=null;
    PreparedStatement pt=null;
    ResultSet rs=null;
    ArrayList<TB_SocioBean> Lista=null;
    TB_SocioBean objTBSB=null;
    public int MatricularSocio(TB_SocioBean objTBSB) {
        int  i=0;       
      try 
      {
          ConexionBD obj=new ConexionBD();
          cn=obj.getConexionBD();
          pt= cn.prepareStatement("{call nuevo_socio(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");
          pt.setString(1,objTBSB.getNombres());
          pt.setString(2,objTBSB.getApellidos());
          pt.setString(3,objTBSB.getOcupacion());
          pt.setString(4, objTBSB.getDireccion());
          pt.setString(5, objTBSB.getDistrito());
          pt.setString(6, objTBSB.getTelf_fijo());
          pt.setString(7, objTBSB.getCelular());
          pt.setString(8, objTBSB.getDNI());
          pt.setString(9, objTBSB.getFecha_nacimiento());
          pt.setString(10, objTBSB.getSexo());
          pt.setString(11, objTBSB.getEstado_civil());
          pt.setInt(12, objTBSB.getNum_hijos());
          pt.setString(13, objTBSB.getCorreo());
          pt.setString(14, objTBSB.getPeriodo());
          pt.setString(15, objTBSB.getFechainicio());
          pt.setString(16, objTBSB.getFechafin());
          pt.setDouble(17, objTBSB.getImporte());
          pt.setString(18, objTBSB.getUsuario());
          pt.setString(19, objTBSB.getClave());
          i=pt.executeUpdate();
          pt.close();
          cn.close();
      } catch (Exception e) 
      {   
      }
      return  i; 
    }

    public int ModificarSocio(TB_SocioBean objB)  
   {   int  i=0;       
      try 
      {
           ConexionBD objc=new ConexionBD();
           cn=objc.getConexionBD();
           pt= cn.prepareStatement("update socio set nombres=?, apellidos=?, ocupacion=?, direccion=?, distrito=?, telf_fijo=?, celular=?, DNI=?, Fecha_nacimiento=?, Sexo=?, Estado_civil=?, num_hijos=?, correo=?, Periodo=?, FechaInicio=?, FechaFin=?, Importe=?, usuario=?, clave=? where codsocio=?;");
           pt.setString(1,objB.getNombres());
          pt.setString(2,objB.getApellidos());
          pt.setString(3,objB.getOcupacion());
          pt.setString(4, objB.getDireccion());
          pt.setString(5, objB.getDistrito());
          pt.setString(6, objB.getTelf_fijo());
          pt.setString(7, objB.getCelular());
          pt.setString(8, objB.getDNI());
          pt.setString(9, objB.getFecha_nacimiento());
          pt.setString(10, objB.getSexo());
          pt.setString(11, objB.getEstado_civil());
          pt.setInt(12, objB.getNum_hijos());
          pt.setString(13, objB.getCorreo());
          pt.setString(14, objB.getPeriodo());
          pt.setString(15, objB.getFechainicio());
          pt.setString(16, objB.getFechafin());
          pt.setDouble(17, objB.getImporte());
          pt.setString(18, objB.getUsuario());
          pt.setString(19, objB.getClave());
          pt.setInt(20, objB.getCodsocio());
           i=pt.executeUpdate();
           pt.close();
           cn.close();
      } catch (Exception e) 
      {  
      }
      return  i;      
  }  
    public int EliminarRegistro(TB_SocioBean objPerb)
    {
    int i=0;
    try {
            ConexionBD obj=new ConexionBD();
            cn=obj.getConexionBD();
            pt=cn.prepareStatement("{call eliminar_socio(?)}");
            pt.setInt(1, objPerb.getCodsocio());
            i=pt.executeUpdate();
            pt.close();
            cn.close();
            rs.close();
        } catch (Exception e) {
            i=0;
        }
    return i;
    }

    public ArrayList<TB_SocioBean> cargarTablaSocio() {

        try {
            ConexionBD obj=new ConexionBD();
            cn=obj.getConexionBD();
            pt=cn.prepareStatement("{call listar_socios}");
            rs=pt.executeQuery();
            Lista=new ArrayList<TB_SocioBean>();
            while(rs.next())
            {
                objTBSB= new TB_SocioBean();
                objTBSB.setCodsocio(rs.getInt(1));
                objTBSB.setNombres(rs.getString(2));
                objTBSB.setApellidos(rs.getString(3));
                objTBSB.setOcupacion(rs.getString(4));
                objTBSB.setDireccion(rs.getString(5));
                objTBSB.setDistrito(rs.getString(6));
                objTBSB.setTelf_fijo(rs.getString(7));
                objTBSB.setCelular(rs.getString(8));
                objTBSB.setDNI(rs.getString(9));
                objTBSB.setFecha_nacimiento(rs.getString(10));
                objTBSB.setSexo(rs.getString(11));
                objTBSB.setEstado_civil(rs.getString(12));
                objTBSB.setNum_hijos(rs.getInt(13));
                objTBSB.setCorreo(rs.getString(14));
                objTBSB.setPeriodo(rs.getString(15));
                objTBSB.setFechainicio(rs.getString(16));
                objTBSB.setFechafin(rs.getString(17));
                objTBSB.setImporte(rs.getDouble(18));
                objTBSB.setUsuario(rs.getString(19));
                objTBSB.setClave(rs.getString(20));
                Lista.add(objTBSB);
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
             e.printStackTrace();
        }
        return Lista;
    }

    public boolean login(String usuario, String clave) {
        
        boolean rpta=false;
        
        try {
            ConexionBD obj=new ConexionBD();
            cn=obj.getConexionBD();
            pt=cn.prepareStatement("select * from socio where usuario=? and clave=?");
            pt.setString(1, usuario);
            pt.setString(2, clave);
            rs=pt.executeQuery();
            if(rs.next())
            {
                rpta=true;
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
        }
        return rpta;
        
    }

   

    public ArrayList<TB_SocioBean> buscar(TB_SocioBean objB) {
        
        try {
            ConexionBD obj=new ConexionBD();
            cn=obj.getConexionBD();
            pt=cn.prepareStatement("select * from socio where codsocio=?");
            pt.setInt(1, objB.getCodsocio());
            rs=pt.executeQuery();
            Lista=new ArrayList<TB_SocioBean>();
            while(rs.next())
            {
                objTBSB= new TB_SocioBean();
                objTBSB.setCodsocio(rs.getInt(1));
                objTBSB.setNombres(rs.getString(2));
                objTBSB.setApellidos(rs.getString(3));
                objTBSB.setOcupacion(rs.getString(4));
                objTBSB.setDireccion(rs.getString(5));
                objTBSB.setDistrito(rs.getString(6));
                objTBSB.setTelf_fijo(rs.getString(7));
                objTBSB.setCelular(rs.getString(8));
                objTBSB.setDNI(rs.getString(9));
                objTBSB.setFecha_nacimiento(rs.getString(10));
                objTBSB.setSexo(rs.getString(11));
                objTBSB.setEstado_civil(rs.getString(12));
                objTBSB.setNum_hijos(rs.getInt(13));
                objTBSB.setCorreo(rs.getString(14));
                objTBSB.setUsuario(rs.getString(15));
                objTBSB.setClave(rs.getString(16));
                Lista.add(objTBSB);
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
        }
        return Lista;
        
        
        
    }

    public ArrayList<TB_SocioBean> factura(String usuario) {
        
        try {
            ConexionBD obj=new ConexionBD();
            cn=obj.getConexionBD();
            pt=cn.prepareStatement("select * from socio where usuario=?");
            pt.setString(1,usuario);
            rs=pt.executeQuery();
            Lista=new ArrayList<TB_SocioBean>();
            while(rs.next())
            {
                objTBSB= new TB_SocioBean();
                objTBSB.setCodsocio(rs.getInt(1));
                objTBSB.setNombres(rs.getString(2));
                objTBSB.setApellidos(rs.getString(3));
                objTBSB.setOcupacion(rs.getString(4));
                objTBSB.setDireccion(rs.getString(5));
                objTBSB.setDistrito(rs.getString(6));
                objTBSB.setTelf_fijo(rs.getString(7));
                objTBSB.setCelular(rs.getString(8));
                objTBSB.setDNI(rs.getString(9));
                objTBSB.setFecha_nacimiento(rs.getString(10));
                objTBSB.setSexo(rs.getString(11));
                objTBSB.setEstado_civil(rs.getString(12));
                objTBSB.setNum_hijos(rs.getInt(13));
                objTBSB.setCorreo(rs.getString(14));
                objTBSB.setPeriodo(rs.getString(15));
                objTBSB.setFechainicio(rs.getString(16));
                objTBSB.setFechafin(rs.getString(17));
                objTBSB.setImporte(rs.getDouble(18));
                objTBSB.setUsuario(rs.getString(19));
                objTBSB.setClave(rs.getString(20));
                Lista.add(objTBSB);
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
        }
        return Lista;
         
    }
        public int AsistenciaSocio(TB_SocioBean objTBSB) {
        int  i=0;       
      try 
      {
          ConexionBD obj=new ConexionBD();
          cn=obj.getConexionBD();
          pt= cn.prepareStatement("insert into asistencia values (?,getdate());");
          pt.setInt(1,objTBSB.getCodsocio());
          i=pt.executeUpdate();
          pt.close();
          cn.close();
      } catch (Exception e) 
      {   
      }
      return  i; 
    }

    
}
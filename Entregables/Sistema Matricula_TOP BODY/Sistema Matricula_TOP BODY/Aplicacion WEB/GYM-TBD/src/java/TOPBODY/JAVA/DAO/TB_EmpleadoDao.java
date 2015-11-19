/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package TOPBODY.JAVA.DAO;
import TOPBODY.JAVA.UTIL.*;
import TOPBODY.JAVA.BEAN.*;
import java.sql.*;
import java.util.*;

public class TB_EmpleadoDao {
    Connection cn=null;
    PreparedStatement pt=null;
    ResultSet rs=null;
    ArrayList<TB_EmpleadoBean> Lista=null;
    TB_EmpleadoBean objTBEB=null;
    public int MatricularEmpleado(TB_EmpleadoBean objTBSB) {
        int  i=0;       
      try
      {
            ConexionBD obj=new ConexionBD();
            cn=obj.getConexionBD();
            pt=cn.prepareStatement("{call nuevo_empleado(?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");
            pt.setString(1,objTBSB.getNombres());
            pt.setString(2,objTBSB.getApellidos());
            pt.setString(3,objTBSB.getCargo());
            pt.setString(4,objTBSB.getDireccion());
            pt.setString(5,objTBSB.getDistrito());
            pt.setString(6,objTBSB.getTelf_fijo());
            pt.setString(7,objTBSB.getDNI());
            pt.setString(8,objTBSB.getFecha_nacimiento());
            pt.setString(9,objTBSB.getSexo());
            pt.setString(10,objTBSB.getEstado_civil());
            pt.setInt(11,objTBSB.getNum_hijos());
            pt.setDouble(12,objTBSB.getSueldo());
            pt.setString(13,objTBSB.getUsuario());
            pt.setString(14,objTBSB.getClave());
            i=pt.executeUpdate();
            pt.close();
            cn.close();
      } catch (Exception e) 
      {   
      }
      
      return  i; 
      
    }

    public  int  ModificarEmpleado( TB_EmpleadoBean   obj)  
   {   
      int  i=0;       
      try 
      {
        ConexionBD objc=new ConexionBD();
        cn=objc.getConexionBD();
        pt=cn.prepareStatement("update empleado set nombres=?, apellidos=?, cargo=?, direccion=?, distrito=?, telf_fijo=?, dni=?,"
                 + " fecha_nacimiento=?, sexo=?, estado_civil=?, num_hijos=?, sueldo=?, usuario=?, clave=? where  codempleado=?;");
        pt.setString(1,obj.getNombres());
        pt.setString(2,obj.getApellidos());
        pt.setString(3,obj.getCargo());
        pt.setString(4,obj.getDireccion());
        pt.setString(5,obj.getDistrito());
        pt.setString(6,obj.getTelf_fijo());
        pt.setString(7,obj.getDNI());
        pt.setString(8,obj.getFecha_nacimiento());
        pt.setString(9,obj.getSexo());
        pt.setString(10,obj.getEstado_civil());
        pt.setInt(11,obj.getNum_hijos());
        pt.setDouble(12,obj.getSueldo());
        pt.setString(13,obj.getUsuario());
        pt.setString(14,obj.getClave());
        pt.setInt(15,obj.getCodempleado());
        i=pt.executeUpdate();
        pt.close();
        rs.close();
        cn.close();
      } catch (Exception e) 
      {   i=0;
      }
      return  i;      
  }  
    public int EliminarRegistro(TB_EmpleadoBean objPerb)
    {
    int i=0;
    try 
    {
        ConexionBD obj=new ConexionBD();
        cn=obj.getConexionBD();
        pt=cn.prepareStatement("{call eliminar_empleado(?)}");
        pt.setInt(1, objPerb.getCodempleado());
        i=pt.executeUpdate();
        pt.close();
        cn.close();
        rs.close();
    } catch (Exception e) 
    {
        i=0;
    }
    
    return i;
    
    }

    public ArrayList<TB_EmpleadoBean> cargarTablaEmpleado() {

        try {
            ConexionBD obj=new ConexionBD();
            cn=obj.getConexionBD();
            pt=cn.prepareStatement("{call listar_empleados}");
            rs=pt.executeQuery();
            Lista=new ArrayList<TB_EmpleadoBean>();
            while(rs.next())
            {
                objTBEB= new TB_EmpleadoBean();
                objTBEB.setCodempleado(rs.getInt(1));
                objTBEB.setNombres(rs.getString(2));
                objTBEB.setApellidos(rs.getString(3));
                objTBEB.setCargo(rs.getString(4));
                objTBEB.setDireccion(rs.getString(5));
                objTBEB.setDistrito(rs.getString(6));
                objTBEB.setTelf_fijo(rs.getString(7));
                objTBEB.setDNI(rs.getString(8));
                objTBEB.setFecha_nacimiento(rs.getString(9));
                objTBEB.setSexo(rs.getString(10));
                objTBEB.setEstado_civil(rs.getString(11));
                objTBEB.setNum_hijos(rs.getInt(12));
                objTBEB.setSueldo(rs.getInt(13));
                objTBEB.setUsuario(rs.getString(14));
                objTBEB.setClave(rs.getString(15));
                Lista.add(objTBEB);
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
            pt=cn.prepareStatement("select * from empleado where usuario=? and clave=?");
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

    public ArrayList<TB_EmpleadoBean> buscar(TB_EmpleadoBean objB) {
        
        try {
            ConexionBD obj=new ConexionBD();
            cn=obj.getConexionBD();
            pt=cn.prepareStatement("select * from empleado where codempleado=?");
            pt.setInt(1, objB.getCodempleado());
            rs=pt.executeQuery();
            Lista=new ArrayList<TB_EmpleadoBean>();
            while(rs.next())
            {
                objTBEB= new TB_EmpleadoBean();
                objTBEB.setCodempleado(rs.getInt(1));
                objTBEB.setNombres(rs.getString(2));
                objTBEB.setApellidos(rs.getString(3));
                objTBEB.setCargo(rs.getString(4));
                objTBEB.setDireccion(rs.getString(5));
                objTBEB.setDistrito(rs.getString(6));
                objTBEB.setTelf_fijo(rs.getString(7));
                objTBEB.setDNI(rs.getString(8));
                objTBEB.setFecha_nacimiento(rs.getString(9));
                objTBEB.setSexo(rs.getString(10));
                objTBEB.setEstado_civil(rs.getString(11));
                objTBEB.setNum_hijos(rs.getInt(12));
                objTBEB.setSueldo(rs.getInt(13));
                objTBEB.setUsuario(rs.getString(14));
                objTBEB.setClave(rs.getString(15));
                Lista.add(objTBEB);
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
        }
        return Lista;
        
    }
    
}

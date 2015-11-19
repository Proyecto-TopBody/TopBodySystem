/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package TOPBODY.JAVA.DAO;
import java.sql.*;
import java.util.*;
import TOPBODY.JAVA.BEAN.*;
import TOPBODY.JAVA.UTIL.ConexionBD;
/**
 *
 * @author Robinson
 */
public class TB_FreezingDao {
    
    PreparedStatement pt=null;
    ResultSet rs=null;
    Connection cn=null;
    ArrayList<TB_FreezingBean> Lista=null;
    TB_FreezingBean objFreenBean=null;
    
    public int SolicitudFreezing(int codsocio,String nombre,String correo,String fechainicio,String fechafin,String comentario) {
        int i=0;
        try {
            
            ConexionBD objc= new ConexionBD();
            cn=objc.getConexionBD();
            pt=cn.prepareStatement("insert into freezing (codsocio,nombres,correo,fechainicio,fechafin,comentario)values(?,?,?,?,?,?)");
            pt.setInt(1,codsocio);
            pt.setString(2,nombre);
            pt.setString(3, correo);
            pt.setString(4, fechainicio);
            pt.setString(5, fechafin);
            pt.setString(6,comentario);
            
            i=pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e) {
        }
        
        return i;
        
    }
}

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package TOPBODY.JAVA.DAO;

import TOPBODY.JAVA.BEAN.*;
import TOPBODY.JAVA.UTIL.ConexionBD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.sql.*;
import java.util.*;
/**
 *
 * @author Robinson
 */
public class TB_CitaMedicaDao {
   
    PreparedStatement pt=null;
    ResultSet rs=null;
    Connection cn=null;
    ArrayList<TB_CitaMedicaBean> Lista=null;
    TB_CitaMedicaBean objAdminBean=null;
    
    public int EnviarCita(int codsocio,String nombre,String correo,String fecha,String comentario) {
        int i=0;
        try {
            
            ConexionBD objc= new ConexionBD();
            cn=objc.getConexionBD();
            pt=cn.prepareStatement("insert into citamedica (codsocio,nombres,correo,fecha,comentario)values(?,?,?,?,?)");
            pt.setInt(1,codsocio);
            pt.setString(2,nombre);
            pt.setString(3, correo);
            pt.setString(4,fecha);
            pt.setString(5,comentario);
            
            i=pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e) {
        }
        
        return i;
        
    }
}

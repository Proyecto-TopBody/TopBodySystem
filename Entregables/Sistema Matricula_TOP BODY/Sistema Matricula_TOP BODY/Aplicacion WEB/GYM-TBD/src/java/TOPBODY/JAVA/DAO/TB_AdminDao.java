/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package TOPBODY.JAVA.DAO;
import TOPBODY.JAVA.BEAN.*;
import TOPBODY.JAVA.UTIL.*;
import java.sql.*;
import java.util.*;

/**
 *
 * @author HECTOR JORGE
 */
public class TB_AdminDao {
    PreparedStatement pt=null;
    ResultSet rs=null;
    Connection cn=null;
    ArrayList<TB_AdministradorBean> Lista=null;
    TB_AdministradorBean objAdminBean=null;

    public boolean login(String usuario, String clave) {
        
        boolean rpta=false;
        try {
            ConexionBD obj=new ConexionBD();
            cn=obj.getConexionBD();
            pt=cn.prepareStatement("select * from administrador where usuarioadmin=? and claveadmin=?");
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
}

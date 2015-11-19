
package TOPBODY.JAVA.DAO;

import TOPBODY.JAVA.BEAN.*;
import TOPBODY.JAVA.UTIL.*;
import java.sql.*;
import java.util.*;

public class TB_AsistenciaDao {
    PreparedStatement pt=null;
    ResultSet rs=null;
    Connection cn=null;
    ArrayList<TB_AsistenciaBean> Lista=null;
    TB_AsistenciaBean objAsistenciaBean=null;
    
    public ArrayList<TB_AsistenciaBean> mostrarasistencia(TB_AsistenciaBean objasistbean) {
        
        
        try {
            ConexionBD objc= new ConexionBD();
            cn=objc.getConexionBD();
            pt=cn.prepareStatement("select * from asistencia where codsocio=?");
            pt.setInt(1,objasistbean.getCodsocio());
            rs=pt.executeQuery();
            
            Lista=new ArrayList<TB_AsistenciaBean>();
            while(rs.next())
            {
                objAsistenciaBean =new TB_AsistenciaBean();
                objAsistenciaBean.setCodsocio(rs.getInt(1));
                objAsistenciaBean.setFecha(rs.getString(2));
                Lista.add(objAsistenciaBean); 
            }
            cn.close();
            pt.close();
            rs.close();
        } catch (Exception e) {
        }
        return Lista;
    }
}
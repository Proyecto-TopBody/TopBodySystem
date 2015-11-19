
package TOPBODY.JAVA.DAO;

import TOPBODY.JAVA.BEAN.*;
import TOPBODY.JAVA.UTIL.*;
import java.sql.*;
import java.util.*;

public class TB_EquipoDao {
    PreparedStatement pt=null;
    ResultSet rs=null;
    Connection cn=null;
    ArrayList<TB_EquipoBean> Lista=null;
    TB_EquipoBean objEquipoBean=null;
    
    public ArrayList<TB_EquipoBean> buscarcategoria(TB_EquipoBean objeqbean) {
        
        
        try {
            ConexionBD objc= new ConexionBD();
            cn=objc.getConexionBD();
            pt=cn.prepareStatement("select * from equipo where categoria=?;");
            pt.setString(1,objeqbean.getCategoria());
            rs=pt.executeQuery();
            
            Lista=new ArrayList<TB_EquipoBean>();
            while(rs.next())
            {
                objEquipoBean =new TB_EquipoBean();
                objEquipoBean.setCodequipo(rs.getInt(1));
                objEquipoBean.setDescripcion(rs.getString(2));
                objEquipoBean.setCategoria(rs.getString(3));
                objEquipoBean.setImagen(rs.getString(4));
                Lista.add(objEquipoBean); 
            }
            cn.close();
            pt.close();
            rs.close();
        } catch (Exception e) {
        }
        return Lista;
    }
}

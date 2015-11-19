
package TOPBODY.JAVA.UTIL;
import java.sql.*;
import javax.swing.JOptionPane;


public class ConexionBD {

public Connection getConexionBD(){
        Connection cn=null;
        try {
            //Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String connectionUrl = "jdbc:sqlserver://PC-VAIO:1433;" +
             "databaseName=TOPBODY;user=sa;password=sa;";
            //cn=DriverManager.getConnection("jdbc:odbc:TOPBODY");
            cn=DriverManager.getConnection(connectionUrl);
            System.out.println("Se conecto");
        } catch (Exception e) {
            System.out.println("No se conecto");
        }
        return cn;      
    }
    
    public static void main(String[] args) {
      ConexionBD  obj=new ConexionBD();
      obj.getConexionBD();
    }
}
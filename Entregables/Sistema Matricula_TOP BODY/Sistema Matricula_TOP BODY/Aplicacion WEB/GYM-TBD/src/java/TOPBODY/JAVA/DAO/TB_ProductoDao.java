/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package TOPBODY.JAVA.DAO;


import TOPBODY.JAVA.BEAN.*;
import TOPBODY.JAVA.UTIL.*;
import java.sql.*;
import java.util.*;



public class TB_ProductoDao {
    PreparedStatement pt=null;
    ResultSet rs=null;
    Connection cn=null;
    ArrayList<TB_ProductoBean> Lista=null;
    TB_ProductoBean objProductoBean=null;
    
    public ArrayList<TB_ProductoBean> buscarnombre(TB_ProductoBean objprobean) {
        
        
        try {
            ConexionBD objc= new ConexionBD();
            cn=objc.getConexionBD();
            pt=cn.prepareStatement("select * from producto where descripcion=?;");
            pt.setString(1,objprobean.getDescripcion());
            rs=pt.executeQuery();
            
            Lista=new ArrayList<TB_ProductoBean>();
            while(rs.next())
            {
                objProductoBean =new TB_ProductoBean();
                objProductoBean.setCodproducto(rs.getInt(1));
                objProductoBean.setDescripcion(rs.getString(2));
                objProductoBean.setPrecio(rs.getDouble(3));
                objProductoBean.setMarca(rs.getString(4));
                objProductoBean.setCategoria(rs.getString(5));
                objProductoBean.setImagen(rs.getString(6));
                Lista.add(objProductoBean); 
            }
            cn.close();
            pt.close();
            rs.close();
        } catch (Exception e) {
        }
        return Lista;
    }
    public ArrayList<TB_ProductoBean> buscarmarca(TB_ProductoBean objprobean) {
        
        
        try {
            ConexionBD objc= new ConexionBD();
            cn=objc.getConexionBD();
            pt=cn.prepareStatement("select * from producto where marca=?;");
            pt.setString(1, objprobean.getMarca());
            rs=pt.executeQuery();
            
            Lista=new ArrayList<TB_ProductoBean>();
            while(rs.next())
            {
                objProductoBean =new TB_ProductoBean();
                objProductoBean.setCodproducto(rs.getInt(1));
                objProductoBean.setDescripcion(rs.getString(2));
                objProductoBean.setPrecio(rs.getDouble(3));
                objProductoBean.setMarca(rs.getString(4));
                objProductoBean.setCategoria(rs.getString(5));
                objProductoBean.setImagen(rs.getString(6));
                Lista.add(objProductoBean); 
            }
            cn.close();
            pt.close();
            rs.close();
        } catch (Exception e) {
        }
        return Lista;
    }
    
    public ArrayList<TB_ProductoBean> cargarTablaProteina() {

        try {
            ConexionBD obj=new ConexionBD();
            cn=obj.getConexionBD();
            pt=cn.prepareStatement("select * from producto where categoria='Proteina';");
            rs=pt.executeQuery();
            Lista=new ArrayList<TB_ProductoBean>();
            while(rs.next())
            {
                objProductoBean =new TB_ProductoBean();
                objProductoBean.setCodproducto(rs.getInt(1));
                objProductoBean.setDescripcion(rs.getString(2));
                objProductoBean.setPrecio(rs.getDouble(3));
                objProductoBean.setMarca(rs.getString(4));
                objProductoBean.setCategoria(rs.getString(5));
                objProductoBean.setImagen(rs.getString(6));
                Lista.add(objProductoBean); 
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
        }
        return Lista;
    }
    public ArrayList<TB_ProductoBean> cargarTablaVitamina() {

        try {
            ConexionBD obj=new ConexionBD();
            cn=obj.getConexionBD();
            pt=cn.prepareStatement("select * from producto where categoria='Vitamina';");
            rs=pt.executeQuery();
            Lista=new ArrayList<TB_ProductoBean>();
            while(rs.next())
            {
                objProductoBean =new TB_ProductoBean();
                objProductoBean.setCodproducto(rs.getInt(1));
                objProductoBean.setDescripcion(rs.getString(2));
                objProductoBean.setPrecio(rs.getDouble(3));
                objProductoBean.setMarca(rs.getString(4));
                objProductoBean.setCategoria(rs.getString(5));
                objProductoBean.setImagen(rs.getString(6));
                Lista.add(objProductoBean); 
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
        }
        return Lista;
    }
    public ArrayList<TB_ProductoBean> cargarTablaQuemador() {

        try {
            ConexionBD obj=new ConexionBD();
            cn=obj.getConexionBD();
            pt=cn.prepareStatement("select * from producto where categoria='Quemador';");
            rs=pt.executeQuery();
            Lista=new ArrayList<TB_ProductoBean>();
            while(rs.next())
            {
                objProductoBean =new TB_ProductoBean();
                objProductoBean.setCodproducto(rs.getInt(1));
                objProductoBean.setDescripcion(rs.getString(2));
                objProductoBean.setPrecio(rs.getDouble(3));
                objProductoBean.setMarca(rs.getString(4));
                objProductoBean.setCategoria(rs.getString(5));
                objProductoBean.setImagen(rs.getString(6));
                Lista.add(objProductoBean); 
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
        }
        return Lista;
    }

    public void nuevopro(String descripcion, int precio, String marca, String categoria, String imagen) {
        try {
            ConexionBD obj=new ConexionBD();
            cn=obj.getConexionBD();
            pt=cn.prepareStatement("insert into producto(descripcion,precio,marca,categoria,imagen) values(?,?,?,?,?)");
            pt.setString(1, descripcion);
            pt.setInt(2, precio);
            pt.setString(3, marca);
            pt.setString(4, categoria);
            pt.setString(5, imagen);
            pt.executeUpdate();
            
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
        }
    }

    public ArrayList<TB_ProductoBean> cargar(int codigo) {
        try {
            ConexionBD obj=new ConexionBD();
            cn=obj.getConexionBD();
            pt=cn.prepareStatement("select * from producto where codproducto=?");
            pt.setInt(1, codigo);
            rs=pt.executeQuery();
            Lista=new ArrayList<TB_ProductoBean>();
            while(rs.next())
            {
                objProductoBean =new TB_ProductoBean();
                objProductoBean.setCodproducto(rs.getInt(1));
                objProductoBean.setDescripcion(rs.getString(2));
                objProductoBean.setPrecio(rs.getDouble(3));
                objProductoBean.setMarca(rs.getString(4));
                objProductoBean.setCategoria(rs.getString(5));
                objProductoBean.setImagen(rs.getString(6));
                Lista.add(objProductoBean); 
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
        }
        return Lista;
    }
    
    public ArrayList<TB_ProductoBean> buscar(TB_ProductoBean objB) {
        
        try {
            ConexionBD obj=new ConexionBD();
            cn=obj.getConexionBD();
            pt=cn.prepareStatement("select * from producto where codproducto=?");
            pt.setInt(1, objB.getCodproducto());
            rs=pt.executeQuery();
            Lista=new ArrayList<TB_ProductoBean>();
            while(rs.next())
            {
                objProductoBean= new TB_ProductoBean();
                objProductoBean.setCodproducto(rs.getInt(1));
                objProductoBean.setDescripcion(rs.getString(2));
                objProductoBean.setPrecio(rs.getDouble(3));
                objProductoBean.setMarca(rs.getString(4));
                objProductoBean.setCategoria(rs.getString(5));
                objProductoBean.setImagen(rs.getString(6));
                Lista.add(objProductoBean);
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
        }
        return Lista;
        
    }
    
    public  int  modificar( TB_ProductoBean   obj)  
   {   
      int  i=0;       
      try 
      {
        ConexionBD objc=new ConexionBD();
        cn=objc.getConexionBD();
        pt=cn.prepareStatement("update producto set descripcion=?, precio=?, marca=?, categoria=?, imagen=? where  codproducto=?;");
        pt.setString(1,obj.getDescripcion());
        pt.setDouble(2,obj.getPrecio());
        pt.setString(3,obj.getMarca());
        pt.setString(4,obj.getCategoria());
        pt.setString(5,obj.getImagen());
        pt.setInt(6, obj.getCodproducto());
        i=pt.executeUpdate();
        pt.close();
        rs.close();
        cn.close();
      } catch (Exception e) 
      {   i=0;
      }
      return  i;      
  }  
}

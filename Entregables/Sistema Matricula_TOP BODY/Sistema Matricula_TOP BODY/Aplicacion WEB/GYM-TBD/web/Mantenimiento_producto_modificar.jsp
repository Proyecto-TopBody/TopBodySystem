
<%@page import="java.util.*" %>
<%@page import="TOPBODY.JAVA.BEAN.*" %>
<%!
ArrayList<TB_ProductoBean> Lista=null;
%>
<%
Lista=(ArrayList<TB_ProductoBean>)request.getAttribute("LISTADO");
%>
<html><!-- InstanceBegin template="/Templates/main_adm.dwt" codeOutsideHTMLIsLocked="false" -->
    <head>
    <!-- InstanceBeginEditable name="doctitle" -->
    
    <title>Top Gym</title>
    
        <%--<script src="js/jquery-1.5.2.js" type="text/javascript"></script>
    <link rel="stylesheet" href="css/demos.css" type="text/css">
    <link rel="stylesheet" href="css/jquery.ui.all.css" type="text/css">
    <script type="text/javascript" src="js/jquery.ui.core.js"></script>
    <script type="text/javascript" src="js/jquery.ui.widget.js"></script>
    <script type="text/javascript" src="js/jquery.ui.datepicker.js"></script>--%>
    	<script>
            function buscar()
            {
                document.mod.action="<%=request.getContextPath()%>/TB_ProductoServlet";
                document.mod.method="GET";
                document.mod.op.value="7";
                document.mod.submit();
            }
            function modificar()
            {
                document.mod.action="<%=request.getContextPath()%>/TB_ProductoServlet";
                document.mod.method="GET";
                document.mod.op.value="8";
                document.mod.submit();
            }
            
        </script>
       
        
        
        
            <link rel="icon" type="image/ico" href="favicon.ico">
<link rel="stylesheet" href="css/normalize.css">
<link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.23/themes/south-street/jquery-ui.css">
<link rel="stylesheet" href="css/jquery.bookmark.css">
<link rel="stylesheet" href="css/jquery.dateentry.css">
<link rel="stylesheet" href="css/demo.css">
<style>
.ui-widget {
	font-size: 0.8em;
}
.ui-datepicker-trigger {
	margin: auto 4px auto 4px;
}
label.error {
	color: #f00;
	font-weight: bold;
}
</style>
<script src="js/modernizr-2.6.2.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.23/jquery-ui.min.js"></script>
<script src="js/jquery.bookmark.js"></script>
<script src="js/jquery.validate.js"></script>
<script src="js/jquery.ui.datepicker.validation.js"></script>
<script src="js/jquery.ui.datepicker.js"></script>
<script src="js/jquery.chili-2.2.js"></script>
<script src="js/demo.js"></script>
<script>
$(function() {
	$('#download').click(function() {
		pageTracker._trackPageview('/downloads/datepickerValidation-1.0.1');
		window.location = 'zip/jquery.ui.datepicker.validation.package-1.0.1.zip';
	});
});
</script>
        
        
        
        
        
        
        
    <!-- InstanceEndEditable 
    <link href="CSS.css" rel="stylesheet" type="text/css">-->
    <!-- InstanceBeginEditable name="head" -->
    <!-- InstanceEndEditable -->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <style type="text/css">
    body {
	background-image: url();
	background-color: #333;
}
    </style>
    <link href="CSS.css" rel="stylesheet" type="text/css">
    </head>
    <body>
    <br>
    <table width="900" border="0" align="center">
      <tr class="fondo_blanco">
        <td width="891"><img src="IMAGES/LOGO_PROV.jpg" width="351" height="100"></td>
      </tr>
      <tr>
        <td bgcolor="#000000">
        
        <ul id="nav">
            <li> <a href="Mantenimiento_empleado.jsp">PERSONAL</a> </li>
            <li> <a href="Mantenimiento_socio.jsp">SOCIOS</a> </li>
            <li> <a href="Mantenimiento_producto.jsp">PRODUCTOS</a> </li>
            <li> <a href="Mantenimiento_equipo.jsp">EQUIPOS</a> </li>
            <li> <a href="TB_AsistenciaSocio.jsp">ASISTENCIA</a> </li>
            <li><a href="Login.jsp">SALIR</a></li>
        </ul>
        
        </td>
      </tr>
      
      <tr>
        <td align="center">
        
            
            <table width="896" border="0">
            <tr>
                
                <td width="744" rowspan="2" align="center" valign="top" class="fondo_main">
                
                <table width="765" border="0" align="center">
                  <tr>
                    <td width="20">&nbsp;</td>
                    <td width="693"><!-- InstanceBeginEditable name="EditRegion1" -->
                        
                     
                     <form name="mod">
                            <input type="hidden" name="op">
                            <br>
                            <%
            if(request.getAttribute("MSN")!=null)
            {
                for(TB_ProductoBean obj:Lista)
                                                       {
            %>
            <table>
                                <tr>
                                <td>Codigo</td>
                                <td><input type="text" name="txtcodigo" value="<%=obj.getCodproducto()%>"></td>
                                </tr>
                                <tr>
                                <td>Descripcion</td>
                                <td><input type="text" name="txtdescripcion" value="<%=obj.getDescripcion()%>"></td>
                                </tr>
                                <tr>
                                <td>Precio</td>
                                <td><input type="text" name="txtprecio" value="<%=obj.getPrecio()%>"></td>
                                </tr>
                                <tr>
                                <td>Marca</td>
                                <td><input type="text" name="txtmarca" value="<%=obj.getMarca()%>"></td>
                                </tr>
                                <tr>
                                <td>Categoria</td>
                                <td><select name="txtcategoria">
                                        <option selected>-----</option>
                                        <option value="QUEMADOR">QUEMADOR</option>
                                        <option value="PROTEINA">PROTEINA</option>
                                        <option value="VITAMINA">VITAMINA</option>
                                    </select></td>
                                </tr>
                                <tr>
                            </table>      
                            <table>
                                <tr>
                                    <td><input type="button" value="Guardar" onclick="modificar();"></td>
                                </tr>
                            </table>
            <%
            }
            }
            else
            {
            %>
                        
                            <table>
                                <tr>
                                <td>Codigo</td>
                                <td><input type="text" name="txtcodigo"></td>
                                <td><input type="button" value="BUSCAR" onclick="buscar();"></td>
                                
                            
                            </table>
                        </form>
                        
                        <%
                       }
                        %>
                        
					
					<!-- InstanceEndEditable --></td>
                    <td width="20">&nbsp;</td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td width="693">&nbsp;</td>
                    <td width="20">&nbsp;</td>
                  </tr>
              	</table>
                
              </td>
              
              <td width="130" align="center" valign="top" class="fondo_negro">
			  <!-- InstanceBeginEditable name="EditRegion2" -->
			  
			  <br>
                	<ul id="nav2">
                    	<li><a href="<%=request.getContextPath()%>/TB_ProductoServlet?op=10">NUEVO</a></li>
                        <li><a href="<%=request.getContextPath()%>/TB_ProductoServlet?op=9">MODIFICAR</a></li>
                    </ul>
			  
			  <!-- InstanceEndEditable -->
              
              </td>
              
            </tr>
            <tr>
              <td align="center" valign="top" class="fondo_negro">
                <img src="IMAGES/LOGO_PROV2.png">
              </td>
            </tr>
            </table>
            
        
        </td>
      </tr>
      <tr class="down">
        <td>Top Body - todos lo derechos reservados 2014 | UTP</td>
      </tr>
    </table>
    </body>
<!-- InstanceEnd --></html>

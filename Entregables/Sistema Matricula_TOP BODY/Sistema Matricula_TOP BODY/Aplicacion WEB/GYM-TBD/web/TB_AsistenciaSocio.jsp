
<%@page import="java.util.*" %>
<%@page import="TOPBODY.JAVA.BEAN.*" %>
<%!
ArrayList<TB_SocioBean> Lista=null;
%>
<%
Lista=(ArrayList<TB_SocioBean>)request.getAttribute("LISTADO");
%>
<html><!-- InstanceBegin template="/Templates/main_adm.dwt" codeOutsideHTMLIsLocked="false" -->
    <head>
    <!-- InstanceBeginEditable name="doctitle" -->
     <%--<script src="js/jquery-1.5.2.js" type="text/javascript"></script>
    <link rel="stylesheet" href="css/demos.css" type="text/css">
    <link rel="stylesheet" href="css/jquery.ui.all.css" type="text/css">
    <script type="text/javascript" src="js/jquery.ui.core.js"></script>
    <script type="text/javascript" src="js/jquery.ui.widget.js"></script>
    <script type="text/javascript" src="js/jquery.ui.datepicker.js"></script>--%>
    
    
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
    
    
    
    
    <title>Top Gym</title>
    
    
    
    	<script>
            
            function buscar()
            {
            document.TOPBODY.action="<%=request.getContextPath()%>/TB_SocioServlet";
            document.TOPBODY.method="GET";
            document.TOPBODY.op.value="14";
            document.TOPBODY.submit();
            }
            function modificar()
            {
            document.TOPBODY.action="<%=request.getContextPath()%>/TB_SocioServlet";
            document.TOPBODY.method="GET";
            document.TOPBODY.op.value="5";
            document.TOPBODY.submit();
            }
            function regresar()
            {
            document.TOPBODY.action="<%=request.getContextPath()%>/TB_SocioServlet";
            document.TOPBODY.method="GET";
            document.TOPBODY.op.value="16";
            document.TOPBODY.submit();
            }
            function Asistir()
            {
            document.TOPBODY.action="<%=request.getContextPath()%>/TB_SocioServlet";
            document.TOPBODY.method="GET";
            document.TOPBODY.op.value="15";
            document.TOPBODY.submit();
            }
        </script> 
    
    
    <!-- InstanceEndEditable -->
    <link href="CSS.css" rel="stylesheet" type="text/css">
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
                    <br>
                    
                    <table class="texto2">
                    <tr>
                    <td><h3>Control Asistencia</h3></td>
                    </tr>
                    </table>
                    
                    <br>
                   
                    
                    <form name="TOPBODY">
                    <input type="hidden" name="op">
                    <%
                    if(request.getAttribute("MSN")!=null)
                    {
                        for(TB_SocioBean obj:Lista)
                                                       {
                    %>
                  
                    <table border="0" class="texto3" align="center">
                        <tr>
                            <td>Codigo Socio</td>
                            <td><input type="text" name="txtCodigo1"></td>
                            <td><input type="button" value="Buscar" onClick="buscar();"></td>
                        </tr> 
                        
                    </table>
                    
                    
                    
                    
                    <table border="5" class="texto3" align="center">
                        <tr>
                            <td>Codigo Socio</td>
                            <td><input type="text" name="txtCodigo" value="<%=obj.getCodsocio()%>"></td>
                        </tr> 
                        <tr>
                            <td>Nombre:</td>
                            <td><%=obj.getNombres()%></td>
                        </tr>
                        <tr>
                            <td>Apellido:</td>
                            <td><%=obj.getApellidos()%></td>
                        </tr>
                        <tr>
                           <td>Ocupacion:</td>
                           <td><%=obj.getOcupacion()%></td>
                        </tr>
                        <tr>
                            <td>Direccion:</td>
                            <td><%=obj.getDireccion()%></td>
                        </tr>
                        <tr>
                            <td>Distrito:</td>
                            <td><%=obj.getDistrito()%></td>
                        </tr>
                        <tr>
                            <td>Celular:</td>
                            <td><%=obj.getCelular()%></td>
                        </tr>
                        <tr>
                            <td>DNI:</td>
                            <td><%=obj.getDNI()%></td>
                        </tr>
                        <tr>
                            <td>Fecha de Nacimiento:</td>
                            <td><%=obj.getFecha_nacimiento()%></td>
                        </tr>
                  
                  
                  <tr>
                      <td>Estado Civil:</td>
                      <td><%=obj.getEstado_civil()%></td>
                  </tr>
                  <tr>
                      <td>Numero de Hijos:</td>
                      <td><%=obj.getNum_hijos()%></td>
                  </tr>
                  <tr>
                      <td>Correo:</td>
                      <td><%=obj.getCorreo()%></td>
                  </tr>
      	</table>
                  <table align="center">
                        <tr>
                        <td><ul id="boton"><li><a href="#" onClick="Asistir()();">Asistir</a></li></ul></td>
                        <td><ul id="boton"><li><a href="#" onClick="regresar();">Regresar</a></li></ul></td>
                        </tr>
                    </table>
                  
                  
                    <%
                                       }
                    }
                    else
                    {
                    %>
                    
                    
            			
                    <table border="0" class="texto3" align="center">
                        <tr>
                            <td>Codigo Socio</td>
                            <td><input type="text" name="txtCodigo1"></td>
                            <td><input type="button" value="Buscar" onClick="buscar();"></td>
                        </tr> 
                        
                    </table>
                    
                    <%
                    }
                    %>
                    
                   
              </form>      
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
					
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
                    	<li><a href="<%=request.getContextPath()%>/TB_SocioServlet?op=1">MATRICULA</a></li>
                        <li><a href="<%=request.getContextPath()%>/TB_SocioServlet?op=4">CAMBIO DE MENBRESIA</a></li>
                        <li><a href="<%=request.getContextPath()%>/TB_SocioServlet?op=10">LISTAR SOCIOS</a></li>
                        <li><a href="<%=request.getContextPath()%>/TB_SocioServlet?op=7">ELIMINAR SOCIOS</a></li>
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


<%@taglib uri="http://displaytag.sf.net" prefix="display" %>

<html><!-- InstanceBegin template="/Templates/main_adm.dwt" codeOutsideHTMLIsLocked="false" -->
    <head>
    <!-- InstanceBeginEditable name="doctitle" -->
    <title>Top Gym</title>
    
    
    <script>
            function regresar()
            {
            document.UNFV.action="<%=request.getContextPath()%>/TB_EmpleadoServlet";
            document.UNFV.method="get";
            document.UNFV.op.value="11";
            document.UNFV.submit();
            
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
                        <td><h3>LISTA DE EMPLEADOS</h3></td>
                        </tr>
                        </table>
                        <br>
                        <form name="UNFV">
                        <input type="hidden" name="op">
            <table border="1">
                <tr>
                    <td>
          <div align="center">
          <%--AQUI SE  COLOCA  EL DISPLAYTAG --%>
          <display:table name="${sessionScope.empleados}" pagesize="10"  export="true"  class="100">
          <div align="center">
            <display:column property="codempleado"  title="codigo" sortable="true"/>
            <display:column property="nombres"  title="Nombres" sortable="true"/>
            <display:column property="apellidos"  title="Apellidos" sortable="true"/>	
            <display:column property="cargo"  title="Cargo" sortable="true"/>				
            <display:column property="direccion"  title="Direccion" sortable="true"/>
            <display:column property="distrito"  title="Distrito" sortable="true"/>
            <display:column property="DNI"  title="DNI" sortable="true"/>
            <display:column property="fecha_nacimiento"  title="Fecha_nacimiento" sortable="true"/>
            <display:column property="sexo"  title="Sexo" sortable="true"/>
            <display:column property="estado_civil"  title="Estado_civil" sortable="true"/>
            <display:column property="sueldo"  title="sueldo" sortable="true"/>
           </div>
        </display:table>
        </div>
                
          <%--AQUI TERMINA EL  DISPLAYTAG --%>
                    </td>
                </tr>
            </table>
            <table align="center">
                <tr>
                    <td>
                        <ul id="boton"><li><a href="#" onClick="regresar();">REGRESAR</a></li></ul>
                    </td>
                </tr>
            </table>
            
            
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
                    	<li><a href="<%=request.getContextPath()%>/TB_EmpleadoServlet?op=1">NUEVO</a></li>
                        <li><a href="<%=request.getContextPath()%>/TB_EmpleadoServlet?op=4">MODIFICAR</a></li>
                        <li><a href="<%=request.getContextPath()%>/TB_EmpleadoServlet?op=10">LISTA DE EMPLEADOS</a></li>
                        <li><a href="<%=request.getContextPath()%>/TB_EmpleadoServlet?op=7">ELIMINAR EMPLEADO</a></li>
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

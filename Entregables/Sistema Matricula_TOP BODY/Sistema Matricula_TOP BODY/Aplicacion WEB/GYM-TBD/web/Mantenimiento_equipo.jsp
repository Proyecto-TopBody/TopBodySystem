
<%@page import="java.util.*" %>
<%@page import="TOPBODY.JAVA.BEAN.*" %>

<%!
    ArrayList<TB_EquipoBean> Lista;
%>
<%
Lista=(ArrayList<TB_EquipoBean>)request.getAttribute("LISTA");
%>
<html><!-- InstanceBegin template="/Templates/main_adm.dwt" codeOutsideHTMLIsLocked="false" -->
    <head>
    <!-- InstanceBeginEditable name="doctitle" -->
    <title>Top Gym</title>
    <script>
    function Buscar()
            {
            document.TOPBODY.action="<%=request.getContextPath()%>/TB_EquipoServlet";
            document.TOPBODY.method="GET";
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
					<br><br><br>
                    <center>
                        <form name="TOPBODY">
                        <table>
                            <tr>
                                <td>Buscar</td>
                            </tr>
                            <tr>
                                <td><input type="radio" name="re" value="Brazos">Brazos</td>
                                <td><input type="radio" name="re" value="Pierna">Piernas</td>
                                <td><input type="radio" name="re" value="Abdomen">Abdomen</td>
                                <td><input type="radio" name="re" value="Pantorrilla">Pantorrilla</td>
                                <td><input type="radio" name="re" value="Gluteos">Gluteos</td>
                                <td><input type="radio" name="re" value="Pecho">Pecho</td>
                                <td><input type="radio" name="re" value="Hombro">Hombro</td>
                                <td><input type="radio" name="re" value="Espalda">Espalda</td>
                            </tr>
                        </table>
                            <table>
                                <tr>
                                    <td><input type="button" value="Buscar" onClick="Buscar();"></td>
                                </tr>
                            </table>
                            <% if (request.getAttribute("LISTA")!=null)
                        {
                        Lista=(ArrayList<TB_EquipoBean>)request.getAttribute("LISTA");
                            %>    
                            
                            
                            
            <table border="2">
                <tr>
                    <td>CODIGO</td>
                    <td>DESCRIPCION</td>
                    <td>CATEGORIA</td>
                </tr>
                <% for(TB_EquipoBean obj:Lista){%>
                <tr>
                    <td><%=obj.getCodequipo()%></td>
                    <td><%=obj.getDescripcion()%></td>
                    <td><%=obj.getCategoria()%></td>
                </tr>
                <tr>
                    <td colspan="4"><img src="<%=obj.getImagen()%>" width="500" height="300"></td>
                </tr>
                <%}%>
                </table>
            <%}%>
                        
                        </form>
                    </center>
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

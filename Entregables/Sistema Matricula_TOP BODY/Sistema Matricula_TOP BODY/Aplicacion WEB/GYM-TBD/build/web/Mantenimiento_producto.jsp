
<%@page import="java.util.*" %>
<%@page import="TOPBODY.JAVA.BEAN.*" %>

<%!
    ArrayList<TB_ProductoBean> Lista;
%>

<%!
    ArrayList<TB_ProductoBean> Lista2;
%>

<%!
    ArrayList<TB_ProductoBean> Lista3;
%>

<%!
    String opp=null;
%>
<%
    if(request.getAttribute("mensajecbo")!=null);
    {
        opp=(String)request.getAttribute("mensajecbo");
    }
%>

<html><!-- InstanceBegin template="/Templates/main_adm.dwt" codeOutsideHTMLIsLocked="false" -->
    <head>
    <!-- InstanceBeginEditable name="doctitle" -->
    <title>Top Gym</title>
    <script>
    function BuscarMarca()
            {
            document.TOPBODY.action="<%=request.getContextPath()%>/TB_ProductoServlet";
            document.TOPBODY.method="GET";
            document.TOPBODY.op.value="1";
            document.TOPBODY.submit();
            }
        function BuscarNombre()
            {
            document.TOPBODY.action="<%=request.getContextPath()%>/TB_ProductoServlet";
            document.TOPBODY.method="GET";
            document.TOPBODY.op.value="2";
            document.TOPBODY.submit();
            }
        function seleccionar()
            {
            document.TOPBODY.action="<%=request.getContextPath()%>/TB_ProductoServlet";
            document.TOPBODY.method="GET";
            document.TOPBODY.op.value="0";
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
                            <input type="hidden" name="op">
                        <table>
                            <tr>
                                <td>Buscar</td>
                                <td><select name="opp" onChange="seleccionar();">
                                        
                            <%if(opp!=null){%>
                            <option value="<%=(String)request.getAttribute("mensajecbo")%>" selected><%=(String)request.getAttribute("mensajecbo")%></option>
                            <option value="----">---------------</option>
                            
                                <% if(opp.equals("Categoria")){%>
                                <option value="Marca">Marca</option>
                                <option value="Nombre">Nombre</option>
                                <%}%>
                                
                                <% if(opp.equals("Marca")){%>
                                <option value="Categoria">Categoria</option>
                                <option value="Nombre">Nombre</option>
                                <%}%>
                                
                                <% if(opp.equals("Nombre")){%>
                                <option value="Categoria">Categoria</option>
                                <option value="Marca">Marca</option>
                                <%}%>
                                
                                <% if(opp.equals("----")){%>
                                <option value="Categoria">Categoria</option>
                                <option value="Marca">Marca</option>
                                <option value="Nombre">Nombre</option>
                                <%}%>
                            <%}else{%>
                                <option value="----" selected>---------------</option>
                                <option value="Categoria">Categoria</option>
                                <option value="Marca">Marca</option>
                                <option value="Nombre">Nombre</option>
                            <%}%>
                        </select></td>
                            </tr>
                        </table>
                        <%
                if(opp!=null){
            %>
            
            <%
                if(opp.equals("Categoria")){
            %>
            <br><br><br>
            
            
            <table bgcolor="white">
                <tr>
                    <td>Proteinas</td>
                    <td>Vitaminas</td>
                    <td>Quemadores</td>
                </tr>
                <tr>
                    <td><a href="<%=request.getContextPath()%>/TB_ProductoServlet?op=3"><img src="IMAGES/productos/Proteinas/proteinas.jpg" width="100" height="100"></a></td>
                    <td><a href="<%=request.getContextPath()%>/TB_ProductoServlet?op=4"><img src="IMAGES/productos/Vitaminas/vitaminas.jpg" width="100" height="100"></a></td>
                    <td><a href="<%=request.getContextPath()%>/TB_ProductoServlet?op=5"><img src="IMAGES/productos/Quemadores/quemadores.jpg" width="100" height="100"></a></td>
                </tr>
            </table>
                
              <%}
            %>
                        
            
            <%
                if(opp.equals("Marca")){
            %>
            <table bgcolor="green">
                <tr>
                    <td>Nombre de la Marca</td>
                    <td><input type="text" name="txtmarca"></td>
                </tr>
            </table>
            <table>
                <tr>
                    <td><input type="button" value="Buscar" onClick="BuscarMarca();"></td>
                </tr>
            </table>
            
            <%}
            %>
            
            <%
                if(opp.equals("Nombre")){
            %>
            <table bgcolor="red">
                <tr>
                    <td>Ingrese el Nombre</td>
                    <td><input type="text" name="txtNombre"></td>
                </tr>
            </table>
            <table>
                <tr>
                    <td><input type="button" value="Buscar" onClick="BuscarNombre();" ><td>
                </tr>
            </table>
            <%}
            %>
            
            <%
                if(opp.equals("----")){
            %>
            No hay Nada
            <%}
            %>
            
            <%}
            %>
            
            
            
            
            
                        <% if (request.getAttribute("LISTA")!=null)
                        {
                        Lista=(ArrayList<TB_ProductoBean>)request.getAttribute("LISTA");
                            %>    
                            
                            <table bgcolor="green">
                <tr>
                    <td>Nombre de la Marca</td>
                    <td><input type="text" name="txtmarca"></td>
                </tr>
            </table>
            <table>
                <tr>
                    <td><input type="button" value="Buscar" onClick="BuscarMarca();"></td>
                </tr>
            </table>
                            
            <table border="2">
                <tr>
                    <td>CODIGO</td>
                    <td>DESCRIPCION</td>
                    <td>PRECIO</td>
                    <td>MARCA</td>
                    <td>CATEGORIA</td>
                    <td>PRODUCTO</td>
                </tr>
                <% for(TB_ProductoBean obj:Lista){%>
                <tr>
                    <td><%=obj.getCodproducto()%></td>
                    <td><%=obj.getDescripcion()%></td>
                    <td><%=obj.getPrecio()%></td>
                    <td><%=obj.getMarca()%></td>
                    <td><%=obj.getCategoria()%></td>
                    <td><img src="<%=obj.getImagen()%>" width="150" height="150"></td>
                </tr>
                <%}%>
            </table>
            <%}%>
            
            
            <%
                            
                            if (request.getAttribute("LISTA2")!=null)
                        {
                        Lista2=(ArrayList<TB_ProductoBean>)request.getAttribute("LISTA2");
                            %>    
                            <input type="hidden" name="opp" value="----">
                            <table bgcolor="red">
                <tr>
                    <td>Ingrese la Nombre</td>
                    <td><input type="text" name="txtNombre"></td>
                </tr>
            </table>
            <table>
                <tr>
                    <td><input type="button" value="Buscar" onClick="BuscarNombre();"></td>
                </tr>
            </table>
                            
            <table border="2">
                <tr>
                    <td>CODIGO</td>
                    <td>DESCRIPCION</td>
                    <td>PRECIO</td>
                    <td>MARCA</td>
                    <td>CATEGORIA</td>
                    <td>PRODUCTO</td>
                </tr>
                <% for(TB_ProductoBean obj:Lista2){%>
                <tr>
                    <td><%=obj.getCodproducto()%></td>
                    <td><%=obj.getDescripcion()%></td>
                    <td><%=obj.getPrecio()%></td>
                    <td><%=obj.getMarca()%></td>
                    <td><%=obj.getCategoria()%></td>
                    <td><img src="<%=obj.getImagen()%>" width="150" height="150"></td>
                </tr>
                <%}%>
            </table>
            <%}%>
            
            
            
            
            
            
            
            
            <%
                            
                            if (request.getAttribute("LISTA3")!=null)
                        {
                        Lista3=(ArrayList<TB_ProductoBean>)request.getAttribute("LISTA3");
                            %>    
                            <input type="hidden" name="opp">
                            
                            
                            
                            
            <table bgcolor="white">
                <tr>
                    <td>Proteinas</td>
                    <td>Vitaminas</td>
                    <td>Quemadores</td>
                </tr>
                <tr>
                    <td><a href="<%=request.getContextPath()%>/TB_ProductoServlet?op=3"><img src="IMAGES/productos/Proteinas/proteinas.jpg" width="100" height="100"></a></td>
                    <td><a href="<%=request.getContextPath()%>/TB_ProductoServlet?op=4"><img src="IMAGES/productos/Vitaminas/vitaminas.jpg" width="100" height="100"></a></td>
                    <td><a href="<%=request.getContextPath()%>/TB_ProductoServlet?op=5"><img src="IMAGES/productos/Quemadores/quemadores.jpg" width="100" height="100"></a></td>
                </tr>
            </table>
                            
                            
                            
                            
            <table border="2">
                <tr>
                    <td>CODIGO</td>
                    <td>DESCRIPCION</td>
                    <td>PRECIO</td>
                    <td>MARCA</td>
                    <td>CATEGORIA</td>
                    <td>PRODUCTO</td>
                </tr>
                <% for(TB_ProductoBean obj:Lista3){%>
                <tr>
                    <td><%=obj.getCodproducto()%></td>
                    <td><%=obj.getDescripcion()%></td>
                    <td><%=obj.getPrecio()%></td>
                    <td><%=obj.getMarca()%></td>
                    <td><%=obj.getCategoria()%></td>
                    <td><img src="<%=obj.getImagen()%>" width="150" height="150"></td>
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


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
            document.TOPBODY.op.value="12";
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
            document.TOPBODY.op.value="6";
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
                    <td><h3>MODIFICAR SOCIO</h3></td>
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
                            <td><input type="text" name="txtCodigo"  value="<%=obj.getCodsocio()%>"></td>
                        </tr> 
                        <tr>
                            <td>Nombre:</td>
                            <td><input type="text" name="txtNombre" value="<%=obj.getNombres()%>"></td>
                        </tr>
                        <tr>
                            <td>Apellido:</td>
                            <td><input type="text" name="txtApellido" value="<%=obj.getApellidos()%>"></td>
                        </tr>
                        <tr>
                           <td>Ocupacion:</td>
                           <td><input type="text" name="txtOcupacion" value="<%=obj.getOcupacion()%>"></td>
                        </tr>
                        <tr>
                            <td>Direccion:</td>
                            <td><input type="text" name="txtDireccion" value="<%=obj.getDireccion()%>"></td>
                        </tr>
                        <tr>
                            <td>Distrito:</td>
                            <td><input type="text" name="txtDistrito" value="<%=obj.getDistrito()%>"></td>
                        </tr>
                        <tr>
                            <td>Telefono:</td>
                            <td><input type="text" name="txtTelefono" value="<%=obj.getTelf_fijo()%>"></td>
                        </tr>
                        <tr>
                            <td>Celular:</td>
                            <td><input type="text" name="txtCelular" value="<%=obj.getCelular()%>"></td>
                        </tr>
                        <tr>
                            <td>DNI:</td>
                            <td><input type="text" name="txtDni" value="<%=obj.getClave()%>"></td>
                        </tr>
                  <tr>
                      <td>
                            <p><span class="demoLabel">Fecha de Nacimiento:</span></p>
                        </td>
                        <td>
                            <input type="text" size="10" name="validDefaultDatepicker" id="validDefaultDatepicker">
                            <script>$('#validDefaultDatepicker').datepicker();</script>
                        </td>
                  </tr>
                  <tr>
                      <td>Sexo:</td>
                      <td><input type="radio" name="rdSexo" value="M">Masculino<br>
                          <input type="radio" name="rdSexo" value="F">Femenino</td>
                  </tr>
                  <tr>
                      <td>Estado Civil:</td>
                      <td><select name="txtEstadoCivil">
                              <option value="" selected="">--------</option>
                              <option value="Soltero">Soltero(a)</option>
                              <option value="Casado">Casado(a)</option>
                              <option value="Viudo">Viudo(a)</option>
                              <option value="Divorciado">Divorciado(a)</option>
                          </select></td>
                  </tr>
                  <tr>
                      <td>Numero de Hijos:</td>
                      <td><select name="txtNumeroHijos">
                            <option value="0" selected>0</option>
                            <%for(int i=1;i<15;i++){%>
                            <option value="<%=i%>"><%=i%></option>
                            <%}%>
                        </select></td>
                  </tr>
                  <tr>
                      <td>Correo:</td>
                      <td><input type="text" name="txtCorreo" value="<%=obj.getCorreo()%>"></td>
                  </tr>
                  <tr>
                      <td>Periodo:</td>
                      <td>
                          <select name="txtPeriodo">
                              <option value="" selected="">---</option>
                              <option value="1 Mes">1 Mes</option>
                              <option value="3 Meses">3 Meses</option>
                              <option value="6 Meses">6 Meses</option>
                              <option value="9 Meses">9 Meses</option>
                              <option value="12 Meses">1 Ano</option>
                          </select>
                      </td>
                  </tr>
                   <tr>
                        	<td class="texto3">
                            <p><span class="demoLabel">Fecha inicio</span>:</p>
                            </td>
                            <td>
                            <input type="text" size="10" name="validBeforeDatepicker" id="validBeforeDatepicker" value="">
                            </td>
                    </tr>
                    <tr>
                    		<td class="texto3"> <p><span class="demoLabel">Fecha fin</span>:</p>
                            </td>
                            <td>
                            <input type="text" size="10" name="validAfterDatepicker" id="validAfterDatepicker">
                            <script>$('#validBeforeDatepicker,#validAfterDatepicker').datepicker();</script>
                            </td>
                    </tr>
                  <tr>
                      <td>Importe</td>
                      <td><input type="text" name="txtImporte" value="<%=obj.getImporte()%>"></td>
                  </tr>
                  <tr>
                      <td>Usuario</td>
                      <td><input type="text" name="txtUsuario" value="<%=obj.getUsuario()%>"></td>
                  </tr>
                  
                  <tr>
                      <td>Clave</td>
                      <td><input type="text" name="txtClave" value="<%=obj.getClave()%>"></td>
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
                            <td><input type="text" name="txtCodigo"></td>
                            <td><input type="button" value="BUSCAR" onClick="buscar();"></td>
                        </tr> 
                        <%--<tr>
                            <td>Nombre:</td>
                    <td><input type="text" name="txtNombre"></td>
                  </tr>
                  <tr>
                    <td>Apellido:</td>
                    <td><input type="text" name="txtApellido"></td>
                  </tr>
                  <tr>
                      <td>Ocupacion:</td>
                      <td><input type="text" name="txtOcupacion"></td>
                  </tr>
                  <tr>
                      <td>Direccion:</td>
                      <td><input type="text" name="txtDireccion"></td>
                  </tr>
                  <tr>
                      <td>Distrito:</td>
                      <td><input type="text" name="txtDistrito"></td>
                  </tr>
                  <tr>
                      <td>Telefono:</td>
                      <td><input type="text" name="txtTelefono"></td>
                  </tr>
                  <tr>
                      <td>Celular:</td>
                      <td><input type="text" name="txtCelular"></td>
                  </tr>
                  <tr>
                      <td>DNI:</td>
                      <td><input type="text" name="txtDni"></td>
                  </tr>
                  <tr>
                      <td>
                            <p><span class="demoLabel">Fecha de Nacimiento:</span></p>
                        </td>
                        <td>
                            <input type="text" size="10" name="validDefaultDatepicker" id="validDefaultDatepicker">
                            <script>$('#validDefaultDatepicker').datepicker();</script>
                        </td>
                  </tr>
                  <tr>
                      <td>Sexo:</td>
                      <td><input type="radio" name="rdSexo" value="M">Masculino<br>
                          <input type="radio" name="rdSexo" value="F">Femenino</td>
                  </tr>
                 <tr>
                      <td>Estado Civil:</td>
                      <td><select name="txtEstadoCivil">
                              <option value="" selected="">--------</option>
                              <option value="Soltero">Soltero(a)</option>
                              <option value="Casado">Casado(a)</option>
                              <option value="Viudo">Viudo(a)</option>
                              <option value="Divorciado">Divorciado(a)</option>
                          </select></td>
                  </tr>
                  <tr>
                      <td>Numero de Hijos:</td>
                      <td><select name="txtNumeroHijos">
                            <option value="0" selected>0</option>
                            <%for(int i=1;i<15;i++){%>
                            <option value="<%=i%>"><%=i%></option>
                            <%}%>
                        </select></td>
                  </tr>
                  <tr>
                      <td>Correo:</td>
                      <td><input type="text" name="txtCorreo"></td>
                  </tr>
                  <tr>
                      <td>Periodo:</td>
                      <td>
                          <select name="txtPeriodo">
                              <option value="" selected="">---</option>
                              <option value="1 Mes">1 Mes</option>
                              <option value="3 Meses">3 Meses</option>
                              <option value="6 Meses">6 Meses</option>
                              <option value="9 Meses">9 Meses</option>
                              <option value="12 Meses">1 A�o</option>
                          </select>
                      </td>
                  </tr>
                   <tr>
                        	<td class="texto3">
                            <p><span class="demoLabel">Fecha inicio</span>:</p>
                            </td>
                            <td>
                            <input type="text" size="10" name="validBeforeDatepicker" id="validBeforeDatepicker">
                            </td>
                    </tr>
                    <tr>
                    		<td class="texto3"> <p><span class="demoLabel">Fecha fin</span>:</p>
                            </td>
                            <td>
                            <input type="text" size="10" name="validAfterDatepicker" id="validAfterDatepicker">
                            <script>$('#validBeforeDatepicker,#validAfterDatepicker').datepicker();</script>
                            </td>
                    </tr>
                  <tr>
                      <td>Importe</td>
                      <td><input type="text" name="txtImporte"></td>
                  </tr>
                  <tr>
                      <td>Usuario</td>
                      <td><input type="text" name="txtUsuario"></td>
                  </tr>
                  
                  <tr>
                      <td>Clave</td>
                      <td><input type="text" name="txtClave"></td>
                  </tr>--%>
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

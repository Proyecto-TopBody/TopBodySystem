

<html><!-- InstanceBegin template="/Templates/main_socio.dwt" codeOutsideHTMLIsLocked="false" -->
    <head>
    <!-- InstanceBeginEditable name="doctitle" -->
    <title>Top Gym</title>
    
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
    
    <!-- InstanceEndEditable<script type="text/javascript" src="jquery.js"></script>
        <script type="text/javascript" src="jquery.validate.js"></script> 
        
        <script type="text/javascript">
            $(document).ready(function(){
                
                $("#boton").click(function(){
                    $("#commentForm").validate();
                    });
            });
        </script> -->
    
        
   <%-- <script src="js/jquery-1.5.2.js" type="text/javascript"></script>
    <link rel="stylesheet" href="css/demos.css" type="text/css">
    <link rel="stylesheet" href="css/jquery.ui.all.css" type="text/css">
    <script type="text/javascript" src="js/jquery.ui.core.js"></script>
    <script type="text/javascript" src="js/jquery.ui.widget.js"></script>
    <script type="text/javascript" src="js/jquery.ui.datepicker.js"></script> 
    --%>
    
    
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

<script src="js/jquery.ui.datepicker.js"></script>

<script src="js/jquery.ui.datepicker.validation.js"></script>
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
        	<li> <a href="#">PROMOCIONES</a> </li>
        	<li> <a href="TB_VerAsistenciaSocio.jsp">ASISTENCIAS</a> </li>
            <li> <a href="Rutina.jsp">RUTINA</a> </li>
            <li> <a href="TB_Alimentacion.jsp">ALIMENTACION</a> </li>
            <li> <a href="TB_FreezingSocio.jsp">FREEZING</a> </li>
            <li> <a href="TB_CitaMedicaSocio.jsp">CITA MEDICA</a> </li>
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
                        <%--<form class="validateForm" method="GET" action="<%=request.getContextPath()%>/TB_FreezingServlet?op=Enviar">--%>
                  <form id="validateForm" class="validateForm"  method="GET" action="<%=request.getContextPath()%>/TB_FreezingServlet?op=Enviar">
<pre><code class="jsdemo"><script>$('#validateForm').validate({
	errorPlacement: $.datepicker.errorPlacement,
	rules: {
		validDefaultDatepicker: {
			required: true,
			dpDate: true
		},
		validBeforeDatepicker: {
			dpCompareDate: ['before', '#validAfterDatepicker']
		},
		validAfterDatepicker: {
			dpCompareDate: {after: '#validBeforeDatepicker'}
		},
		validTodayDatepicker: {
			dpCompareDate: 'ne today'
		},
		validSpecificDatepicker: {
			dpCompareDate: 'notBefore 01/01/2012'
		}
	},
	messages: {
		validFormatDatepicker: 'Please enter a valid date (yyyy-mm-dd)',
		validRangeDatepicker: 'Please enter a valid date range',
		validMultiDatepicker: 'Please enter at most three valid dates',
		validAfterDatepicker: 'Por favor ingrese una fecha despues de la inicial'
	}});
            </script></code></pre>  
                  <center>
                    <h3>Solicitud de Freezing</h3>
                    <table width="500">
                    <tr>
                        <td class="texto3">Codigo:</td>
                        <td><input id="ccodigo" name="txtcodigo" class="required"></td>
                    </tr>
                    <tr>
                        <td class="texto3">Nombre:</td>
                        <td><input id="cnombre" type="text" name="txtnombre" class="required"></td>
                    </tr>
                    <tr>
                        <td class="texto3">Correo:</td>
                        <td><input id="ccorreo" type="text" name="txtcorreo" class="required email"></td>
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
                        <td class="texto3">Comentario:</td>
                        <td><textarea id="ccomentario" name="txtcomentario" cols="30" rows="10" class="required"></textarea></td>
                    </tr>
                </table>
                <table>
                  <tr>
                        <td><input type="submit" name="op" value="Enviar" id="boton" class="boton"></td>
                        <%
                        if(request.getAttribute("mensaje")!=null)
                        {
                            String mensaje=(String)request.getAttribute("mensaje");
                            out.print(mensaje);
                        }                           
                        %>
                    </tr>
                </table>
                </center>
		</form><!-- InstanceEndEditable --></td>
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

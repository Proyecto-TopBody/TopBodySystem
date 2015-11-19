<%@page import="java.util.Date" %>
<%@page  import="java.text.SimpleDateFormat"%> 

<%@page import="java.util.*" %>
<%@page import="TOPBODY.JAVA.BEAN.*" %>
<%!
ArrayList<TB_SocioBean> Lista=null;
%>
<%
Lista=(ArrayList<TB_SocioBean>)request.getAttribute("LISTA");
%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Documento sin título</title>
<link href="estilofactura.css" rel="stylesheet" type="text/css" />
<script>
    function buscar()
            {
            document.TOPBODY.action="<%=request.getContextPath()%>/TB_SocioServlet";
            document.TOPBODY.method="GET";
            document.TOPBODY.op.value="13";
            document.TOPBODY.submit();
            }
            function imprimir()
            {
                window.print();
            }
</script>
</head>

<body>
 <form name="TOPBODY">
                    <input type="hidden" name="op">
                    <%
                    if(request.getAttribute("MSN")!=null)
                    {
                        for(TB_SocioBean obj:Lista)
                                                       {
                    %>   
<table width="800" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="282"><img src="IMAGES/LOGO_PROV.jpg" width="281" height="100" alt="img01" /></td>
    <td width="261" valign="top"><p class="centrar">De: Fortunata Castro Silva<br />
    Calle Luis Espejo N° 1093<br />
    La Victoria - Lima<br />
    265-1483<br />
     info@topbodyperu.com<br />
    www.topbodyperu.com
    </p></td>
    <td width="257"><table width="250" height="100" border="1" bordercolor="#000099" cellspacing="0" cellpadding="0">
      <tr>
        <td class="boleta">RUC 10074150301</td>
      </tr>
      <tr>
        <td class="boletamedio">&nbsp;BOLETA DE VENTA</td>
      </tr>
      <tr>
        <td class="boleta">002 - N° 000120</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td colspan="2" class="datos"> &nbsp;Señor(es): <%=obj.getNombres()%> <%=obj.getApellidos()%> </td>
    <td>&nbsp;<span class="datos">Fecha: <%
       SimpleDateFormat fecha= new SimpleDateFormat("dd/MM/yyyy");
       out.println(fecha.format(new Date())+" "+new Date().getHours()+":"+new Date().getMinutes()+":"+new Date().getSeconds());
       %></span></td>
  </tr>
  <tr>
    <td colspan="2">&nbsp;&nbsp;<span class="datos">Dirección: <%=obj.getDireccion()%> </span></td>
    <td>&nbsp;<span class="datos">DNI: <%=obj.getDNI()%></span></td>
  </tr>
  <tr>
    <td colspan="3"><table width="795" border="1" bordercolor="#000099" cellspacing="0" cellpadding="0">
      <tr>
        <td width="60" bgcolor="#0099FF">&nbsp;<span class="cuadro">CANT</span>.</td>
        <td width="495" bgcolor="#0099FF" class="cuadro">&nbsp;DESCRIPCIÓN</td>
        <td width="115" bgcolor="#0099FF">&nbsp;<span class="cuadro">P. UNITARIO</span></td>
        <td width="115" bgcolor="#0099FF" class="cuadro">&nbsp;IMPORTE</td>
      </tr>
      <tr>
          <td height="109">1</td>
        <td>Periodo <%=obj.getPeriodo()%></td>
        <td></td>
        <td><%=obj.getImporte()%></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td colspan="2">&nbsp;</td>
    <td>&nbsp;   &nbsp;   &nbsp;&nbsp;&nbsp;<span class="total">&nbsp;TOTAL S/.  &nbsp;&nbsp;</span>
      <label for="textfield"></label>
    <input name="textfield" type="text" class="casilla" id="textfield" size="12" value="<%=obj.getImporte()%>"/></td>
  </tr>
</table>
 <%
                }
                    }
                    else
                    {
                    %>
 <table width="800" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="282"><img src="IMAGES/LOGO_PROV.jpg" width="281" height="100" alt="img01" /></td>
    <td width="261" valign="top"><p class="centrar">De: Fortunata Castro Silva<br />
    Calle Luis Espejo N° 1093<br />
    La Victoria - Lima<br />
    265-1483<br />
     info@topbodyperu.com<br />
    www.topbodyperu.com
    </p></td>
    <td width="257"><table width="250" height="100" border="1" bordercolor="#000099" cellspacing="0" cellpadding="0">
      <tr>
        <td class="boleta">RUC 10074150301</td>
      </tr>
      <tr>
        <td class="boletamedio">&nbsp;BOLETA DE VENTA</td>
      </tr>
      <tr>
        <td class="boleta">002 - N° 000120</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td colspan="2" class="datos"> &nbsp;Señor(es): </td>
    <td>&nbsp;<span class="datos">Fecha:</span></td>
  </tr>
  <tr>
    <td colspan="2">&nbsp;&nbsp;<span class="datos">Dirección: </span></td>
    <td>&nbsp;<span class="datos">DNI: </span></td>
  </tr>
  <tr>
    <td colspan="3"><table width="795" border="1" bordercolor="#000099" cellspacing="0" cellpadding="0">
      <tr>
        <td width="60" bgcolor="#0099FF">&nbsp;<span class="cuadro">CANT</span>.</td>
        <td width="495" bgcolor="#0099FF" class="cuadro">&nbsp;DESCRIPCIÓN</td>
        <td width="115" bgcolor="#0099FF">&nbsp;<span class="cuadro">P. UNITARIO</span></td>
        <td width="115" bgcolor="#0099FF" class="cuadro">&nbsp;IMPORTE</td>
      </tr>
      <tr>
        <td height="109">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td colspan="2">&nbsp;</td>
    <td>&nbsp;   &nbsp;   &nbsp;&nbsp;&nbsp;<span class="total">&nbsp;TOTAL S/.  &nbsp;&nbsp;</span>
      <label for="textfield"></label>
    <input name="textfield" type="text" class="casilla" id="textfield" size="12" /></td>
  </tr>
     <tr>
  <td><input type="text" name="txtCodigo"></td>
  <td><input type="button" value="BUSCAR" onclick="buscar();"></td>
  <td><input type="button" value="Imprimir" onclick="imprimir();"></td>
  </tr>
</table>                   
<%
                    }
                    %>    
                    <table>
                    <tr>
                    <td><input type="button" value="Imprimir" onclick="imprimir();"></td>
  </tr>
</table> 
</form>              
</body>
</html>

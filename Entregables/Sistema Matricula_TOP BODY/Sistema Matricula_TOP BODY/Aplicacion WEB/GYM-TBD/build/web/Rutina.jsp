<%@page import="java.util.Date" %>
<%@page  import="java.text.SimpleDateFormat"%> 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rutina</title>
           <script src="js/jquery-1.5.2.js" type="text/javascript"></script>
        <link href="estilofactura.css" rel="stylesheet" type="text/css" />
 <link rel="stylesheet" href="css/jquery.ui.all.css" type="text/css">
    <script type="text/javascript" src="js/jquery.ui.core.js"></script>
    <script type="text/javascript" src="js/jquery.ui.widget.js"></script>
    
    <script type="text/javascript" src="js/jquery.ui.datepicker.js"></script>
       
    
    </head>
    <body>
        <form name="TOPBODY">
          <table width="750" border="0" cellspacing="0" cellpadding="0" bgcolor="#CCCCCC">
          <tr>
            <td width="912"><table width="750" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="281"> <img src="IMAGES/LOGO_PROV.jpg" width="281" height="100" alt="img01" /></td>
                <td width="195" valign="top"><p class="centrar">De: Fortunata Castro Silva<br />
                  Calle Luis Espejo N� 1093<br />
                  La Victoria - Lima<br />
                  265-1483<br />
                  info@topbodyperu.com<br />
                  www.topbodyperu.com </p></td>
                <td width="274"><table width="250" height="100" border="1" bordercolor="#000099" cellspacing="0" cellpadding="0">
                  <tr>
                    <td class="boleta">TOP BODY PERU</td>
                  </tr>
                  <tr>
                    <td class="boletamedio">&nbsp;RUTINA DE USUARIO</td>
                  </tr>
                  <tr>
                    <td class="boleta">No ___________</td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td colspan="2" class="datos">&nbsp;Senor(a) &nbsp;: </td>
                <td>&nbsp;<span class="datos">Fecha:</span> <span class="datos">
                  <%
       SimpleDateFormat fecha= new SimpleDateFormat("dd/MM/yyyy");
       out.println(fecha.format(new Date())+" "+new Date().getHours()+":"+new Date().getMinutes()+":"+new Date().getSeconds());
       %>
                </span></td>
              </tr>
              <tr>
                <td colspan="2">&nbsp;&nbsp;<span class="datos">Direccion&nbsp;&nbsp;: </span></td>
                <td>&nbsp;<span class="datos">DNI&nbsp;&nbsp;: </span></td>
              </tr>
              <tr>
                <td colspan="2" valign="top"><span class="datos">&nbsp;Diario &nbsp;&nbsp;&nbsp;&nbsp;: </span>&nbsp;&nbsp;
                  <label for="checkbox"></label>
                  &nbsp;&nbsp;&nbsp;&nbsp;
                  <input type="checkbox" name="checkbox" id="checkbox">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td><span class="datos">&nbsp;&nbsp;Fecha de Inicio :</span><span class="total">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <input type="text" name="txtFechaInicio" class="reporte_termino" id="capass2" size="13">                  &nbsp;&nbsp;&nbsp;&nbsp;
                
                    <script>
                $(function() {
		$( "#capass2" ).datepicker({ 
		 autoSize: true,
            dayNames: ['Domingo', 'Lunes', 'Martes', 'Mi?rcoles', 'Jueves', 'Viernes', 'S?bado'],
            dayNamesMin: ['Dom', 'Lu', 'Ma', 'Mi', 'Je', 'Vi', 'Sa'],
            firstDay: 1,
            monthNames: ['Enero','Febrero','Marzo','Abril','Mayo','Junio','Julio','Agosto','Septiembre','Octubre','Noviembre','Diciembre'],
            monthNamesShort: ['Ene','Feb','Mar','Abr','May','Jun','Jul','Ago','Sep','Oct','Nov','Dic'],
            dateFormat: 'yy-mm-dd',
            changeMonth: true,
            changeYear: true,
			yearRange: "-90:+0"
			
		
		});
		
		
		
	});
	</script>
                
                </td>
                
                   
                
              </tr>
              <tr>
                <td colspan="2">&nbsp;<span class="datos">Interdiario :</span>&nbsp;&nbsp;
<label for="checkbox2"></label>
                  &nbsp;&nbsp;&nbsp;
                  <input type="checkbox" name="checkbox2" id="checkbox2"></td>
                <td>&nbsp;&nbsp;<span class="datos">Fecha de Vencimiento:</span>&nbsp;&nbsp;&nbsp;
                  <input type="text" name="txtFechavencimiento" class="reporte_termino" id="capass3" size="13">                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
               <script>
                $(function() {
		$( "#capass3" ).datepicker({ 
		 autoSize: true,
            dayNames: ['Domingo', 'Lunes', 'Martes', 'Mi?rcoles', 'Jueves', 'Viernes', 'S?bado'],
            dayNamesMin: ['Dom', 'Lu', 'Ma', 'Mi', 'Je', 'Vi', 'Sa'],
            firstDay: 1,
            monthNames: ['Enero','Febrero','Marzo','Abril','Mayo','Junio','Julio','Agosto','Septiembre','Octubre','Noviembre','Diciembre'],
            monthNamesShort: ['Ene','Feb','Mar','Abr','May','Jun','Jul','Ago','Sep','Oct','Nov','Dic'],
            dateFormat: 'yy-mm-dd',
            changeMonth: true,
            changeYear: true,
			yearRange: "-90:+0"
			
		
		});
		
		
		
	});
	</script>
                </td>
</tr>
              <tr>
                <td colspan="3"><table width="740" border="1" bordercolor="#000099" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="130" rowspan="3" bgcolor="#0099FF" class="cuadro">Calentamiento</td>
                    <td align="left"  class="centrar">Eliptica</td>
                    <td width="171"  class="centrar">&nbsp;</td>
                  </tr>
                  <tr>
                    <td width="449"  class="centrar">Cinta de </td>
                    <td class="centrar" >&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="21" class="centrar">Bicicleta</td>
                    <td class="centrar">&nbsp;</td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td colspan="3">&nbsp;</td>
              </tr>
              <tr>
                <td colspan="3"><table width="740" border="1" bordercolor="#000099" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="130" rowspan="3" bgcolor="#0099FF" class="cuadro">Cintura</td>
                    <td align="left"  class="centrar">Flexiones</td>
                    <td width="170"  class="centrar">&nbsp;</td>
                  </tr>
                  <tr>
                    <td width="450"  class="centrar">Giros </td>
                    <td class="centrar" >&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="21" class="centrar">Twist</td>
                    <td class="centrar">&nbsp;</td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td colspan="3">&nbsp;</td>
              </tr>
              <tr>
                <td colspan="3"><table width="740" border="1" bordercolor="#000099" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="130" rowspan="4" bgcolor="#0099FF" class="cuadro">Abdomen</td>
                    <td align="left"  class="centrar">Elevacion de Tronco</td>
                    <td width="171"  class="centrar">&nbsp;</td>
                  </tr>
                  <tr>
                    <td width="449"  class="centrar">Crunches </td>
                    <td class="centrar" >&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="21" class="centrar">Elevacion de Piernas</td>
                    <td class="centrar">&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="21" class="centrar">Encogimiento de rodillas</td>
                    <td class="centrar">&nbsp;</td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td colspan="3">&nbsp;</td>
              </tr>
              <tr>
                <td colspan="3"><table width="740" border="1" bordercolor="#000099" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="130" rowspan="10" bgcolor="#0099FF" class="cuadro">Cuadriceps <br>
                      y<br>
                      Gluteos<br>                      
                    <br></td>
                    <td height="22" align="left"  class="centrar">Sentadillas</td>
                    <td width="171"  class="centrar">&nbsp;</td>
                  </tr>
                  <tr>
                    <td width="449"  class="centrar">Hack Squats</td>
                    <td class="centrar" >&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="21" class="centrar">Prensa</td>
                    <td class="centrar">&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="21" class="centrar">Leg extensiones</td>
                    <td class="centrar">&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="21" class="centrar">Desplantes Adelante /Posteriores</td>
                    <td class="centrar">&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="21" class="centrar">Cadera-Aductor-Abeductor</td>
                    <td class="centrar">&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="21" class="centrar">Leg Curl Femoral</td>
                    <td class="centrar">&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="21" class="centrar">Peso Muerto con Barra / Mancuerna</td>
                    <td class="centrar">&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="21" class="centrar">Maquina de Gluteos</td>
                    <td class="centrar">&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="21" class="centrar">Patadas Traseras en Banca/ Cable</td>
                    <td class="centrar">&nbsp;</td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td colspan="3">&nbsp;</td>
              </tr>
              <tr>
                <td colspan="3"><table width="740" border="1" bordercolor="#000099" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="130" rowspan="3" bgcolor="#0099FF" class="cuadro">Gemelos</td>
                    <td width="449" align="left"  class="centrar">Pantorrila en Maquinas de Pie</td>
                    <td width="171"  class="centrar">&nbsp;</td>
                  </tr>
                 
                  <tr>
                    <td height="21" class="centrar">Pantorrilla en Maquina Sentado</td>
                    <td class="centrar">&nbsp;</td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td colspan="3">&nbsp;</td>
              </tr>
              <tr>
                <td colspan="3"><table width="740" border="1" bordercolor="#000099" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="130" rowspan="7" bgcolor="#0099FF" class="cuadro">Pectoral</td>
                    <td align="left"  class="centrar">Press de Banca con Barra/Mancuerna/Maquina</td>
                    <td width="171"  class="centrar">&nbsp;</td>
                  </tr>
                  <tr>
                    <td width="449"  class="centrar">Press Inclinado con Barra/Mancuera/Máquina</td>
                    <td class="centrar" >&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="21" class="centrar">Press Declinado con Barra/Mancuerna</td>
                    <td class="centrar">&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="21" class="centrar">Cruce de Cables</td>
                    <td class="centrar">&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="21" class="centrar">Peck Deck + Planchas</td>
                    <td class="centrar">&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="21" class="centrar">Pullover con Mancuerna/Cable /Barra</td>
                    <td class="centrar">&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="21" class="centrar">Paralelas para pectoral</td>
                    <td class="centrar">&nbsp;</td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td colspan="3">&nbsp;</td>
              </tr>
              <tr>
                <td colspan="3"><table width="740" border="1" bordercolor="#000099" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="130" rowspan="7" bgcolor="#0099FF" class="cuadro">Espalda</td>
                    <td align="left"  class="centrar">Pullover con cable</td>
                    <td width="171"  class="centrar">&nbsp;</td>
                  </tr>
                  <tr>
                    <td width="449"  class="centrar">Jalon Frontal</td>
                    <td class="centrar" >&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="21" class="centrar">Remo Sentado polea/ Maquina</td>
                    <td class="centrar">&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="21" class="centrar">Remo con Barra/Mancuerna</td>
                    <td class="centrar">&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="21" class="centrar">Remo Serrucho</td>
                    <td class="centrar">&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="21" class="centrar">Dominadas Libre/ Maquina</td>
                    <td class="centrar">&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="21" class="centrar">Hiper Extensiones</td>
                    <td class="centrar">&nbsp;</td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td colspan="3">&nbsp;</td>
              </tr>
              <tr>
                <td colspan="3"><table width="740" border="1" bordercolor="#000099" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="130" rowspan="7" bgcolor="#0099FF" class="cuadro">Biceps</td>
                    <td align="left"  class="centrar">Curl con Barra recta/Zeta</td>
                    <td width="171"  class="centrar">&nbsp;</td>
                  </tr>
                  <tr>
                    <td width="449"  class="centrar">Curl Predicador con Barra</td>
                    <td class="centrar" >&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="21" class="centrar">Curl con Mancuerna Alternado</td>
                    <td class="centrar">&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="21" class="centrar">Curl Martillo con Mancuerna</td>
                    <td class="centrar">&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="21" class="centrar">Curl de Biceps en Polea</td>
                    <td class="centrar">&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="21" class="centrar">Curl Invertido con Barra/ Mancuerna/Cable</td>
                    <td class="centrar">&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="21" class="centrar">Curl Concentrado</td>
                    <td class="centrar">&nbsp;</td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td colspan="3">&nbsp;</td>
              </tr>
              <tr>
                <td colspan="3"><table width="740" border="1" bordercolor="#000099" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="130" rowspan="6" bgcolor="#0099FF" class="cuadro">Hombros</td>
                    <td align="left"  class="centrar">Press Tras Nuca con Barra</td>
                    <td width="171"  class="centrar">&nbsp;</td>
                  </tr>
                  <tr>
                    <td width="449"  class="centrar">Press Militar/Mancuerna</td>
                    <td class="centrar" >&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="21" class="centrar">Vuelos con Mancuerna</td>
                    <td class="centrar">&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="21" class="centrar">Vuelos Declinados con Mancuerno</td>
                    <td class="centrar">&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="21" class="centrar">Remo Parado con Barra /Mancuerna/Cable</td>
                    <td class="centrar">&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="21" class="centrar">Encogimiento con Mancuerna</td>
                    <td class="centrar">&nbsp;</td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td colspan="3">&nbsp;</td>
              </tr>
              <tr>
                <td colspan="3"><table width="740" border="1" bordercolor="#000099" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="130" rowspan="7" bgcolor="#0099FF" class="cuadro">Calentamiento</td>
                    <td align="left"  class="centrar">Triceps en Polea</td>
                    <td  class="centrar">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="left"  class="centrar">Invertido Polea</td>
                    <td  class="centrar">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="left"  class="centrar">Triceps con Barra</td>
                    <td  class="centrar">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="left"  class="centrar">Triceps con Mancuernas Copa</td>
                    <td  class="centrar">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="left"  class="centrar">Patadas con Mancuernas</td>
                    <td width="171"  class="centrar">&nbsp;</td>
                  </tr>
                  <tr>
                    <td width="449"  class="centrar">Press Frances con Barra/Mancuerna</td>
                    <td class="centrar" >&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="21" class="centrar">Paralelas Libres Maquina</td>
                    <td class="centrar">&nbsp;</td>
                  </tr>
                </table>
                <p>&nbsp;</p></td>
              </tr>
              <tr>
                <td colspan="3">&nbsp;Me encuentro en buen estado fisico y apto para usar el equipo de maquinas y realizar los ejercicios recomendado y cualquier<br> 
                  &nbsp;daño o accidente que sufra es mi responsabilidad.</td>
              </tr>
              <tr>
                <td colspan="3">&nbsp;</td>
              </tr>
              <tr>
                <td colspan="3">&nbsp;</td>
              </tr>
            </table></td>
          </tr>
          </table>
    </form>              
</body>
</html>


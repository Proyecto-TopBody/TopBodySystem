

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<%@page import="net.sf.jasperreports.engine.*" %>
<%@page import="java.util.*" %>
<%@page import="java.io.*" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>

<html>
    <body>
<%
    
Connection conexion;
Class.forName("com.mysql.jdbc.Driver").newInstance();
conexion=DriverManager.getConnection("jdbc:mysql://localhost/TOPBODY", "root", "");

File reportfile = new File(application.getRealPath("Reporte//.jasper"));

byte[] bytes = JasperRunManager.runReportToPdf(reportfile.getPath(), new HashMap(), 
        conexion);

response.setContentType("application/pdf");
response.setContentLength(bytes.length);
ServletOutputStream outputStream = response.getOutputStream();
outputStream.write(bytes, 0, bytes.length);

outputStream.flush();
outputStream.close();
    

%>
    </body>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>::BOLETA::</title>
    </head>
</html>

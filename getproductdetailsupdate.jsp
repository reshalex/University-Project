<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@page import="Classes.DBConnection"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%
String s1=request.getParameter("pname");
%>
  <meta name="description" content="">
  <meta name="keywords" content="">
  <meta http-equiv="Content-Type"
 content="text/html; charset=iso-8859-1">
  <link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="main">
<div class="page">
<div class="header">
<div class="header-img">
 </div>
<div class="menu">
<ul>
  </ul>
</div>
</div>
<div class="content">
<div class="left-panel">
<div class="left-panel-in">
<p>&nbsp;</p>
<form name='form1' method="post" action="Download">
<blink>
<font size="4" color=black>
    <%@page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<%
	int i=0;
 	String s5=null;
    try
    {
    	DBConnection dbcon=new DBConnection();
		Statement st=dbcon.JDBC_ODBC();
      
       
       ResultSet rs=st.executeQuery(" select * from productinfo where productname='"+s1+"'");
        
       

%>
 <table color="blue" border=2 cellpadding=2 cellspacing=2>
<center>
<th><tr>

<td><font color="red">ProductName</font></td>
 <td><font color="red">Quantity</font></td>
   <td><font color="red">Price</font></td>
   </font>
 </tr>
</th>

<% while(rs.next())
{

	%>	
	<tr>
	<td><font color="red"><%=rs.getString(1)%></font></td><td><font color="red"><%=rs.getInt(2)%></font></td><td><font color="red"><%=rs.getInt(4)%></font></td>
	
	</tr>
	
 <%
       
}
}
catch(SQLException ex)
{
ex.printStackTrace();
} %></tr>
</font>
</table>
</form>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</div>
</div>
</div>
<div class="footer">
</div>
</div>
</div>
</body>
</html>

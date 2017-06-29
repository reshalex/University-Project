<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome to Shopping</title>
<meta name="keywords" content="css templates, fortune website, CSS, HTML" />
<meta name="description" content="Fortune Template is a free css template from templatemo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
</head>
<body>

<div id="templatemo_header_wrapper">
    <div id="templatemo_header_panel">
        <div id="templatemo_header">
	       E-SHOPPING
        </div>
        <div id="templatemo_tagline">
	       Personalized Product Purchase
        </div>
    </div>
</div>
<div id="templatemo_banner_wrapper">
    <div id="templatemo_banner_panel">
    </div>
</div>
<div id="templatemo_menu_wrapper">
    <div id="templatemo_menu_panel">
        <ul>
            <li><a href="adminmenu.jsp" class="current">Back</a></li>
        </ul> 
    </div>
    <form>
				<blink>
<%@page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<%@ page import="Classes.*" %>
<%
     try
    {
        DBConnection dbcon=new DBConnection();
        Statement st=dbcon.JDBC_ODBC();
      ResultSet rs=st.executeQuery(" select * from productinfo");
  %>
 

</form> 
</div> <!-- end of menu -->
<div id="templatemo_content_wrapper">

<div id="templatemo_content_panel" align="center">
<table color="red" border=3 cellpadding=2 cellspacing=2>
<center>
<th><tr>
<td>ProductName</td>
 <td>Availability</td>
 <td>Specification</td>
 <td>Price</td>
 <td>Category</td>
  </tr>
</th>
<% while(rs.next())
{

	%>	
	<tr>
	<td><%=rs.getString(1)%></td><td><%=rs.getInt(2)%></td><td><%=rs.getString(3)%></td><td><%=rs.getInt(4)%></td><td><%=rs.getString(5)%></td>
	</tr>
<%
}
}
catch(SQLException ex)
{
ex.printStackTrace();
} %></tr>

</table>
<div class="content_panel_3col_section margin_right_60">
 <div class="header_01"></div>
 </div>
 <div>    
    </div> 
    </div>
    <div class="content_panel_3col_section">
        <div class="header_01"></div>
        <div class="margin_bottom_30"></div>
    <div class="margin_bottom_30"></div>
    <div class="margin_bottom_20"></div>
</div> <!-- end of content panel -->
</div> <!-- end of content wrapper -->
<div id="templatemo_footer_wrapper">
<div id="templatemo_footer_panel">
   
    <div class="margin_bottom_20"></div>
</div> <!-- end of footer panel -->
</div> <!-- end of footer wrapper-->
</html>
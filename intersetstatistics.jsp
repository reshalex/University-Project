<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%
String s1=request.getParameter("msg");
String interest=session.getAttribute("interest").toString();
String ptypeSession = session.getAttribute("ptype").toString();
%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome to Shopping</title>
<meta name="keywords" content="css templates, fortune website, CSS, HTML" />
<meta name="description" content="Fortune Template is a free css template from templatemo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<script language='javascript'>

 function checkNull() {
	 v4=document.getElementById("pname").value;
	 
	 sflag=true;
	 if(v4.length<=0) 
	 {
	 window.alert("Please Enter all the Details!!");
	 sflag=false;
	 } 
	              }
 
 

</script>
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
            <li><a href="purchasehome.jsp" class="current">Back</a></li>
        </ul> 
    </div>
    <form name="form1" method="post" action="Statistics">
     <%@page import="java.sql.*" %>
       <%@page import="Classes.*" %>
<%@ page import="java.io.*" %> 
<%
    try
    {
    	String query = "select productname from productinfo";
    	if(ptypeSession.equals("Interest")){
    		query = "select productname from productinfo where specify='"+interest+"'";
    	}
    
        DBConnection dbcon=new DBConnection();
        Statement st=dbcon.JDBC_ODBC();
       ResultSet rs=st.executeQuery(query);    
%>
<blink>
<font size="4" color=blue><%  
if(s1!=null) 
{%>
   <center><b><%=s1%></b></center>
  <%
  }%>
    <center></font>  </blink>
<center>  
			<center>  
<table>
<tr><td><div align="center">Type</td><td><select name="rtype">
<option>Normal</option>
<option>Related</option>
</select></input></div></td></tr>
<tr><td><div align="center">Product</td><td><select id="pname" name="pname"'>

<% while(rs.next())
{
	%>
	
	<option><%=rs.getString(1) %>
	<%} %></option>
	</select></input></div></td></tr>
	
	
<div align="center"><tr>
<td><input type="submit"  value="Submit"></input></td>
<td><input type="reset" value="Reset"></input></td>
</tr></div>
</table>
</center>

</form> 
</div> <!-- end of menu -->
<div id="templatemo_content_wrapper">

<div id="templatemo_content_panel" align="right">
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
<%       
rs.close();
st.close();
}
catch(SQLException ex)
{
ex.printStackTrace();
}%>
   
    <div class="margin_bottom_20"></div>
</div> <!-- end of footer panel -->
</div> <!-- end of footer wrapper-->
</html>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome to Shopping</title>
<meta name="keywords" content="css templates, fortune website, CSS, HTML" />
<meta name="description" content="Fortune Template is a free css template from templatemo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<script language='javascript'>

function pcountCheck() {
	v20=document.form1.pcount.value;
	if(isNaN(v20))
	{
	window.alert("Count should be Numeric");
	document.form1.pcount.focus();
	}
	}
function pprofitCheck() {
	v20=document.form1.pprofit.value;
	if(isNaN(v20))
	{
	window.alert("Profit should be Numeric");
	document.form1.pprofit.focus();
	}
	}
function pprofitCheck() {
	v20=document.form1.pprice.value;
	if(isNaN(v20))
	{
	window.alert("Price should be Numeric");
	document.form1.pprice.focus();
	}
	}
 function checkNull() {
v4=document.form1.pname.value;
v5=document.form1.pcount.value;
v6=document.form1.pprofit.value;
v7=document.form1.categery.value;

sflag=true;
if(v4.length<=0||v5.length<=0||v6.length<=0||v7.length<=0) 
{
window.alert("Please Enter all the Details!!");
sflag=false;
} 
             }
</script>
</head>
<body>
<%
String s1=request.getParameter("msg");
%>
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
    <form method="post" action="AddItem"onSubmit='checkNull(); if(sflag)return true; else return false;'>
				<blink>
<font size="4" color=Magenta><%  
if(s1!=null) 
{%>
   <center><b><%=s1%></b></center>
  <%
  }%>
    <center></font>  </blink>
<center>  
			<center>  
<table>
<tr><td><div align="center">Category</td><td><input type="text" name="categery" size="20"></div></td></tr>
<tr><td><div align="center">Name</td><td><input type="text" name="pname" size="20"></div></td></tr>
<tr><td><div align="center">Price</td><td><input type="text" name="pprice" size="20" onblur="ppriceCheck()"></div></td></tr>
<tr><td><div align="center">Quantity</td><td><input type="text" name="pcount" size="20" onblur="pcountCheck()"></div></td></tr>
<tr><td><div align="center">Specification</td><td><input type="text" name="specify" size="20" onblur="pprofitCheck()"></div></td></tr>

<tr>
<td><input type="submit" value="Submit"></input></td>
<td><input type="reset" value="reset"></input></td>
</tr>
</table>
</center>

</form> 
</div> <!-- end of menu -->
<div id="templatemo_content_wrapper">

<div id="templatemo_content_panel">
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
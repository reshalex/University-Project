<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Welcome to Shopping</title>
        <meta name="keywords" content="css templates, fortune website, CSS, HTML" />
        <meta name="description" content="Fortune Template is a free css template from templatemo.com" />
        <link href="templatemo_style.css" rel="stylesheet" type="text/css" />
        <script language='javascript'>
            function nameCheck(item) {
                v = item.value;
                if (v.length > 15) {
                    window.alert("Length should <= 15");
                    item.focus();
                }
            }
            function emailCheck() {
                var x = document.form1.email.value
                var atpos = x.indexOf("@");
                var dotpos = x.lastIndexOf(".");
                if (atpos < 1 || dotpos < atpos + 3 || dotpos + 2 >= x.length)
                {
                    window.alert("Invalid emailid");
                    document.form1.email.focus();
                }
            }
            function contactCheck() {
                v20 = document.form1.contact.value;
                if (isNaN(v20))
                {
                    window.alert("Contact number should be Numeric");
                    document.form1.contact.focus();
                }
            }

            function checkNull() {
                v4 = document.form1.firstname.value;
                v5 = document.form1.contact.value;
                v6 = document.form1.email.value;
                v7 = document.form1.uname.value;
                v8 = document.form1.pass.value;
                sflag = true;
                if (v4.length <= 0 || v5.length <= 0 || v6.length <= 0 || v7.length <= 0 || v8.length <= 0)
                {
                    window.alert("Please Enter all the Details!!");
                    sflag = false;
                }
            }
        </script>
    </head>
    <body>
        <%
            String s1 = request.getParameter("msg");
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
                    <li><a href="index.jsp" class="current">Home</a></li>
                </ul> 
            </div>
            <form name="form1" method="post" action="CustomerRegistration" onSubmit='checkNull();
                    if (sflag)
                        return true;
                    else
                        return false;'>
                <blink>
                    <font size="4" color=Magenta><%
    if (s1 != null) {%>

                        <center><b><%=s1%></b></center>
                                <%
      }%>
                        <center></font>  </blink>
                <center>  
                    <center>  
                        <table>
                            <tr><td>FirstName</td><td><input type="text" name="firstname" onBlur='nameCheck(document.form1.firstname);'></td></tr>
                            <tr><td>LastName </td><td><input type="text" name="lastname" onBlur='nameCheck(document.form1.lastname);'></td></tr>
                            <tr><td>Gender</td><td><select name="gender">
                                        <option value="-">Please Select gender</option>
                                        <option value="Male">Male</option>
                                        <option value="Female">Female</option>
                                    </select></td></tr>
                            <tr><td>EMail</td><td><input type="text" name="email" onblur='emailCheck();'></td></tr>
                            <tr><td>ContactNo</td><td><input type="text" name="contact" onblur='contactCheck();'></td></tr>
                                <%@page import="java.sql.*" %>
                                <%@page import="Classes.*" %>
                                <%@ page import="java.io.*" %> 
                                <%
                                    try {
                                        DBConnection dbcon = new DBConnection();
                                        Statement st = dbcon.JDBC_ODBC();
                                        ResultSet rs = st.executeQuery("select distinct(specify) from productinfo");
                                %>
                            <tr><td>Interest</td><td><select name="interest">
                                        <% while (rs.next()) {
                                        %>
                                        <option><%=rs.getString(1)%>
                                            <%}
                                                } catch (Exception ex) {
                                                    ex.printStackTrace();
            }%></option>
                                    </select></div></td></tr>
                            <tr><td>UserName</td><td><input type="text" name="username" size="20"></input></td></tr>
                            <tr><td>Password</td><td><input type="password" name="password" size="20"></input></td></tr>
                        </table>
                    </center>
                    <input type="submit" value="Submit">
                        <input type="reset" value="reset">

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
                            </html>
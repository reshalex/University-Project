<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <%
            String s1 = request.getParameter("msg");
            String interest = session.getAttribute("interest").toString();
            String ptypeSession = session.getAttribute("ptype").toString();
        %>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Welcome to Shopping</title>
        <meta name="keywords" content="css templates, fortune website, CSS, HTML" />
        <meta name="description" content="Fortune Template is a free css template from templatemo.com" />
        <link href="templatemo_style.css" rel="stylesheet" type="text/css" />
        <script language='javascript'>

            function checkNull() {
                v4 = document.getElementById("pname").value;
                v5 = document.getElementById("pcount").value;
                sflag = true;
                if (v4.length <= 0 || v5.length <= 0)
                {
                    window.alert("Please Enter all the Details!!");
                    sflag = false;
                }
            }

            function countCheck() {

                if (isNaN(v20))
                {
                    window.alert("Count should be Numeric");
                    document.form1.pcount.focus();
                }
            }

            function getProductDetails()
            {
                {

                    var pname = document.getElementById("pname").value;

                    var xmlhttp;
                    if (window.XMLHttpRequest)
                    {// code for IE7+, Firefox, Chrome, Opera, Safari
                        xmlhttp = new XMLHttpRequest();
                    }
                    else
                    {// code for IE6, IE5
                        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
                    }
                    //xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                    xmlhttp.onreadystatechange = function ()
                    {
                        //alert(2);
                        if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
                        {
                            //alert(xmlhttp.responseXML);
                            //alert(xmlhttp.responseText);
                            document.getElementById("templatemo_content_panel").innerHTML = xmlhttp.responseText;
                        }
                        if (xmlhttp.status == 404)
                        {
                            alert("response not found");
                        }
                    }

                    xmlhttp.open("GET", "getproductdetails.jsp?pname=" + pname, true);
                    xmlhttp.send();
                    document.getElementById("countfield").style.display = "";


                }
                //alert(5);
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
                    <li><a href="intersetstatistics.jsp" class="current">Purchase Analysis</a></li>
                </ul> 
                <ul>
                    <li><a href="purchasehome.jsp" class="current">Back</a></li>
                </ul> 
            </div>
            <form name="form1" method="post" action="Purchase">
                <%@page import="java.sql.*" %>
                <%@page import="Classes.*" %>
                <%@ page import="java.io.*" %> 
                <%
                    try {
                        String query = "select productname from productinfo";
                        if (ptypeSession.equals("Interest")) {
                            try {
                                String[] interestSp = interest.split("#");
                                query = "select productname from productinfo where specify in ('";
                                int counter = 0;
                                for (String temp : interestSp) {
                                    if (counter == 0) {
                                        query = query + temp + "'";
                                        counter++;
                                    } else {
                                        query = query + ",'" + temp + "'";
                                    }
                                }
                                query = query + ")";
                                System.out.println("Query" + query);
                            } catch (Exception ex) {
                                // String interestSp = interest.split("#");
                                query = "select productname from productinfo where specify='" + interest + "'";
                            }
                        }

                        DBConnection dbcon = new DBConnection();
                        Statement st = dbcon.JDBC_ODBC();
                        ResultSet rs = st.executeQuery(query);
                %>
                <blink>
                    <font size="4" color=blue><%
                        if (s1 != null) {%>
                        <center><b><%=s1%></b></center>
                                <%
                                    }%>
                        <center></font>  </blink>
                <center>  
                    <center>  
                        <table>
                            <tr><td><div align="center">Product</td><td><select id="pname" name="pname" onchange='getProductDetails();'>
                                        <option>Select</option>
                                        <% while (rs.next()) {
                                        %>

                                        <option><%=rs.getString(1)%>
                                            <%} %></option>
                                    </select></input></div></td></tr>
                            <div align="center"><tr id="countfield" style="display:none"><td>Quantity</td><td><input type="text" id="pcount" name="pcount" onblur='countCheck();'></td></tr></div>

                            <div align="center"><tr>
                                    <td><input type="submit" name="btnname" value="Add" onclick="checkNull();"></input></td>
                                    <td><input type="submit" name="btnname" value="Buy"></input></td>
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
                    } catch (SQLException ex) {
                        ex.printStackTrace();
                    }%>

                <div class="margin_bottom_20"></div>
            </div> <!-- end of footer panel -->
        </div> <!-- end of footer wrapper-->
</html>
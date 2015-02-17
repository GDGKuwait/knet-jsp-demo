<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%--
This merchant demo is published by KNET as a demonstration of the process of
Online Payment Gateway Transactions. This is not a fully running demo so the
merchant has to build his site according to his requirements and needs.

KNET is NOT responsible for any stability or security issues of the merchant's 
site. This code is NOT intended for production use.
--%>

<!--
 *
 * @author Harley L. Subido
 * @version 1.0
 *-->
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
   
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="knet/style.css">
        <title>Details Page</title>
    </head>
    <%
    String product;
    float price, total;
    int qty;
    
    product  = request.getParameter("product");
    price = Float.parseFloat(request.getParameter("price"));
    qty = Integer.parseInt(request.getParameter("qty"));
    total = price * qty;
    %>
    <body>            
        <h1>KNET JSP Merchant Demo Shopping Center </h1>          
        <hr><br><br>
            <table border="1" width="500" align="center">
                <thead>
                    <tr>
                        <p>
                            <th>Product</th>
                            <th>Price</th>
                            <th>Number of days</th>
                            <th>Total</th>
                        </p>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <p>
                            <td><%=product%></td>
                            <td><%=price%></td>
                            <td><%=qty%></td>
                            <td><%=total%></td>
                        </p>
                    </tr>                    
                </tbody>
            </table>
            
            <form name="detailsform" action="buy.jsp" method="POST">
                <input type="hidden" name="product" value="<%=product%>" />
                <input type="hidden" name="price" value="<%=price%>" />
                <input type="hidden" name="qty" value="<%=qty%>" />
                <input type="hidden" name="total" value="<%=total%>" />
                <center>
                    <input type="submit" value="Buy" name="buy" />
                </center>
            </form>
    </body>
</html>


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
        <title>Result Page</title>
    </head>
    <body>        
        <!-- If paymentID is empty, redirect to error page
            if (request.getParameter("paymentid").equals(""))              
                response.sendRedirect(response.encodeRedirectURL("error.jsp"));
                       
            Read Transaction record for the received (paymentID) from merchant database 
        <!--
            If payment ID not found in merchant database, redirect customer to error page
                response.sendRedirect(response.encodeRedirectURL("error.jsp"));
                return;	
         -->
            
        <p class="result">Transaction completed successfully. Thank you for your order.</p>        
        <table border="1" align="center">
            <thead>
                <tr>
                    <th>Parameter</td>
                    <th>Value</td>
                </tr>                
            </thead>
            <tbody>
                <tr>
                    <td>Payment ID</td>
                    <td><%=request.getParameter("paymentId")%></td>
                </tr>
                <tr>
                    <td>Post Date</td>
                    <td><%=request.getParameter("postdate")%></td>
                </tr>
                <tr>
                    <td>Result Code</td>
                    <td><%=request.getParameter("result")%></td>
                </tr>
                <tr>
                    <td>Transaction ID</td>
                    <td><%=request.getParameter("tranid")%></td>
                </tr>
                <tr>
                    <td>Auth</td>
                    <td><%=request.getParameter("auth")%></td>
                </tr>
                <tr>
                    <td>Track ID</td>
                    <td><%=request.getParameter("trackid")%></td>
                </tr>                
            </tbody>
        </table>    
    </body>
</html>

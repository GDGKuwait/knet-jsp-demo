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
        <title>Index Page</title>
    </head>
    <body>        
        <h1>KNET JSP Merchant Demo Shopping Center </h1>          
        <hr><br><br>
        <form name="indexform" action="details.jsp" method="POST">
            <input type="hidden" name="product" value="Internet Card" />
            <input type="hidden" name="price" value="1.5" />
               <table border="0" align="center">
            <thead>
                <tr>
                    <th>Product Description</th>
                </tr>                
            </thead>            
            <tbody>                
                <tr>
                    <td width="300">Use our Internet Cards and enjoy the fastest, most cost-effective, easiest way to surf the web with our special offer. Now you can register for the exact number of days you want. Our prices and performance are the reasons to buy from us. </td>
                    <td width="20"></td>
                </tr>
                <tr>
                    <p>
                        <td>Price/day: </td>
                        <td>1.5<td>
                    </p>
                </tr>
                <tr>
                    <p>
                        <td>Number of days to subscribe: </td>
                        <td><input type="text" name="qty" value="1"/> day/s</td>
                    </p>
                </tr>
                <tr>
                    <td></td>                    
                    <td class="right"><input type="submit" value="Purchase" name="purchase"/></td>                    
                </tr>
            </tbody>
        </table>                                          
        </form>   
    </body>
</html>

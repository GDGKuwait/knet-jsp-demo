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

<%@page import="java.util.Properties"%>
<%@page import="java.util.Random"%>
<%@page import="com.aciworldwide.commerce.gateway.plugins.e24PaymentPipe"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Buy Page</title>
    </head>
    <body>
        <%       
            Properties configFile = new Properties();	    
            configFile.load(application.getResourceAsStream("WEB-INF/config.txt"));    

            // set properties
            e24PaymentPipe pipe = new e24PaymentPipe();
            pipe.setAction(configFile.getProperty("action"));    
            pipe.setCurrency(configFile.getProperty("currency"));
            pipe.setLanguage(configFile.getProperty("language"));
            pipe.setResponseURL(configFile.getProperty("responseURL"));
            pipe.setErrorURL(configFile.getProperty("errorURL"));
            pipe.setAmt(request.getParameter("total"));
            pipe.setResourcePath(configFile.getProperty("resourcePath"));
            pipe.setAlias(configFile.getProperty("alias"));
    
            Random rnd = new Random(System.currentTimeMillis());  
            pipe.setTrackId(String.valueOf(Math.abs(rnd.nextLong())));    
        
            // send the Payment Initialization message
            if(pipe.performPaymentInitialization() != pipe.SUCCESS) {
                System.out.println("Error sending Payment Initialization Request: ");
                System.out.println(pipe.getDebugMsg());        
                response.sendRedirect( response.encodeRedirectURL("error.jsp") );
                return;
            }
    
            //get results
            String payID = pipe.getPaymentId();
            String payURL = pipe.getPaymentPage();

            /* insert code segment to build the order
            create order ids, transaction date, etc.
            */

            /* insert code segment to insert the record into the DB
            if record insert failed, redirect the customer to the error page that looks
            like this
            response.sendRedirect( response.encodeRedirectURL("error.jsp") );      
            return;
            */
            // if record insert is successful, redirect to KNET Payment Page       
            response.sendRedirect( payURL + "?PaymentID=" + payID );
        %>                
    </body>
</html>

<%@ page language="java" session="true" %>
<%
    String paymentId=request.getParameter("paymentid");
    String ErrorNo= request.getParameter("Error");
    String udf1=request.getParameter("udf1");
    String udf2=request.getParameter("udf2");
    String udf3=request.getParameter("udf3");
    String udf4=request.getParameter("udf4");
    String udf5=request.getParameter("udf5");
    String  ErrorText=request.getParameter("ErrorText");
    String    postdate=request.getParameter("postdate");
    String    tranid=request.getParameter("tranid");
    String    auth=request.getParameter("auth");
    String    trackid=request.getParameter("trackid");
    String    ref=request.getParameter("ref");
        
        if (request.getParameter("result").equals("CAPTURED"))
        {
            String result=request.getParameter("result");
            out.println("REDIRECT=https://www.knetpaytest.com.kw/jsp/result.jsp?paymentId="+paymentId+"&result="+result+"&auth="+auth+"&ref="+ref+"&postdate="+postdate+"&trackid="+trackid+"&tranid="+tranid+"&udf1="+udf1+"&udf2="+udf2+"&udf3="+udf3+"&udf4="+udf4+"&udf5="+udf5);
            }
        
        else if(request.getParameter("result").equals("CANCELED"))
        {
            out.println("REDIRECT=https://www.google.com");
            }
        else {
            out.println("REDIRECT=https://www.knetpaytest.com.kw/jsp/error.jsp?paymentId="+paymentId+"&ErrorText="+request.getParameter("result"));
            }
            
%>
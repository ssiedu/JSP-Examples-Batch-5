<%
    //reading the request
    String s=request.getParameter("t1");
    //processing the request
    int income=Integer.parseInt(s);
    int tax=0;
    if(income>=500000){
        tax=income*25/100;
    }else{
        tax=income*15/100;
    }
%>
<html>
    <body>
        <h3>Tax-Calculations</h3>
        <hr>
        <table border="1">
            <tr>
                <td>Income</td>
                <td><% out.println(income);%></td>
            </tr>
            <tr>
                <td>Tax</td>
                <td><% out.println(tax); %></td>
            </tr>
        </table>
        <hr>
        <a href="index.jsp">Home</a>
    </body>
</html>
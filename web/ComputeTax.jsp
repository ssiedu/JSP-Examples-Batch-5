<%@taglib uri="/WEB-INF/tlds/lib1.tld" prefix="mytags" %>

<%!
    int highRate=20;
    int lowRate=10;
    int computeTax(int income) {
        if (income >= 500000) {
            return income * 20 / 100;
        } else {
            return income * 10 / 100;
        }
    }
%>    

<%
    int x=5;
    //reading the request
    String msg = "income tax dept";
    String s = request.getParameter("t1");
    //processing the request
    int income = Integer.parseInt(s);
    int tax = computeTax(income);
  
%>
<html>
    <body>
        <h3><%=msg.toUpperCase()%></h3>
        <h3>Tax-Calculations</h3>
        <mytags:today/>
        <hr>
        <table border="1">
            <tr>
                <td>Income</td>
                <td><%=income%></td>
            </tr>
            <tr>
                <td>Tax</td>
                <td><%=tax%></td>
            </tr>
        </table>
        <hr>
        <a href="index.jsp">Home</a>
    </body>
</html>
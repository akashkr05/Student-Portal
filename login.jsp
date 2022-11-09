<html>
    <head>
         <%@include file="mymenu1.jsp" %>
        <div id="data">
            <center>
                <form action="login1.jsp">
                    <table cellpadding="12">
                        <caption>Login Page</caption>
                        <tr>
                            <td>Enter Name:</td>
                            <td> <input type="text" placeholder="Enter Name" name="un" class="t1"> </td>
                        </tr> 
                        <tr>
                            <td>Enter password:</td>
                            <td> <input type="password" placeholder="Enter Password" name="up" class="t1"> </td>
                        </tr>
                        <tr>
                            <th colspan="2"> <input type="submit" value="login" class="B"> </th>
                        </tr>
                    </table>
                </form>
                <%
                    String s11=request.getParameter("s1");
                    if(s11!=null)
                    {
                    %>
                    <%=s11%>
                    <%}%>
            </center>
        </div>
    </body>
</html>

<html>
    <head>
        <%@include file="mymenu2.jsp" %>
                <div id="data">
            <center>
                <form action="insert1.jsp">
                    <table cellpadding="12">
                        <caption>Insert Page</caption>
                        <tr>
                            <td>Enter RollNo:</td>
                            <td> <input type="text" placeholder="Enter Rollno" name="u1" class="t1"> </td>
                        </tr> 
                        <tr>
                            <td>Enter Name:</td>
                            <td> <input type="text" placeholder="Enter Name" name="u2" class="t1"> </td>
                        </tr>
                        <tr>
                            <td>Enter Physics</td>
                            <td> <input type="text" placeholder="Enter Physics" name="u3" class="t1"> </td>
                        </tr>
                         <tr>
                            <td>Enter Chemistry</td>
                            <td> <input type="text" placeholder="Enter Chemistry" name="u4" class="t1"> </td>
                        </tr>
                         <tr>
                             <td>Enter Maths</td>
                            <td> <input type="text" placeholder="Enter Maths" name="u5" class="t1"> </td>
                        </tr>
                        <tr>
                            <th colspan="2"> <input type="submit" value="Insert" class="B"> </th>
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

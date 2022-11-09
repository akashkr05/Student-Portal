<%@page import="java.sql.*"%>
<html>
    <head>
        <%@include file="mymenu2.jsp" %>
                <div id="data">
            <center>
                <form action="delete.jsp">
                    <table cellpadding="12">
                         <caption>Delete Page</caption>
                        <tr>
                            <td>Enter RollNo:</td>
                            <td> <input type="text" placeholder="Enter Rollno" name="u1" class="t1"> </td>
                        </tr> 
                        <tr>
                            <th colspan="2"> <input type="submit" value="Delete" class="B" name="b1"> </th>
                        </tr>
                    </table>
                </form>
        <%
        String b1=request.getParameter("b1");
        if(b1!=null)
        {
        String s1=request.getParameter("u1");
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/akash?allowPublicKeyRetrieval=true&useSSL=false","root","root");
            Statement st= con.createStatement();
            st.executeUpdate("delete from insmarks where URNO='"+s1+"'");
            response.sendRedirect ("showall.jsp");
            con.close();  
        } 
        catch(Exception e)
        {
            out.println(e);
        }
                %>
               
       <%}%>
            </center>
        </div>
    </body>
</html>

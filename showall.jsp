<%@page import="java.sql.*"%>
<html>
    <head>
         <%@include file="mymenu2.jsp" %>
<%
    try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/akash?allowPublicKeyRetrieval=true&useSSL=false","root","root");
            Statement st= con.createStatement();
            ResultSet rs=st.executeQuery("select * from insmarks");
            //response.sendRedirect ("login.jsp");
%>
    <center>
        <table cellpadding="18">
            <%
                while(rs.next())
                {
            %>
            <tr>
                <td><%=rs.getString(1)%></td> 
                <td><%=rs.getString(2)%></td> 
                <td><%=rs.getString(3)%></td> 
                <td><%=rs.getString(4)%></td> 
                <td><%=rs.getString(5)%></td> 
            </tr>
            <%}%>
        </table>
    </center>
<%
            con.close();  
        } 
        catch(Exception e1)
        {
            out.println(e1);
        }
 
%>
</body>
</html>

<%@page import="java.sql.*"%>
<html>
    <head>
        <%@include file="mymenu2.jsp" %>
                <div id="data">
            <center>
                <form action="search.jsp">
                    <table cellpadding="12">
                         <caption>Search Page</caption>
                        <tr>
                            <td>Enter RollNo:</td>
                            <td> <input type="text" placeholder="Enter Rollno" name="u1" class="t1"> </td>
                        </tr> 
                        <tr>
                            <th colspan="2"> <input type="submit" value="Search" class="B" name="b1"> </th>
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
            ResultSet rs=st.executeQuery("select * from insmarks where URNO='"+s1+"'");
            if(rs.next())
            {
         %>
                <form action="search.jsp">
                    
                    <table cellpadding="12">
                        <tr>
                            <td>Roll No. </td>
                            <td><%=rs.getString(1)%></td>
                        </tr>
                        
                        <tr>
                            <td>Name </td>
                            <td><%=rs.getString(2)%></td>
                        </tr>
                        
                        <tr>
                            <td>Physics </td>
                            <td><%=rs.getString(3)%></td>
                        </tr>
                        
                        <tr>
                            <td>Chemistry </td>
                            <td><%=rs.getString(4)%></td>
                        </tr>
                        
                        <tr>
                            <td>Maths </td>
                            <td><%=rs.getString(5)%></td>
                        </tr>
                    </table>
                    
                </form>
                
                <%
               // response.sendRedirect ("mymenu.jsp");
            }
            else
            {
                 out.println("invalid Roll No.");
            }
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

<%@page import="java.sql.*"%>
<html>
    <head>
        <%@include file="mymenu2.jsp" %>
                <div id="data">
            <center>
                <form action="update.jsp">
                    <table cellpadding="12">
                         <caption>Update Page</caption>
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
                <form action="update.jsp">
                    
                    <table cellpadding="12">
                        <tr>
                            <td>Roll No. </td>
                            <td><input type="text" value="<%=rs.getString(1)%>" name="n1"></td>
                        </tr>
                        
                        <tr>
                            <td>Name </td>
                             <td><input type="text" value="<%=rs.getString(2)%>" name="n2"></td>
                        </tr>
                        
                        <tr>
                            <td>Physics </td>
                             <td><input type="text" value="<%=rs.getString(3)%>" name="n3"></td>
                        </tr>
                        
                        <tr>
                            <td>Chemistry </td>
                             <td><input type="text" value="<%=rs.getString(4)%>" name="n4"></td>
                        </tr>
                        
                        <tr>
                            <td>Maths </td>
                             <td><input type="text" value="<%=rs.getString(5)%>" name="n5"></td>
                        </tr>
                        
                        <tr>
                            <th colspan="2"><input type="submit" name="b2" value="Update" class="B"></th>
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
 
<%
    String s12=request.getParameter("b2");
    if(s12!=null)
    {
        String s21=request.getParameter("n1");
        String s22=request.getParameter("n2");
        String s23=request.getParameter("n3");
        String s24=request.getParameter("n4");
        String s25=request.getParameter("n5");
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/akash?allowPublicKeyRetrieval=true&useSSL=false","root","root");
            Statement st= con.createStatement();
            st.executeUpdate("update insmarks set UNAME='"+s22+"',UPHY='"+s23+"',UCHE='"+s24+"',UMATHS='"+s25+"' where URNO='"+s21+"'");
            //RequestDispatcher rd=request.getRequestDispatcher("Data inserted");
            response.sendRedirect ("showall.jsp");
            con.close();  
        } 
        catch(Exception e)
        {
            out.println(e);
        }
    }
%>

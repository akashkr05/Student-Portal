<%@page import="java.sql.*"%>
 
<%
    String s1=request.getParameter("un");
    String s2=request.getParameter("up");
    
    try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/akash?allowPublicKeyRetrieval=true&useSSL=false","root","root");
            Statement st= con.createStatement();
            st.executeUpdate("insert into login values('"+s1+"','"+s2+"')");
            response.sendRedirect ("login.jsp");
            //out.println("data inserted");
            con.close();  
        } 
        catch(Exception e)
        {
            out.println(e);
        }
 
%>

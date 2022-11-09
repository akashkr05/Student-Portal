<%@page import="java.sql.*"%>
 
<%
    String s1=request.getParameter("un");
        String s2=request.getParameter("up");
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/akash?allowPublicKeyRetrieval=true&useSSL=false","root","root");
            Statement st= con.createStatement();
            ResultSet rs=st.executeQuery("select * from login where UNAME='"+s1+"'AND UPASS='"+s2+"'");
            if(rs.next())
            {
                Cookie ck=new Cookie ("un",s1);
                ck.setMaxAge(60*30);
                response.addCookie(ck);
                response.sendRedirect ("mymenu.jsp");
            }
            else
            {
                 response.sendRedirect ("login.jsp?s1=invalid user name and password");
            }
            con.close();  
        } 
        catch(Exception e)
        {
            out.println(e);
        }
        %>

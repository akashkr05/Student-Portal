<html>
    <head>
          <%@include file="mymenu2.jsp" %>
          
        
        
          <%
              Cookie ck= new Cookie ("un","");
              ck.setMaxAge(0);
              response.addCookie(ck); 
              response.sendRedirect ("login.jsp");
          %>
    </body>
</html>

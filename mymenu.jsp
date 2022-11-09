<html>
    <head>
          <%@include file="mymenu2.jsp" %>
        <div id="data">
            <center>
                <p style="font-size: 50px;">My Menu Page</p>
              <% 
            Cookie ck[]= request.getCookies(); 
           if(ck!=null)
           {
                out.println("<h1>Welcome</h1>"+ck[0].getValue());
           }
           else
           {
               out.println("please enter correct id and password ");
           
           }%>
            </center>
        </div>
    </body>
</html>

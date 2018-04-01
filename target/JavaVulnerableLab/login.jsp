
 <%@ include file="header.jsp" %>
   
 <%
 String username="";
 String password="";
 Cookie[] cookies = request.getCookies();
 if (cookies != null)
  for (Cookie c : cookies) {
        if ("username".equals(c.getName())) {
         username= c.getValue();
        }
        else if("password".equals(c.getName()))
        {
            password= c.getValue();
        }
  }

 %>
<form action="LoginValidator" method="post">
<table> 
    <tr>
        <td>
            <label for="name" class="cols-sm-2 control-label">User Name:</label>
        </td>
        <td>
            <input type="text" name="username" value="<%=username%>" class="form-control" />
        </td>
    </tr>
    <tr>
        <td>
            <label for="name" class="cols-sm-2 control-label">Password:</label>
        </td>
        <td>
            <input type="text" name="password" value="<%=password%>" class="form-control" />
        </td>
    </tr>
    <tr>
        <td><label for="name" class="cols-sm-2 control-label">Remember me:</label></td>
        <td>
            <input type="checkbox" name="RememberMe" class="checkbox" checked/>
        </td>
    </tr>
    <tr>
        <td>
            <input type="submit" name="Login" value="Login" class="btn btn-lg btn-primary btn-block" />
        </td>
    </tr>
    <tr>
        <td></td>
        <td class="fail">
            <% if(request.getParameter("err")!=null){out.print(request.getParameter("err"));} %>
        </td>
    </tr>
</table>  
</form>
  <br/>
  <a href="ForgotPassword.jsp">Forgot Password?</a>
  <%@ include file="footer.jsp" %>
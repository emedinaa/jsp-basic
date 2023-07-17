<%-- 
    Document   : login
    Created on : 8 jul. 2023, 23:55:49
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="post" action="validatesqlite.jsp">
           <center> 
           <table border="1" cellpadding="5" cellspacing="2">
               
                   
                       <th colspan="2">Login aquí</th>
                       <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsYqu6wtbQbk70SAfzIS9a2zysggO-Yk_2Jg&usqp=CAU" </img>
                   
               
               <tbody>
                   <tr>
                       <td>Username</td>
                       <td><input type="text" name="username" required/></td>
                   </tr>
                   <tr>
                       <td>Password</td>
                       <td><input type="password" name="password" required/></td>
                   </tr>
                   <tr>
                       <td colspan="2" align="center"><input type="submit" value="Login">
                           <input type="reset" value="Reset">
                       </td>
                   </tr>
               </tbody>
           </table>
           </center>
        </form>
    </body>
</html>

<%-- 
    Document   : validate
    Created on : 8 jul. 2023, 23:56:42
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ page import="java.sql.*" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="com.emedinaa.quality.MongoConnection" %>
<%
    MongoConnection mongo = new MongoConnection();

    String result = mongo.logIn("admin", "123456");
    out.println("result "+result);
    
    /*try{
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        //Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        Class.forName("com.mongodb.jdbc.MongoDriver");
        String url = "jdbc:mongo://notes.mongo.cosmos.azure.com:10255?ssl=true";
        Connection conn= DriverManager.getConnection(url,"notes","3Ki0NklPmEXIqbbLsJjHe2RblAzIZCQwJ1YEAL25S0wQz7DCTW6ymfNqsMrEh26pxwnyT1TI8b7pACDbuyXhJQ==");   
        PreparedStatement pst=conn.prepareStatement("Select username,password from users where username=? and password=?");
        pst.setString(1,username);
        pst.setString(2,password);
        ResultSet rs=pst.executeQuery();    
        if(rs.next())
            out.println("Credencial correcta");
        else
            out.println("Crendencial nula");         
    }
    catch(Exception e){
        out.println(e);
        //out.println("Sucedio algo malo");
    }*/
%>  
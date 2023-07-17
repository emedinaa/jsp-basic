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
<%@ page import="com.emedinaa.quality.SqliteConnector" %>
<%
    SqliteConnector sqliteConnector = new SqliteConnector();
    
    String username=request.getParameter("username");
    String password=request.getParameter("password");
        
    String result = sqliteConnector.login(username, password);
    out.println("result "+result);
    
%>  
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="internetProgramlamaOdev.connect" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
 
String guncellenecekId=request.getParameter("id");
String konu=request.getParameter("konu");
String icerik=request.getParameter("icerik");
String goruntulenme=request.getParameter("goruntulenme");

		Connection con=connect.getConnection();
        Statement stmt = con.createStatement();
        String sql = "UPDATE icerikler set konu='"+konu+"',icerik ='"+icerik+"' , goruntulenme='"+goruntulenme+"' where ID='"+guncellenecekId+"'";
        stmt.executeUpdate(sql);




response.sendRedirect("icerikGuncelle.jsp");

%>
 


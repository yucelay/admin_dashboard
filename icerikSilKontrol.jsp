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
String silinecekId=request.getParameter("id"); 
Connection con=connect.getConnection();
PreparedStatement st = con.prepareStatement("DELETE FROM icerikler WHERE id = " + silinecekId + ";");
st.executeUpdate(); 

response.sendRedirect("icerikSil.jsp");

%>
 


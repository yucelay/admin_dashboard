<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="internetProgramlamaOdev.connect" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%

String konu=request.getParameter("konu");
String icerik=request.getParameter("icerik");
String goruntulenme=request.getParameter("goruntulenme");

out.print(konu+icerik+goruntulenme);

Connection con=connect.getConnection();
Statement st=con.createStatement();
st.executeUpdate("INSERT INTO icerikler (konu,icerik,goruntulenme) VALUES ('"+konu+"','"+icerik+"','"+goruntulenme+"');");
out.println("kayit basarili");
con.close();
st.close();

response.sendRedirect("tumicerikler.jsp");


%>

 



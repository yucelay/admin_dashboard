<%
HttpSession anasayfa = request.getSession(true);
if(anasayfa.getValue("kullanici_giris")!="ycl"){
response.sendRedirect("giris.jsp");
}else{

%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="internetProgramlamaOdev.connect" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Yeni Kayıt Ekle</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>

 <%@ include file="header.jsp" %>  
 
 
 
 
 <%

 
 		String gelenId=request.getParameter("id");
		PreparedStatement psTm=null;
		Connection con=connect.getConnection();

        psTm=con.prepareStatement("SELECT * FROM icerikler WHERE id='"+gelenId+"'");//Yazarlar tablosundaki herşeyi çek diyoruz.
        ResultSet rs=psTm.executeQuery();//SQL Sorgusundan dönecek sonuç rs sonuç kümesi içinde tutulacak.
        rs.next(); //Kayıt olduğu sürece her işlem sonunda 1 satır atla.
        
            String id=rs.getString("id"); //ResultSet içinden o anki indisdeki "Adi" anahtar kelimesine karşı gelen değer alınıyor.
           String konu=rs.getString("konu"); //ResultSet içinden o anki indisdeki "Alani" anahtar kelimesine karşı gelen değer alınıyor.
           String icerik=rs.getString("icerik");
            String goruntulenme=rs.getString("goruntulenme");
          
       
%>
 
 
 
 
 

<div class="container">


  <h2>İçerik Düzenle</h2>
  <form action="icerikGuncelleKontrol.jsp" method="post">
  
      <div class="form-group">
      <label for="email">ID : </label>
      <input type="text" class="form-control" id="id" name="id" value="<%=id%>" readonly="readonly">
    </div>
  
    <div class="form-group">
      <label for="email">Konu : </label>
      <input type="text" class="form-control" id="konu" placeholder="konu" name="konu" value="<%=konu %>")>
    </div>
    
    <div class="form-group">
      <label for="pwd">İçerik : </label>
      <input type="text" class="form-control" id="icerik" placeholder="icerik" name="icerik" value="<%=icerik %>">
    </div>
        <div class="form-group">
      <label for="pwd">Görüntülenme Sayısı : </label>
      <input type="text" class="form-control" id="icerik" placeholder="goruntulenme" name="goruntulenme" value="<%=goruntulenme %>">
    </div>
    <button type="submit" class="btn btn-default">Kaydet</button>
  </form>




</div>

<div id="altAlan"><b> Yücel AY </b> <br/>Fırat Üniversitesi | Bilgisayar Mühendisliği</div>
</body>
</html>
<% } %>

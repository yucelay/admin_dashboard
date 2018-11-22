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
<title>Insert title here</title>

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>

 <%@ include file="header.jsp" %>  




<div class="container">
  <h2>İçerik Sil </h2>
                                                                
  <div class="table-responsive">          
  <table class="table">
    <thead>
      <tr>
        <th>ID</th>
        <th>Konu</th>
        <th>İçerik</th>
        <th>Görüntülenme</th>
        <th>İşlem</th>
      </tr>
    </thead>





<%

		PreparedStatement psTm=null;
		Connection con=connect.getConnection();

        psTm=con.prepareStatement("SELECT * FROM icerikler");//Yazarlar tablosundaki herşeyi çek diyoruz.
        ResultSet rs=psTm.executeQuery();//SQL Sorgusundan dönecek sonuç rs sonuç kümesi içinde tutulacak.
        while(rs.next())//Kayıt olduğu sürece her işlem sonunda 1 satır atla.
        {
        	out.println("<tbody><tr>");
            out.println("<td>"+rs.getString("id")+"</td>"); //ResultSet içinden o anki indisdeki "Adi" anahtar kelimesine karşı gelen değer alınıyor.
            out.println("<td>"+rs.getString("konu")+"</td>"); //ResultSet içinden o anki indisdeki "Alani" anahtar kelimesine karşı gelen değer alınıyor.
            out.println("<td>"+rs.getString("icerik")+"</td>");
            out.println("<td>"+rs.getString("goruntulenme")+"</td>");
            out.println("<td><a href='icerikGuncelleForm.jsp?id="+rs.getString("id")+"'><div id='icerikDuzenle'><b>Güncelle</b></div></a></td>");
            out.println("</tr></tbody>");
        } 
%>


  </table>
  </div>
</div>

<div id="altAlan"><b> Yücel AY </b> <br/>Fırat Üniversitesi | Bilgisayar Mühendisliği</div>

</body>
</html>
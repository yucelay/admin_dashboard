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

<div class="container">


  <h2>Yeni İçerik Ekle</h2>
  <form action="kayitKontrol.jsp" method="post">
    <div class="form-group">
      <label for="email">Konu : </label>
      <input type="text" class="form-control" id="konu" placeholder="konu" name="konu">
    </div>
    <div class="form-group">
      <label for="pwd">İçerik : </label>
      <input type="text" class="form-control" id="icerik" placeholder="icerik" name="icerik">
    </div>
        <div class="form-group">
      <label for="pwd">Görüntülenme Sayısı : </label>
      <input type="text" class="form-control" id="icerik" placeholder="goruntulenme" name="goruntulenme">
    </div>
    <button type="submit" class="btn btn-default">Kaydet</button>
  </form>




</div>
<br/>
<div id="altAlan"><b> Yücel AY </b> <br/>Fırat Üniversitesi | Bilgisayar Mühendisliği</div>
</body>
</html>
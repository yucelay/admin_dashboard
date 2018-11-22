<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Insert title here</title>



<style type="text/css">
body {
	background-image: url(images/wp2.jpg);
}
#cerceve_giris_uyelik {
	height: auto;
	width: 650px;
	margin-top: 10px;
	margin-right: auto;
	margin-bottom: 10px;
	margin-left: auto;
}
#girisYap {
	-webkit-box-shadow: 7px 7px 17px 0px rgba(50, 50, 82, 0.53);
	-moz-box-shadow: 7px 7px 17px 0px rgba(50, 50, 82, 0.53);
	box-shadow: 7px 7px 17px 0px rgba(50, 50, 82, 0.53);
	height: auto;
	width: 300px;
	margin-top:100px;
	margin-right: auto;
	margin-bottom: auto;
	margin-left: auto;
	background-color: #FFF;
	opacity: 0.6;
	filter: alpha(opacity=60);
	border-radius: 10px;
	padding: 10px;
}

.myButton2 {
	background-image: -webkit-linear-gradient(top, #55BBD9, #55BBD9);
	background-image: -moz-linear-gradient(top, #55BBD9, #55BBD9);
	background-image: -ms-linear-gradient(top, #55BBD9, #55BBD9);
	background-image: -o-linear-gradient(top, #55BBD9, #55BBD9);
	background-image: linear-gradient(to bottom, #55BBD9, #55BBD9);
	-webkit-border-radius: 8;
	-moz-border-radius: 8;
	border-radius: 8px;
	text-shadow: 0px 0px 0px #666666;
	font-family: Arial;
	color: #ffffff;
	font-size: 14px;
	border: solid #1f628d 0px;
	font-style: normal;
	font-style:!important;
	text-decoration: none;
	background-color: #55BBD9;
	padding: 10px;
}
.tb1 {
	border: 2px solid #456879;
	border-radius: 10px;
	height: 25px;
	width: 250px;
	font-size: 25x;
	font-family: Verdana, Geneva, sans-serif;
	font-weight: bold;
	color: #009;
}
.myButton21 {	background-image: -webkit-linear-gradient(top, #55BBD9, #55BBD9);
	background-image: -moz-linear-gradient(top, #55BBD9, #55BBD9);
	background-image: -ms-linear-gradient(top, #55BBD9, #55BBD9);
	background-image: -o-linear-gradient(top, #55BBD9, #55BBD9);
	background-image: linear-gradient(to bottom, #55BBD9, #55BBD9);
	-webkit-border-radius: 8;
	-moz-border-radius: 8;
	border-radius: 8px;
	text-shadow: 0px 0px 0px #666666;
	font-family: Arial;
	color: #ffffff;
	font-size: 20px;
	padding: 11px 14px 12px 20px;
	border: solid #1f628d 0px;
	font-style: normal;
	text-decoration: none;
	background-color: #55BBD9;
}
.tb11 {
	border: 2px solid #456879;
	border-radius: 10px;
	height: 22px;
	width: 250px;
	font-size: 25x;
	font-family: Verdana, Geneva, sans-serif;
	font-weight: bold;
	color: #009;
}
</style>


<script type="text/javascript">

function fonk(){
	
	var kullaniciAdi=document.getElementById("kadi").value;
	var kullaniciSifre=document.getElementById("sifre").value;
	
	if(kullaniciAdi=="" || kullaniciSifre==""){
		document.getElementById("uyari").innerHTML="Lütfen Tüm Alanları Doldurunuz..";
	}else if(kullaniciAdi=="yucel"){
		if(kullaniciSifre=="123"){
			document.getElementById("gonderButon").type="submit";
			document.getElementById("girisForm").action="girisKontrol.jsp";
			window.location = "index.jsp";
		}else{
			document.getElementById("uyari").innerHTML="Parolanız Yanlış";
			document.getElementById("sifre").style.backgroundColor="#FDAFAF";
		}
		
	}else{
		document.getElementById("uyari").innerHTML="Kullanıcı Adiniz Yanlış";
		document.getElementById("kadi").style.backgroundColor="#FDAFAF";
	}
		
		
		

	
	
}



</script>




</head>
<body>



<div class="container" id="girisYap">


<center><h1>Admin Paneli</h1></center>
<hr style="border: 1px solid Grey;" />

  <form method="post" id="girisForm">
    <div class="form-group">
      <input type="text" class="form-control" id="kadi" placeholder="kullanici adi" name="kadi">
    </div>
    <div class="form-group">
      <input type="password" class="form-control" id="sifre" placeholder="parola" name="sifre">
    </div>
    <p id="uyari" Style="color:red;"></p>

   <p align="right"> <button type="button" class="myButton2" id="gonderButon" onClick="fonk()">Giriş Yap</button></p>
  </form>



</div>
</body>
</html>








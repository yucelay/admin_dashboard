<%
HttpSession anasayfa = request.getSession(true);
if(anasayfa.getValue("kullanici_giris")!="ycl"){
response.sendRedirect("giris.jsp");
}else{

%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="internetProgramlamaOdev.connect" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="style.css" rel="stylesheet" type="text/css" />
<title>Yücel AY</title>


    <script async="" src="./Pie Chart_files/analytics.js.download"></script>
    <script src="./Pie Chart_files/Chart.bundle.js.download"></script>
    <style type="text/css">/* Chart.js */
@-webkit-keyframes chartjs-render-animation{from{opacity:0.99}to{opacity:1}}@keyframes chartjs-render-animation{from{opacity:0.99}to{opacity:1}}.chartjs-render-monitor{-webkit-animation:chartjs-render-animation 0.001s;animation:chartjs-render-animation 0.001s;}</style>
    <script src="./Pie Chart_files/utils.js.download"></script>
<style type="text/css">.ms_al_vdwumd { color: #000; width: 100%; height: 40px; display: none; position: relative; bottom:0; left:0;}</style>





<script type="text/javascript">


var sayac=0;
var ziyaretciSayisiDb=56;




var config = {
    type: 'pie',
    data: {
        datasets: [{
            data: [
                5,25,36,42
            ],
            backgroundColor: [
                window.chartColors.red,
                window.chartColors.orange,
                window.chartColors.yellow,
                window.chartColors.green,
                window.chartColors.blue,
            ],
            label: 'Dataset 1'
        }],
        labels: [
            "Opera",
            "Chrome",
            "Edge",
            "Safari",

        ]
    },
    options: {
        responsive: true
    }
};

window.onload = function() {
    var ctx = document.getElementById("chart-area").getContext("2d");
    window.myPie = new Chart(ctx, config);
    
    yeni();

    
};



var colorNames = Object.keys(window.chartColors);
document.getElementById('addDataset').addEventListener('click', function() {
    var newDataset = {
        backgroundColor: [],
        data: [],
        label: 'New dataset ' + config.data.datasets.length,
    };

    for (var index = 0; index < config.data.labels.length; ++index) {
        newDataset.data.push(randomScalingFactor());

        var colorName = colorNames[index % colorNames.length];;
        var newColor = window.chartColors[colorName];
        newDataset.backgroundColor.push(newColor);
    }

    config.data.datasets.push(newDataset);
    window.myPie.update();
});

document.getElementById('removeDataset').addEventListener('click', function() {
    config.data.datasets.splice(0, 1);
    window.myPie.update();
});







function ziyaretciSayisiF(){
		
		
		sayac++;
		if(sayac>ziyaretciSayisiDb){
			clearInterval(ycInt);
		}else{
			document.getElementById("ziyaretciSayisiAlani").innerHTML=sayac;
			
		}
		
		
};



function yeni(){

		var ycInt=setInterval(ziyaretciSayisiF,10);
	
};



</script>







</head>

<body>



 <%@ include file="header.jsp" %>  
<div class="container">

<%

int icerikSayisi=0;
Connection con=connect.getConnection();

Statement st = con.createStatement();
ResultSet res = st.executeQuery("SELECT COUNT(*) FROM icerikler");
while (res.next()){
icerikSayisi = res.getInt(1);
}

%>












 <div class="row">
    <div class="col-sm-4">
    
      <div id="icerikSayisi">Toplam İçerik Sayisi<hr/>
      <font size=12><b>
<% out.println(icerikSayisi); %>


</b></font>
      </div>
      
    </div>
    
    
    
    <div class="col-sm-4">
     
		<div id="ziyaretciSayisi">Ziyaretçi Sayisi<hr/>
      <font size=12><b><p id="ziyaretciSayisiAlani" onClick="yeni()">22</p></b></font>
      </div>




    </div>
    <div class="col-sm-4">
          <div id="online">Online<hr/>
      <font size=12><b>4</b></font>
      </div>
      
    </div>
  </div>




<br/>




<div class="row">
    <div class="col-sm-6">
    
<div id="grafikAlani">
<center>
	Tarayıcı İstatistikleri <hr style="border: 1px solid Grey;" />​
    <div id="canvas-holder" style="width:410px">
   
        <canvas id="chart-area" style="display: block; width: 50px; height: 20px;" class="chartjs-render-monitor"></canvas>
    </div>
</center>
</div>


    </div>
    
    
    
    <div class="col-sm-6" align="left">
     
		<div id="sonKayitlarAlani"><center>Son Kayıtlar</center><hr style="border: 1px solid Grey;">
		
		
		
		<%
		int sonKayitSayac=0;
		PreparedStatement ps=null;
        ps=con.prepareStatement("SELECT * FROM icerikler ORDER By id DESC");
        ResultSet rs=ps.executeQuery();
        while(rs.next())
        {
        	sonKayitSayac++;
            out.println("&nbsp;&nbsp;&nbsp;&nbsp;"+sonKayitSayac+" . "+rs.getString("konu"));
            out.println("<br/>");
            if(sonKayitSayac >10){
            	break;
            }
        } 
%>
	


		
		
		
		</div>



    </div>

  </div>
  
  
  
  
  
  
  
  
  
  
  <div class="row">
    <div class="col-sm-12">
    
<div id="goruntulenmeSayisi">



<canvas id="bar-chart-grouped" width="600" height="150" ></canvas>






</div></div></div>
  
  
  




   







</div>

    
<div id="altAlan"><b> Yücel AY </b> <br/>Fırat Üniversitesi | Bilgisayar Mühendisliği</div>
<br/>




<script type="text/javascript">
new Chart(document.getElementById("bar-chart-grouped"), {
    type: 'bar',
    data: {
      labels: ["Ağustos", "Eylül", "Ekim", "Kasım"],
      datasets: [
        {
          label: "Diğer",
          backgroundColor: "#3e95cd",
          data: [133,221,783,2478]
        }, {
          label: "Türkiye",
          backgroundColor: "#8e5ea2",
          data: [1200,420,320,2800]
        }
      ]
    },
    options: {
      title: {
        display: true,
        text: 'Ziyaretçi İstatistikleri'
      }
    }
});


</script>

</body>
</html>


<% } %>
<%
	String kullaniciAdi=request.getParameter("kadi");
	String sifre=request.getParameter("sifre");
	
	if(kullaniciAdi.equals("yucel") && sifre.equals("123")){
		HttpSession anasayfa = request.getSession(true);
		anasayfa.putValue("kullanici_giris", "ycl");
		response.sendRedirect("index.jsp");
		
	}
	else{ 
		//out.println("Oturum acma basarisiz!!");
		response.sendRedirect("giris.jsp");
	}

%>
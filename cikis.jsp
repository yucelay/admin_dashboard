<%
HttpSession anasayfa = request.getSession(true);
anasayfa.putValue("kullanici_giris", "cikis");
response.sendRedirect("giris.jsp");

%>
<%@page import="com.*"%>
<%
String email=request.getParameter("email");
String password=request.getParameter("password");

String result=UserDAO.login(email, password);

if(result.equals("true")){
	session.setAttribute("email", email);
	response.sendRedirect("home.jsp");
}
else{
	response.sendRedirect("index.jsp?result=false");
}
%>
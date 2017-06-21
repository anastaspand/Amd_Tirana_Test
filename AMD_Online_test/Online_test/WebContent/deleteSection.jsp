<%@page import="com.AdminDAO"%>
<%
String id=request.getParameter("id");
String result=AdminDAO.deleteSection(id);

if(result.equals("true")){
	response.sendRedirect("addSection.jsp?status=true");
}
else{
	response.sendRedirect("addSection.jsp?status=false");
}
%>
<%@page import="com.AdminDAO"%>
<%
StringBuffer text = new StringBuffer(request.getParameter("section"));
int loc = (new String(text)).indexOf('\n');
while(loc > 0){
    text.replace(loc, loc+1, "<br>");
    loc = (new String(text)).indexOf('\n');
}

loc = (new String(text)).indexOf(' ');
while(loc > 0){
    text.replace(loc, loc+1, "&nbsp;");
    loc = (new String(text)).indexOf(' ');
}

String section=new String(text);
String result=AdminDAO.addSection(section);

if(result.equals("true")){
    response.sendRedirect("addSection.jsp?status=true");
}else{
	response.sendRedirect("addSection.jsp?status=false");
}
	
%>
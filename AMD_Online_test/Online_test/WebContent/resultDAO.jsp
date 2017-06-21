<%@page import="java.util.LinkedHashMap"%>
<%@page import="com.UserDAO"%>
<%

String user_name = (String)session.getAttribute("user_name");
String user_email = (String)session.getAttribute("user_email");
String admin_email = (String)session.getAttribute("email");

int retries = UserDAO.registerUser(user_name, user_email);

String userid=UserDAO.getUserID((String)session.getAttribute("user_email"));

LinkedHashMap lhm=(LinkedHashMap)session.getAttribute("all_answers");
UserDAO.setResult(userid, retries, lhm, admin_email==null?-1:1);

session.removeAttribute("all_answers");
session.removeAttribute("history_questions");
session.removeAttribute("finished");

response.sendRedirect("result.jsp");
%>
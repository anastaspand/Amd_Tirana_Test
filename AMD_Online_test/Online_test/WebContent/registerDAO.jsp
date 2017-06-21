<%@page import="java.util.Random"%>
<%@page import="com.UserDAO"%>
<%
String user_name=request.getParameter("name");
String user_email=request.getParameter("email");

session.setAttribute("user_name",user_name);
session.setAttribute("user_email",user_email);



//register.
//count = UserDAO.registerUser(user_name,user_email);


//Random random=new Random();
//int i=random.nextInt(3)+1;
//session.setAttribute("set", ""+i);

response.sendRedirect("home.jsp");


%>
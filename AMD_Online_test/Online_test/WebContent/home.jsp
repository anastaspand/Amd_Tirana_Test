<%@page import="org.json.simple.JSONObject"%>
<%@page import="com.AdminDAO,com.UserDAO"%>
<%@page import="org.json.simple.JSONArray"%>

<%
String user_email=(String)session.getAttribute("user_email");
if(user_email==null){
	response.sendRedirect("register.jsp");
}

%>

<html>
<head>
<title>AMD TIRANA</title>
<link rel="stylesheet" type="text/css" href="style.css">

</head>

<body>

    <jsp:include page="header.jsp"></jsp:include>        
        
    <div id="section">
    <h2>Instructions:</h2>
    <ul>
	  <li>Total Questions: 30</li>
	  <li>Time Alloted: 30 Minutes</li>
	  <li>Questions based on C and C++</li>
	  <li>There is no negative marking</li>
	  <li>Top 20 will be short listed for the next round</li>
	  <li>Click on <b>Start</b> button to start the test</li>
	  <li>After the test starts, don't press back or refresh button or don't close the browser window</li>
	</ul>  
    <br/>
    <form action="test.jsp" method="POST">
   <select name="set" required>
                            <%
        
				        JSONArray array=AdminDAO.getSections();
				        JSONObject obj;
				        
        
					       	 for(int i=0;i<array.size();++i){
					            obj=(JSONObject)array.get(i);
					        
					        %>    
					          
					            
					                    <option value="<%=obj.get("id")%>"><%=obj.get("section")%></option>
					                
					        
					    
					    <%} %>
                        </select>
    <br/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="submit" value="Start"/>  
    </form>
    </div>
    
    
</body>

</html>
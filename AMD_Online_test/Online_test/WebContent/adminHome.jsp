<%@page import="org.json.simple.JSONObject"%>
<%@page import="com.AdminDAO"%>
<%@page import="org.json.simple.JSONArray"%>

<%
String email=(String)session.getAttribute("email");
if(email!=null){
	if(!email.equals("admin")){
	    response.sendRedirect("index.jsp");
	}
}
else{
	response.sendRedirect("index.jsp");
}

JSONArray arr = AdminDAO.getSections();


%>

<html>
<head>
<title>AMD TIRANA</title>
<link rel="stylesheet" type="text/css" href="style.css">

</head>


<body>

    <jsp:include page="header.jsp"></jsp:include>        
    <jsp:include page="navigation.jsp"></jsp:include>  
 
    <div id="section">
        <br/><br/>
        
        <form action="filterQuestions.jsp">
            <table cellpadding="10">
                
                <tr>
                    <td></td>
                    <td><b>Filter Questions:</b>
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
                  </td>
                  <td><input type="submit" value="Filter"/></td>
                </tr>
            </table>
        </form>
        
    </div>
    

</body>

</html>
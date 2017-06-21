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
          <table cellpadding="10" border="1">
                <tr>
                    
                    <th>Name</th>
                    <th>Email</th>
                     <th>Section</th>
                    <th>Results</th>    
                    <th>Staff/Admin</th> 
                </tr>
            
        <%
        JSONArray array=AdminDAO.getResult();
        JSONObject obj;
                
        for(int i=0;i<array.size();++i){
            obj=(JSONObject)array.get(i);
        
        %>    
                
                <tr>
                   
                    
                    <td>
                    <%=obj.get("name")%>
                    </td>

                    <td>
                    <%=obj.get("email")%>
                    </td>
					<td align="center">
                    <%=obj.get("section")%>
                    </td>
                    
                    <td align="center">
                    <%=obj.get("points") %>/30
                    </td>
                     <td align="center">
                    <%=obj.get("tester") %>
                    </td>
                    
                </tr>
                                
        <%} %>
            </table> 
            
        
    </div>

</body>

</html>
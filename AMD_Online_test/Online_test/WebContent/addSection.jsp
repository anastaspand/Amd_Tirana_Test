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
    <table cellpadding="10">
     <%
        
        JSONArray array=AdminDAO.getSections();
        JSONObject obj;
        
        
        for(int i=0;i<array.size();++i){
            obj=(JSONObject)array.get(i);
        
        %>    
          
                <tr>
                    <td>
                    <b><%=i+1+".&nbsp;"%></b><%=obj.get("section")%>
                    </td>
                    <td>
                    <a href="./deleteSection.jsp?id=<%=obj.get("id")%>">Delete</a>
                    </td>
                </tr>
        
    
    <%} %>
     </table>
        <h2>Add Section</h2>
     
      <%
        String status=request.getParameter("status");
        
        if(status!=null){
            if(status.equals("false")){%>
                <p style="color:red">Some error occurred!</p>
            <%}
            else if(status.equals("true")){%>
                <p style="color:red">Record added!</p>
            <%}
        }
        %>
           
        <form action="addSectionDAO.jsp" name="login" onsubmit="return check()">
            <table cellpadding="10">
                       
                
                <tr>
                    <td><b>Question:</b></td>
                    <td><textarea rows="10" cols="100" name="section" required></textarea></td>
                </tr>
                
               
                
               
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Add"/></td>
                </tr>
            </table>
        </form>        
    </div>
</body>

</html>
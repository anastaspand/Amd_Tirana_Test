<%@page import="java.util.LinkedHashMap"%>
<%@page import="com.UserDAO"%>
<%@page import="com.AdminDAO"%>

<%
String user_email=(String)session.getAttribute("user_email");
if(user_email==null){
    response.sendRedirect("register.jsp");
}

String set = request.getParameter("set");
if(set == null)
{
	set = (String)session.getAttribute("set");
}else
{
	session.setAttribute("set",set);
}




%>

<html>
<head>
<title>AMD TIRANA</title>
<link rel="stylesheet" type="text/css" href="style.css">
<style>
.question_no
{
	    border: solid 1px;
    float: left;
    width: 30px;
    line-height: 20px;
    text-align: center;
    height: 20px;
    margin: 2px;
    vertical-align: middle;
    background-color: #ff7575;
    color: white;
    border-radius: 5px;
    font-family: cursive;
    cursor:pointer;
}
</style>
<script src="jquery-1.11.3.js"></script>
</head>

<body onload="startTimer()">

    <script type="text/javascript">
    
    var question_no=1;
    var curquestion_id=0;
    var curquestion_no = 0;
    
    var max_questions=30;
    var timer=1800;
    var min=0;
    var sec=0;
    var tested_question=0;
    
    //window.onbeforeunload = function() { if(question_no < max_questions+1){return "Warning: Your work will be lost!";} };

    function startTimer(){
    	min=parseInt(timer/60);
    	sec=parseInt(timer%60);

    	if(timer<1){
            window.location="resultDAO.jsp";
        }
    		
    	document.getElementById("time").innerHTML = "<b>Time Left: </b>"+min.toString()+":"+sec.toString();
    	timer--;
    	setTimeout(function(){ startTimer(); }, 1000);
    }
    function setVisibleOfButton()
    {
    	 if(curquestion_no != max_questions+1){
        	 $("#section").show();
 			
     		$("#forresultSubmit").hide();
         }
         else{
        	 $("#section").hide();
 			
     		$("#forresultSubmit").show();
     		
     		
         }
    	 //alert(curquestion_no);
    	 if(curquestion_no < 2){
         	$('#back').hide();
         }
         else{
         	$('#back').show();
         }
         
        /** if(curquestion_no==max_questions+1){
             $('#next').hide();
         }
         else{
             $('#next').show();
         }**/
         
        
       
         
    }
    function getAnswer()
    {
    	var s = $('input[name=answer]:checked').length;
     	/**
     	if(s==0){
       		alert("Please select answer for this question");
       		return "";
       	}
     	**/
     	var answers = "";
     	for(i=0;i<s;i++)
   		{
   			answers+=","+$('input[name=answer]:checked:eq('+i+')').val();
   		}
         answers = answers==""?"":answers.substr(1);
         return answers;
    }
    
    function Display(data)
    {
    	var obj=JSON.parse(data);
    	console.log(obj);
    	curquestion_id=obj.id;
        curquestion_no = obj.no;
        tested_question = 0;
        
        var status = obj.finished.split(",");
        for(var i=0;i<status.length;i++)
        	{
        	if(status[i]==1)
        	{
        		$(".question_no:eq("+i+")").css("background-color","green");
        		tested_question++;
       		}else
  			{
       			$(".question_no:eq("+i+")").css("background-color","#d6d6cb");
  			}
        }
        
        $("#testresult").html("Answered : "+tested_question+"/"+max_questions);
       
        $(".question_no:eq("+(curquestion_no-1)+")").css("background-color","#ed1953");
       
        
        $('#question').html('<b>Question '+curquestion_no+': </b><br/>'+obj.question);
        $('#a').html('<b>A:</b><input type="checkbox" name="answer" value="A"'+(obj.a_==1?' checked':'')+'>'+obj.a);
        $('#b').html('<b>B:</b><input type="checkbox" name="answer" value="B"'+(obj.b_==1?' checked':'')+'>'+obj.b);
        $('#c').html('<b>C:</b><input type="checkbox" name="answer" value="C"'+(obj.c_==1?' checked':'')+'>'+obj.c);
        $('#d').html('<b>D:</b><input type="checkbox" name="answer" value="D"'+(obj.d_==1?' checked':'')+'>'+obj.d);
    }
    function link(ques_new)
    {
    	submit_Answer(ques_new);
    }
    function submit_Answer(question_no)
    {
    	
    	var answers = "";
    	
    //	if(question_no != 1){
	    	answers = getAnswer();
	       // if(answers == "") return;
	     //   tested_question[ques_now-1] = 1
    	//}
    	
 
    	//question_no = ques_new;
    	
    	var req = "";
    	
    	if(question_no == max_questions)
   		{
   			req="&req=last";
   		}
    	if(question_no == 1)
   		{
   			req="&req=first";
   		}
    	
    	console.log(question_no);
		
     	$.get('getQuestionDAO.jsp?question_no='+question_no+'&curquestion_no='+curquestion_no+'&curquestion_id='+curquestion_id+'&answer=' + answers + req, function(data,status){
     		
     		//alert("successs");
     		//console.log(data);
     		Display(data);
     		console.log(curquestion_no);
     		//alert(curquestion_no);
    		 if(curquestion_no == eval(max_questions) + 1)
           	{
            	$("#section").hide();
    			$("#forresultSubmit").show();
           	}
    		 setVisibleOfButton();
     		
     		
         });
     	
     	
     	
     	
    }
    function testresult_submit()
    {
    	 if(confirm("Are you Sure you want to Submit the Test?"))
	    	{
	    	   	window.location='resultDAO.jsp';
	    	}else
	    		{
	    		
	    		 
	    		}
    	
    }
    function back_test()
    {
    	question_no=1;
        curquestion_id=0;
        curquestion_no = 0;
        
		submit_Answer(max_questions);
		
    }
    $(document).ready(function(){
    	
    	//Create Question box of max_questions.
    	for(var i = 0;i<max_questions;i++)
   		{
    		$("#nodiv").append("<a onclick='link("+(i+1)+")'><div class='question_no'>"+(i+1)+"</div></a>");
    		tested_question[i] = 0;
   		}
    	
    	
    	//first request.
    	;
    	submit_Answer(1);
      
        
        
        $('#next').click(function(){
        	submit_Answer(curquestion_no + 1);
        });
        
        $('#back').click(function(){
        	
        	submit_Answer(curquestion_no - 1);
        });
        
 	   $('#submit').click(function(){
 		   
        	//submit_Answer(question_no, question_no + 1);
        });
        
        
       
        
     });

    </script>

    <jsp:include page="header.jsp"></jsp:include>        
    <div id="nodiv">
    
    </div>
    <div id="section">
        <p id="time"></p>
        <p id="test"></p>
        <br/>
        <p id="question"></p><br/>
        <p id="a"></p>
        <p id="b"></p>
        <p id="c"></p>
        <p id="d"></p>
        
        <br/>
        <button id="back" >Prev</button>&nbsp;
        <button id="next">Next</button>&nbsp;
        
            
    </div>
    <div id="forresultSubmit">
       <br/><br/>
        <div id="testresult">
        </div>
        <br/>
        <button onclick="back_test()" >Back test!</button>    
        <button onclick="testresult_submit()">Submit</button>
            
    </div>
    
</body>

</html>
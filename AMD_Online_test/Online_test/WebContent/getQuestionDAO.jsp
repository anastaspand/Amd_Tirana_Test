<%@page import="java.util.LinkedHashMap"%>
<%@page import="java.util.*,org.json.simple.*"%>
<%@page import="com.UserDAO"%>
<%

String question_no=request.getParameter("question_no");// for new question.
String curquestion_no = request.getParameter("curquestion_no");
String curquestion_id = request.getParameter("curquestion_id");		
if (curquestion_no == "31")
{
	curquestion_no = "0";
	curquestion_id = "0";
}

String answer = request.getParameter("answer");


int[] finished = new int[30];
if(session.getAttribute("finished")!=null)
{
	finished = (int[])session.getAttribute("finished");
}

//String req=request.getParameter("req");


String set=(String)session.getAttribute("set");


LinkedHashMap lhm=(LinkedHashMap)session.getAttribute("all_answers");
if(lhm == null)
{
	lhm = new LinkedHashMap();
}
if(Integer.parseInt(curquestion_no) >0 && answer !=null && answer != "")
{
	ArrayList<String> answer_question_no = new ArrayList<String>();
	
	answer_question_no.add(curquestion_id);//id
	answer_question_no.add(answer);//answer
	
	lhm.put(curquestion_no, answer_question_no);
	finished[Integer.parseInt(curquestion_no)-1] =1;
	session.setAttribute("all_answers", lhm);
	session.setAttribute("finished", finished);
	
	
}

String history_questions = "-1";
if(session.getAttribute("history_questions") != null)
{
	history_questions = (String)session.getAttribute("history_questions");
}

ArrayList<String> answer_question_no = (ArrayList<String>)lhm.get(question_no); // id, answer.

int question_id = -1;
String answer_question = "";


if(answer_question_no != null)
{
	//already answered.	
	question_id = Integer.parseInt(answer_question_no.get(0)); //question_id
	answer_question = answer_question_no.get(1);//answers: for example A, D
}else
{
	//get id of new question.
	question_id = UserDAO.getQuestionID(set, history_questions);
	if(question_id == -1)
	{
		history_questions = "-1";
		question_id = UserDAO.getQuestionID(set, history_questions);
	}
	history_questions+=","+question_id;
}
session.setAttribute("history_questions",history_questions);


JSONObject result=UserDAO.getQuestion(Integer.parseInt(question_no), question_id, answer_question);
String f_str = "";
for(int i =0 ;i<finished.length;i++)
{
	f_str += ","+finished[i];
}
f_str  = f_str.substring(1);
result.put("finished",f_str);

out.print(result.toString());

%>
package com;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

import org.json.simple.JSONObject;
import java.util.*;
public class UserDAO {
	
	public static String login(String email,String password){
		String query="select * from "+DBDetails.USER_TABLE+" where "+DBDetails.EMAIL_COL+"=? and "+DBDetails.PASSWORD_COL+"=?";
		
		try{
			Connection con=DBConnect.getConnection();
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1,email);
			ps.setString(2,password);
			
			ResultSet rs=ps.executeQuery();
			
			if(rs.next()){
				return "true";
			}
			
			ps.close();
			con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return "false";
	}
	public static int registerUser(String name, String email){
		String query="select * from "+DBDetails.USER_TABLE+" where "+DBDetails.EMAIL_COL+"=? ";//and "+DBDetails.NAME_COL+"=?";
		int count = 1;
		try{
			Connection con=DBConnect.getConnection();
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1,email);
			//ps.setString(2,name);
			
			ResultSet rs=ps.executeQuery();
			
			if(rs.next()){
//				return "registered";
				count = rs.getInt(DBDetails.RETRIES_COL);
				count++;
				query="update "+DBDetails.USER_TABLE+" set "+DBDetails.RETRIES_COL+"="+DBDetails.RETRIES_COL+"+1 where "+DBDetails.EMAIL_COL+"=? ";//and "+DBDetails.NAME_COL+"=?";
				ps=con.prepareStatement(query);
				//ps.setString(1,name);
				ps.setString(1,email);
				ps.executeUpdate();
				
			}
			else
			{
				count = 1;
				query="insert into "+DBDetails.USER_TABLE+" ("+DBDetails.NAME_COL+","+DBDetails.EMAIL_COL+","+DBDetails.RETRIES_COL+") values(?,?,?)";
				ps=con.prepareStatement(query);
				ps.setString(1,name);
				ps.setString(2,email);
				ps.setInt(3,1);
				
				int result=ps.executeUpdate();
				
				ps.close();
				con.close();
				
				
			}
			
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return count;
		
	}
	
	public static int getQuestionID(String set, String history_questions)
	{
		int newid = -1;
		try
		{
			String sql = "select * from "+DBDetails.QUESTION_TABLE+" where "+DBDetails.SET_COL+"='"+set+"' and "+DBDetails.ID_COL+" not in ("+history_questions+")";
			Connection con=DBConnect.getConnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			if(rs.next())
			{
				newid = rs.getInt(DBDetails.ID_COL);
			}
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return newid;
	}
	public static JSONObject getQuestion(int question_no, int question_id, String answers){
		
		String query="select * from "+DBDetails.QUESTION_TABLE+" where "+DBDetails.ID_COL+"=?";
		JSONObject obj=new JSONObject();

		try{
			
			int[] ans = new int[4];
			if(answers != "")
			{
				String[] ans_ = answers.split(",");
				for(int i = 0;i<ans_.length;i++)
				{
					switch(ans_[i])
					{
						case "A":
							ans[0] = 1;
							break;
						case "B":
							ans[1] = 1;
							break;
						case "C":
							ans[2] = 1;
							break;
						case "D":
							ans[3] = 1;
							break;
					}
				}
				
			}
			
			Connection con=DBConnect.getConnection();
			PreparedStatement ps=con.prepareStatement(query);
			ps.setInt(1,question_id);
			ResultSet rs=ps.executeQuery();
			ResultSet rs1=null;
			
			if(rs.next()){
				obj.put("question", rs.getString(DBDetails.TEXT_COL));
				obj.put("id", rs.getString(DBDetails.ID_COL));
				obj.put("no", question_no);
				
				query="select * from "+DBDetails.CHOICE_TABLE+" where "+DBDetails.QUESTION_ID_COL+"=?";
				ps=con.prepareStatement(query);
				ps.setString(1,rs.getString(DBDetails.ID_COL));
				rs1=ps.executeQuery();
				
				if(rs1.next()){
					rs1.absolute(1);
					obj.put("a", rs1.getString(DBDetails.TEXT_COL));
					obj.put("a_", ans[0]);
					
					rs1.absolute(2);
					obj.put("b", rs1.getString(DBDetails.TEXT_COL));
					obj.put("b_", ans[1]);
					
					rs1.absolute(3);
					obj.put("c", rs1.getString(DBDetails.TEXT_COL));
					obj.put("c_", ans[2]);
					
					rs1.absolute(4);
					obj.put("d", rs1.getString(DBDetails.TEXT_COL));
					obj.put("d_", ans[3]);
				}
				// set answer.
				
			}
			
			ps.close();
			rs.close();
			rs1.close();
			con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return obj;
	}
	
	public static void setResult(String userid, int retries, LinkedHashMap lhm, int byadmin){
		String query="insert into "+DBDetails.RESULT_TABLE+" ("+DBDetails.ANSWER_COL+","+DBDetails.QUESTION_ID_COL+","+DBDetails.USER_ID_COL+","+DBDetails.RETRIES_COL+",ADMIN_ID) values(?,?,?,?,?)";
		
		try{
			Connection con=DBConnect.getConnection();
			
			
			
			PreparedStatement ps;
			
			for(int i = 1;i<=30;i++)
			{
				ArrayList<String> answer = (ArrayList)lhm.get(String.valueOf(i));
				if(answer == null)
					continue;
				ps=con.prepareStatement(query);
				ps.setString(1,answer.get(1));
				ps.setString(2,answer.get(0));
				ps.setString(3,userid);
				ps.setInt(4,retries);
				ps.setInt(5, byadmin);
				
				ps.executeUpdate();
				
			}
			
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public static String getUserID(String email){
		String query="select * from "+DBDetails.USER_TABLE+" where "+DBDetails.EMAIL_COL+"=?";
		String id="";
		try{
			Connection con=DBConnect.getConnection();
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1,email);
			ResultSet rs=ps.executeQuery();
			
			if(rs.next()){
				id=rs.getString(DBDetails.ID_COL);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return id;
	}
	public static String increaseCount(String id){
		String query="select "+DBDetails.RETRIES_COL+" from "+DBDetails.USER_TABLE+" where "+DBDetails.ID_COL+"=?";
		String count="0";
		try{
			Connection con=DBConnect.getConnection();
			
			Statement stmt = con.createStatement();
			stmt.execute("update "+DBDetails.USER_TABLE+" set "+DBDetails.RETRIES_COL+"="+DBDetails.RETRIES_COL+"+1 "+
			" where "+DBDetails.ID_COL+"='"+id+"'");
			
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1,id);
			ResultSet rs=ps.executeQuery();
			
			if(rs.next()){
				count=rs.getString(DBDetails.RETRIES_COL);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return count;
	}
}
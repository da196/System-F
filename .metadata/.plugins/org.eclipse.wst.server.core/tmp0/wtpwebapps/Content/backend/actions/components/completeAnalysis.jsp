<%@ page import="java.util.*" %>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Vector" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Vector" %>
<%@ page import="tcms.presentation.*" %> 
<%@ page import="tcms.configuration.*" %> 
<%@ page import="java.io.PrintWriter" %> 
<%

	String file_date = request.getParameter("file_date");
	String start_time = request.getParameter("start_time");
	String end_time = request.getParameter("end_time");
	String channel_id = request.getParameter("channel_id");
	String user_id = request.getParameter("user_id");
	String identifier = request.getParameter("identifier");
	
	int status = NewsIndexCard.CompleteNewsIndexCard(channel_id, file_date, start_time, end_time, user_id);
	System.out.println(status);
	if (status > 0){
		PrintWriter printWriter = response.getWriter();
		printWriter.print("{\"status\":1}");
	}else{
		PrintWriter printWriter = response.getWriter();
		printWriter.print("{\"status\":2}");
	}
	
%>
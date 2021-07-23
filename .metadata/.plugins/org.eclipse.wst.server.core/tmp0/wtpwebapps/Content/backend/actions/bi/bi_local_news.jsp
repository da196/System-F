<%@ page import="java.util.*" %>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Vector" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Vector" %>
<%@ page import="tcms.analysis.*" %>
<%@ page import="java.io.PrintWriter" %> 
<%@ page import="net.sf.json.JSONObject" %>
<%@page import="net.sf.ezmorph.Morpher"%>


<%
	String channel_id = request.getParameter("channel_id");  
	String analyzed_date = request.getParameter("analyzed_date");  
	String language = request.getParameter("language");  
	String news_category_id = request.getParameter("news_category_id");  
	
		
	JSONObject json = new JSONObject();
	 

	long local_news_count = Long.parseLong(NewsItemsCount.getLocalNewsCount(channel_id, analyzed_date, language, news_category_id));

	json.accumulate("local_news_count", local_news_count);
		
	out.print(json.toString());
%>
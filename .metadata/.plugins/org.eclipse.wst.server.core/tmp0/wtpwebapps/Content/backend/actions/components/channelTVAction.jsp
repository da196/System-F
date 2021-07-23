<%@ page import="java.util.*" %>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Vector" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Vector" %>
<%@ page import="tcms.presentation.*" %> 
<%@ page import="tcms.configuration.*" %> 

<%

	String Channel_id = request.getParameter("channelID");
	String file_date = request.getParameter("date");
	String start_time = request.getParameter("time");
	String content_type_id = request.getParameter("content_type_id");

	java.util.List<Content> list = Content.getLiveContent(Channel_id, file_date, start_time, content_type_id);
	System.out.println(list.size());
	for (int i=0; i < list.size(); i ++){
		out.print(list.get(i).getEnd_time() 
				+ "|" + list.get(i).getFile_path_file_name()
				 + "|" + list.get(i).getFile_date()
				 + "|" + list.get(i).getStart_time());
		
		System.out.println(list.get(i).getEnd_time() + "|" + list.get(i).getFile_path_file_name()+ "|" + list.get(i).getFile_date()+ "|" + list.get(i).getStart_time());
	}
	
	

%>
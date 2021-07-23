<%@ page import="java.util.*" %>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Vector" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Vector" %>
<%@ page import="tcms.presentation.*" %> 
<%@ page import="tcms.configuration.*" %> 
<%@ page import="java.io.PrintWriter" %> 
<%@ page import="tcms.csp.*" %> 
<%
try{
	String file_date = request.getParameter("file_date");
	String start_time = "";
	String end_time = "";
	String channel_id = request.getParameter("channel_id");
	String program = request.getParameter("program");
	String identifier = request.getParameter("identifier");
	
	String filename = request.getParameter("filename");
	String cut_from = request.getParameter("cut_from");
	String duration = request.getParameter("duration");
	String title = request.getParameter("title");
	String description = request.getParameter("description");
	String contentType = request.getParameter("contentType");
	String user_id = request.getParameter("userID");
	
	//System.out.println(file_date + " , " + start_time + " , " +program+ " , " +channel_id);
	 java.util.List<Program> programList = ProgramManipulator.getProgramsDateTime(program);
	 
	 for(int i = 0; i<programList.size(); i ++) {
		 start_time = programList.get(i).getStartTime();
		 end_time = programList.get(i).getEndTime();
	 }
	
	System.out.println("User ID: -->" + user_id);
	//String videoFilePath = "/var/tcmsapp/tomcat/webapps/filePath/";
	//String mergePath = "/home/ibraim/TCRA-SYSTEM/apache-tomcat-8.5.42/webapps/merge_files/";
	//String slipPath = "/home/ibraim/TCRA-SYSTEM/apache-tomcat-8.5.42/webapps/library/";
	
	String videoFilePath = "/var/tcmsapp/tomcat/webapps/filePath/";
	String mergePath = "/var/tcmsapp/tomcat/webapps/mergeFiles/";
	String slipPath = "/var/tcmsapp/tomcat/webapps/library/";
	String url = "";
	int status = 0;
	
	
	if (identifier.equals("search")){

		url = Processor.getVideoURL(channel_id, file_date, start_time, end_time, videoFilePath, mergePath, contentType);
		out.print(url);
		
	}else if (identifier.equals("trim")){
		
			status = Processor.SplitFiles(mergePath + filename, cut_from, duration, title, description, slipPath, channel_id, contentType, user_id);
		
		 if(status > 0) {
			   PrintWriter printWriter = response.getWriter();
			   printWriter.print("{\"status\":1}");
		   }
	}
}catch(Exception er){
	er.printStackTrace();
}
	
	

%>
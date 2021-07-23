<%@ page import="java.util.*" %>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Vector" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Vector" %>
<%@ page import="tcms.presentation.*" %> 
<%@ page import="tcms.configuration.*" %> 
<%@ page import="java.io.PrintWriter" %> 

<%
try{
	String analysisID = request.getParameter("analysisID");
	String channelID = request.getParameter("channelID");
	String contentDate = request.getParameter("contentDate");
	String startTime = request.getParameter("startTime");
	String endTime = request.getParameter("endTime");
	
	String videoFilePath = "/var/tcmsapp/tomcat/webapps/filePath/";
	String mergePath = "/var/tcmsapp/tomcat/webapps/mergeFiles/";
	String slipPath = "/var/tcmsapp/tomcat/webapps/library/";
	String url = "";
	int status = 0;
	
	java.util.List<InterviewAnalysis> list = InterviewAnalysis.getInterviewAnalysiVideo(analysisID, channelID, contentDate, startTime, endTime, videoFilePath, mergePath, "1");
	
	for(int i=0; i<list.size(); i++){
		out.print(list.get(i).getUrl() + "|" + list.get(i).getChannelName() + "|" + list.get(i).getContentDate()+ "|" + list.get(i).getContentDescription()
				+ "|" + list.get(i).getGeneralObservation()+ "|" + list.get(i).getStartTime() + "|" + list.get(i).getEndTime());
		
	}
	
	
}catch(Exception er){
	er.printStackTrace();
}
	
	

%>
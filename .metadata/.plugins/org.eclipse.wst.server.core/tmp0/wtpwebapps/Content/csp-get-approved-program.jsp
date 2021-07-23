<%@ page import="java.util.*" %>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Vector" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Vector" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="tcms.csp.*" %> 
<%@ page import="org.apache.commons.codec.digest.*" %>
<%@ page import="net.sf.json.*" %>
<%@page import="net.sf.ezmorph.Morpher"%>


<%
     String day = request.getParameter("day");
	 String channelID = request.getParameter("channelID");
	
	 
	 java.util.List<Program> programList = ProgramManipulator.getApprovedPrograms(channelID, day);
	 

		JSONObject responseDetailsJson = new JSONObject();
	    JSONArray jsonArray = new JSONArray();

	    for(int i = 0; i<programList.size(); i ++) {
	    	
	    	String time = programList.get(i).getStartTime() + " - " + programList.get(i).getEndTime();
	    	String programeName = programList.get(i).getProgramName();
			String programObjective = programList.get(i).getProgramObjective();
			String targetAudience = programList.get(i).getTargetAudience();
			String expectedArchivement = programList.get(i).getExpectedArchievement();
			String entryDate = programList.get(i).getEntryDate();
			String status = programList.get(i).getStatus();
			int  id = programList.get(i).getProgramId();
			
			
	        JSONObject formDetailsJson = new JSONObject();
	        formDetailsJson.put("time", time);
	        formDetailsJson.put("programeName", programeName);
	        formDetailsJson.put("programObjective", programObjective);
	        formDetailsJson.put("targetAudience", targetAudience);
	        formDetailsJson.put("expectedArchivement", expectedArchivement);
	        formDetailsJson.put("entryDate",entryDate);
	        formDetailsJson.put("status",status);
	        formDetailsJson.put("id", String.valueOf(id));
	        
	       jsonArray.add(formDetailsJson);
	    }
	    responseDetailsJson.put("data", jsonArray);//Here you can see the data in json format
	    out.print(responseDetailsJson);
		
%>
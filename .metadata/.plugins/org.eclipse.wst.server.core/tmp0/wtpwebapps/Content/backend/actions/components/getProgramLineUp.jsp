<%@ page import="java.util.*" %>
<%@ page import="java.util.Date" %>
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
     String file_date = request.getParameter("file_date");
	 String channelID = request.getParameter("channel_id");
	
	 Date date = null;
		String inputDateFormat ="yyyy-MM-dd";
		
		
		try {
			date = new SimpleDateFormat(inputDateFormat).parse(file_date);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

     SimpleDateFormat simpleDateformat = new SimpleDateFormat("EEEE"); // the day of the week spelled out completely
     String day = simpleDateformat.format(date);
     System.out.println(day);

	 java.util.List<Program> programList = ProgramManipulator.getProgramsLineUp(channelID, day);
	 

		JSONObject responseDetailsJson = new JSONObject();
	    JSONArray jsonArray = new JSONArray();

	    for(int i = 0; i<programList.size(); i ++) {
	    	
	    	String time = programList.get(i).getStartTime();
	    	String programeName = time + " - " +programList.get(i).getProgramName();
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
	    System.out.print(responseDetailsJson.toString());
		
%>
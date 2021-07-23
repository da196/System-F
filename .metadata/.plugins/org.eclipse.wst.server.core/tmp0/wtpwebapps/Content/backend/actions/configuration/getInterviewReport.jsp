<%@ page import="java.util.*" %>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Vector" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Vector" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="tcms.csp.*" %> 
<%@ page import="tcms.presentation.*" %>
<%@ page import="org.apache.commons.codec.digest.*" %>
<%@ page import="net.sf.json.*" %>
<%@page import="net.sf.ezmorph.Morpher"%>


<%
     String startDate = request.getParameter("startDate");
	 String endDate = request.getParameter("endDate");
	 String keyword = request.getParameter("keyword");
	 
	 java.util.List<InterviewReport> list = InterviewReport.getContent(startDate, endDate, keyword);

	 JSONObject responseDetailsJson = new JSONObject();
	 JSONArray jsonArray = new JSONArray();

	    for(int i = 0; i<list.size(); i ++) {
	    	String contentDate = list.get(i).getDate();
	    	String channelName = list.get(i).getChannelName();
			String channelID = list.get(i).getChannelID();
			String analysisID = list.get(i).getId();
			String startTime = list.get(i).getStartTime();
			String endTime = list.get(i).getEndTime();

	        JSONObject formDetailsJson = new JSONObject();
	        formDetailsJson.put("contentDate", contentDate);
	        formDetailsJson.put("channelName", channelName);
	        formDetailsJson.put("channelID", channelID);
	        formDetailsJson.put("analysisID", analysisID);
	        formDetailsJson.put("startTime", startTime);
	        formDetailsJson.put("endTime", endTime);

	        jsonArray.add(formDetailsJson);
	    }
	    responseDetailsJson.put("data", jsonArray);//Here you can see the data in json format
	    out.print(responseDetailsJson);
%>
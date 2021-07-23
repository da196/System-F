<%@ page import="java.util.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Vector" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Vector" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="tcms.presentation.*" %> 
<%@ page import="org.apache.commons.codec.digest.*" %>
<%@ page import="net.sf.json.*" %>
<%@page import="net.sf.ezmorph.Morpher"%>


<%
     String date = request.getParameter("file_date");
	 String channelID = request.getParameter("channel_id");
	 String contentTypeID = request.getParameter("contentType");
	


	 java.util.List<ContentFiles> programList = ContentFiles.getFiles(contentTypeID, channelID, date);
	 

		JSONObject responseDetailsJson = new JSONObject();
	    JSONArray jsonArray = new JSONArray();

	    for(int i = 0; i<programList.size(); i ++) {
	    	
	    	String time = programList.get(i).getTime();
	    	String channelName =programList.get(i).getChannelName();
			String fileName = programList.get(i).getFileName();
			String fileSerialNo = programList.get(i).getFileSerialNo();
			String id = programList.get(i).getId();
			String channel_ID = programList.get(i).getChannelID();
			String url = programList.get(i).getUrl();
		
			
			
	        JSONObject formDetailsJson = new JSONObject();
	        formDetailsJson.put("time", time);
	        formDetailsJson.put("channelName", channelName);
	        formDetailsJson.put("fileName", fileName);
	        formDetailsJson.put("fileSerialNo", fileSerialNo);
	        formDetailsJson.put("id", id);
	        formDetailsJson.put("channel_ID",channel_ID);
	        formDetailsJson.put("url",url);
	        
	        
	       jsonArray.add(formDetailsJson);
	    }
	    responseDetailsJson.put("data", jsonArray);//Here you can see the data in json format
	    out.print(responseDetailsJson);
	    System.out.print(responseDetailsJson.toString());
		
%>
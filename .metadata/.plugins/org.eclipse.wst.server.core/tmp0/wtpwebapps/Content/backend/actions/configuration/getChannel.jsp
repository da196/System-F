<%@ page import="java.util.*" %>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Vector" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Vector" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="tcms.configuration.*" %> 
<%@ page import="org.apache.commons.codec.digest.*" %>
<%@ page import="net.sf.json.*" %>
<%@page import="net.sf.ezmorph.Morpher"%>


<%
		String regionID = request.getParameter("regionID");
		String contentTypeID = request.getParameter("contentTypeID");
		java.util.List<Channels> list = Channels.getTVRadioChannels(contentTypeID , regionID);
	 

		JSONObject responseDetailsJson = new JSONObject();
	    JSONArray jsonArray = new JSONArray();
	    
	    String flag = null;

	    for(int i = 0; i<list.size(); i ++) {
	    	
	    	String channelID = list.get(i).getChannelID();
	    	String channelName = list.get(i).getChannelName();
			
	        JSONObject formDetailsJson = new JSONObject();
	        formDetailsJson.put("channelID", channelID);
	        formDetailsJson.put("channelName", channelName);
	       
	       jsonArray.add(formDetailsJson);
	    }
	    responseDetailsJson.put("data", jsonArray);//Here you can see the data in json format
	    out.print(responseDetailsJson);
		
%>
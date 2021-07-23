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
    
	 java.util.List<Application> applicationlist = Application.getProgramToApproved();
	 

		JSONObject responseDetailsJson = new JSONObject();
	    JSONArray jsonArray = new JSONArray();
	    
	    String flag = null;

	    for(int i = 0; i<applicationlist.size(); i ++) {
	    	
	    	String applicationID = applicationlist.get(i).getApplicationID();
	    	String channelID = applicationlist.get(i).getChannelID();
			String channelName = applicationlist.get(i).getChennelName();
			String status = applicationlist.get(i).getStatus();
			String entryDate = applicationlist.get(i).getEntryDate();
			String day = applicationlist.get(i).getDay().trim();
			if(status.equals("0")){
				flag = "Pending";
			}else if(status.equals("1")){
				flag = "Approved";
			}else{
				flag ="Rejected";
			}
			
	        JSONObject formDetailsJson = new JSONObject();
	        formDetailsJson.put("applicationID", applicationID);
	        formDetailsJson.put("channelID", channelID);
	        formDetailsJson.put("channelName", channelName);
	        formDetailsJson.put("flag", flag);
	        formDetailsJson.put("entryDate",entryDate);
	        formDetailsJson.put("day",day);
	        
	       jsonArray.add(formDetailsJson);
	    }
	    responseDetailsJson.put("data", jsonArray);//Here you can see the data in json format
	    out.print(responseDetailsJson);
		
%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Vector" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Vector" %>
<%@ page import="tcms.presentation.*" %> 
<%@ page import="tcms.configuration.*" %> 
<%@ page import="net.sf.json.*" %>

<%

	String zone_id = request.getParameter("zone_id");
	String content_type_id = request.getParameter("content_type_id");
	String identifier = request.getParameter("identifier");
	
	
	java.util.List<Dashboard> list = Dashboard.getZoneChannelList(zone_id, content_type_id);
	
	JSONObject responseDetailsJson = new JSONObject();
    JSONArray jsonArray = new JSONArray();

    for(int i = 0; i<list.size(); i ++) {
    	
    	String id = list.get(i).getChannel_id();
    	String channel_name = list.get(i).getChannel_name() ;
		String region_name = list.get(i).getRegion_name();
		String license_category_name = list.get(i).getLicense_category_name();
		
		
        JSONObject formDetailsJson = new JSONObject();
        formDetailsJson.put("id", id);
        formDetailsJson.put("channel_name", channel_name);
        formDetailsJson.put("region_name", region_name);
        formDetailsJson.put("license_category_name", license_category_name);
       jsonArray.add(formDetailsJson);
    }
    responseDetailsJson.put("data", jsonArray);//Here you can see the data in json format
    out.print(responseDetailsJson);
	System.out.println(responseDetailsJson);
	
	

%>
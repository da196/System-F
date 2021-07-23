<%@ page import="java.util.*" %>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Vector" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Vector" %>
<%@ page import="tcms.presentation.*" %> 
<%@ page import="tcms.configuration.*" %> 
<%@ page import="net.sf.json.*" %>
<%

	String file_date = request.getParameter("file_date");
	String start_time = request.getParameter("start_time");
	String end_time = request.getParameter("end_time");
	String channel_id = request.getParameter("channel_id");
	String user_id = request.getParameter("user_id");
	String identifier = request.getParameter("identifier");
	
	
	java.util.List<NewsIndexCard> list = NewsIndexCard.getNewsIndexCardList(channel_id, file_date, start_time, end_time, user_id);
	
	JSONObject responseDetailsJson = new JSONObject();
    JSONArray jsonArray = new JSONArray();

    for(int i = 0; i<list.size(); i ++) {
    	
    	String id = list.get(i).getID();
    	String channel_name = Channels.getChannelName(list.get(i).getChannel_id()) ;
		String news_type = NewsCategory.getNewsCategoryName(list.get(i).getNews_type());
		String news_item_description = list.get(i).getNews_item_description();
		String news_item_duration = list.get(i).getNews_item_start_timen() +" - " + list.get(i).getNews_item_end_time();
		String cdate = list.get(i).getContent_date();
		
        JSONObject formDetailsJson = new JSONObject();
        formDetailsJson.put("id", id);
        formDetailsJson.put("channel_name", channel_name);
        formDetailsJson.put("cdate", cdate);
        formDetailsJson.put("news_type", news_type);
        formDetailsJson.put("news_item_description", news_item_description);
        formDetailsJson.put("news_item_duration", news_item_duration);
        
       jsonArray.add(formDetailsJson);
    }
    responseDetailsJson.put("data", jsonArray);//Here you can see the data in json format
    out.print(responseDetailsJson);
	//System.out.println(responseDetailsJson);
	
	

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="tcms.configuration.*" %> 
<%@ page import="java.io.PrintWriter" %> 
<% 
	String channelName = request.getParameter("channelName"); 
	String contentTypeID = request.getParameter("contentTypeID"); 
	String regionID = request.getParameter("regionID"); 
	String licenseCategoryID = request.getParameter("licenseCategoryID");
	String urlPath = request.getParameter("urlPath"); 
	String identifier = request.getParameter("identifier");
	String channelID = request.getParameter("channel_id"); 
	
	
	
	
	if(identifier.equals("1")){
		java.util.List<Channels> channelChecker = Channels.checkChannel(channelName);
		
		if(channelChecker.size() == 0){
		Long _status = Channels.AddChannels(channelName, contentTypeID, licenseCategoryID, regionID, urlPath);
		 if(_status > 0) {
			   PrintWriter printWriter = response.getWriter();
			   printWriter.print("{\"status\":1}");
		 }else{
			 PrintWriter printWriter = response.getWriter();
			   printWriter.print("{\"status\":2}");
		 }
		}else{
			 PrintWriter printWriter = response.getWriter();
			   printWriter.print("{\"status\":3}");
		}
		
	}else if(identifier.equals("2")){
		java.util.List<Channels> list = Channels.GetChannel(channelID);

		for(int i=0; i < list.size(); i++){
			String license_category_name = Lookup.getLicenseCategoryName(list.get(i).getLicenseCategoryID());
			
			out.print(list.get(i).getChannelName() + "|" + list.get(i).getContentTypeID() 
					+ "|" + list.get(i).getRegionID() + "|" + list.get(i).getLicenseCategoryID() 
					+ "|" + list.get(i).getUrlPath() + "|" + list.get(i).getChannelID()
					+ "|" + license_category_name);
		}
		
	}else if(identifier.equals("3")){
		
		Long _status = Channels.UpdateChannel(channelID, channelName, contentTypeID, licenseCategoryID, regionID, urlPath, "");
		 if(_status > 0) {
			   PrintWriter printWriter = response.getWriter();
			   printWriter.print("{\"status\":1}");
		 }else{
			 PrintWriter printWriter = response.getWriter();
			   printWriter.print("{\"status\":2}");
		 }
		
	}
	
%>
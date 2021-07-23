<%@ page import="java.util.*" %>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Vector" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Vector" %>
<%@ page import="tcms.analysis.*" %>
<%@ page import="java.io.PrintWriter" %> 
<%@ page import="net.sf.json.JSONObject" %>
<%@page import="net.sf.ezmorph.Morpher"%>


<%
	String channel_id = request.getParameter("channel_id");  
	String analyzed_date = request.getParameter("analyzed_date");  
	String language = request.getParameter("language");  
	String news_category_id = request.getParameter("news_category_id"); 
	
	java.util.List<String> yesList = NewsSponsorship.getYesLocalNewsSponsorship(channel_id, analyzed_date, language, news_category_id);
	java.util.List<String> naList =  NewsSponsorship.getNoLocalNewsSponsorship(channel_id, analyzed_date, language, news_category_id);
	java.util.List<String> noList = NewsSponsorship.getNALocalNewsSponsorship(channel_id, analyzed_date, language, news_category_id);

		JSONObject json = new JSONObject();

		long sponsor_local_news = Long.parseLong(yesList.get(0));
		long number_advert_aired = Long.parseLong(yesList.get(1));
		long sponsor_logo_proper_placed = Long.parseLong(yesList.get(2));
		long advert_accuracy = Long.parseLong(yesList.get(3));
		long advert_facts = Long.parseLong(yesList.get(4));
		long separation_programme = Long.parseLong(yesList.get(5));

		long sponsor_local_news_no = Long.parseLong(yesList.get(0));
		long number_advert_aired_no = Long.parseLong(yesList.get(1));
		long sponsor_logo_proper_placed_no = Long.parseLong(yesList.get(2));
		long advert_accuracy_no = Long.parseLong(yesList.get(3));
		long advert_facts_no = Long.parseLong(yesList.get(4));
		long separation_programme_no = Long.parseLong(yesList.get(5));
		
		long sponsor_local_news_na = Long.parseLong(yesList.get(0));
		long number_advert_aired_na = Long.parseLong(yesList.get(1));
		long sponsor_logo_proper_placed_na = Long.parseLong(yesList.get(2));
		long advert_accuracy_na = Long.parseLong(yesList.get(3));
		long advert_facts_na = Long.parseLong(yesList.get(4));
		long separation_programme_na = Long.parseLong(yesList.get(5));
		
		json.accumulate("sponsor_local_news", sponsor_local_news);
		json.accumulate("number_advert_aired", number_advert_aired);
		json.accumulate("sponsor_logo_proper_placed", sponsor_logo_proper_placed);
		json.accumulate("advert_accuracy", advert_accuracy);
		json.accumulate("advert_facts", advert_facts);
		json.accumulate("separation_programme", separation_programme);

		
		json.accumulate("sponsor_local_news_no", sponsor_local_news_no);
		json.accumulate("number_advert_aired_no", number_advert_aired_no);
		json.accumulate("sponsor_logo_proper_placed_no", sponsor_logo_proper_placed_no);
		json.accumulate("advert_accuracy_no", advert_accuracy_no);
		json.accumulate("advert_facts_no", advert_facts_no);
		json.accumulate("separation_programme_no", separation_programme_no);

		json.accumulate("sponsor_local_news_na", sponsor_local_news_na);
		json.accumulate("number_advert_aired_na", number_advert_aired_na);
		json.accumulate("sponsor_logo_proper_placed_na", sponsor_logo_proper_placed_na);
		json.accumulate("advert_accuracy_na", advert_accuracy_na);
		json.accumulate("advert_facts_na", advert_facts_na);
		json.accumulate("separation_programme_na", separation_programme_na);

		
		out.print(json.toString());
		//System.out.println(json.toString());
%>





<%@ page import="java.util.*" %>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Vector" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Vector" %>
<%@ page import="tcms.presentation.*" %> 
<%@ page import="tcms.configuration.*" %> 
<%@ page import="java.io.PrintWriter" %> 
<%
try{
	String content_date = request.getParameter("file_date");
	String start_time = request.getParameter("start_time");
	String end_time = request.getParameter("end_time");
	String channel_id = request.getParameter("channel_id");
	String contentType = request.getParameter("contentType");
	String scheduled_time = request.getParameter("programTime");
	String language_used = request.getParameter("language");
	String news_type = request.getParameter("typeNews");
	String programme_duration = request.getParameter("durationProgramme");
	String programme_name = request.getParameter("programmeName");
	String news_accuracy = request.getParameter("accuracy");
	String news_impartial = request.getParameter("impartail");
	String news_fair = request.getParameter("fair");
	String news_balance = request.getParameter("Balanced");
	String fact_distortion = request.getParameter("factsDistortion");
	String accepted_picture = request.getParameter("pictureGoodTaste");
	String disclose_idnty_victim_chld = request.getParameter("dicloseVictimChildren");
	String proper_pronounciation = request.getParameter("properPronunciations");
	String number_news_items = request.getParameter("numberNewsItems");
	String news_headline = request.getParameter("firstHeadline");
	String sign_language_interpreter = request.getParameter("signLanguage");
	String general_news_reg_breached = request.getParameter("newsRegulationBreached");
	String sponsor_local_news = request.getParameter("sponsorshipLocalNews");
	String number_advert_aired = request.getParameter("noofAdvertsAired");
	String sponsor_logo_proper_placed = request.getParameter("sponsorshipLogo");
	String advert_accuracy = request.getParameter("advertAccuracy");
	String advert_facts = request.getParameter("advertFactsPresentation");
	String separation_programme = request.getParameter("separationProgramme");
	String general_observations_reg_breached = request.getParameter("sponsorRegulationBreached");
	String newsItemDescription = request.getParameter("newsItemDescription");
	String newsItemStartTime = request.getParameter("newsItemStartTime");
	String newsItemEndTime = request.getParameter("newsItemEndTime");
	String user_id = request.getParameter("user_id");

	Long checker = NewsIndexCard.checker(news_type, content_date, start_time, end_time, number_news_items, user_id, channel_id);
	
	if(checker == 0){
		int status = NewsIndexCard.setNewsIndexCard(programme_name, scheduled_time, language_used, news_type, programme_duration, news_accuracy, news_impartial, 
				news_fair, news_balance, fact_distortion, accepted_picture, disclose_idnty_victim_chld, proper_pronounciation, number_news_items, news_headline, 
				sign_language_interpreter, sponsor_local_news, number_advert_aired, sponsor_logo_proper_placed, advert_accuracy, advert_facts, 
				general_observations_reg_breached, channel_id, content_date, start_time, end_time, user_id, 
				general_news_reg_breached, newsItemDescription,newsItemStartTime,newsItemEndTime,separation_programme);	
		PrintWriter printWriter = response.getWriter();
		printWriter.print("{\"status\":1}");
	}else{
		PrintWriter printWriter = response.getWriter();
		printWriter.print("{\"status\":2}");
	}
}catch(Exception er){
	er.printStackTrace();
}

%>
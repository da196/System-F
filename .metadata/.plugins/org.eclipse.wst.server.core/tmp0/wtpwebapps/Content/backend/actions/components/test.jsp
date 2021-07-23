<%@ page import="java.util.*" %>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Vector" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Vector" %>
<%@ page import="tcms.presentation.*" %> 
<%@ page import="tcms.configuration.*" %> 
<%@ page import="java.io.PrintWriter" %> 
<%
	System.out.println("Test");
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
String separationProgramme = request.getParameter("separationProgramme");
String general_observations_reg_breached = request.getParameter("sponsorRegulationBreached");
String newsItemDescription = request.getParameter("newsItemDescription");
String newsItemStartTime = request.getParameter("newsItemStartTime");
String newsItemEndTime = request.getParameter("newsItemEndTime");
String user_id = request.getParameter("user_id");

%>
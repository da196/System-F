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
	String start_time= request.getParameter("start_time");
	String end_time = request.getParameter("end_time");
	String chanel_id = request.getParameter("channel_id");
	String scheduled_time = request.getParameter("programTime");
	String language_used = request.getParameter("language");
	String news_type = request.getParameter("typeNews");
	String programme_duration = request.getParameter("durationProgramme");
	String programme_name = request.getParameter("programmeName");
	String accuracy = request.getParameter("accuracy");
	String impartial = request.getParameter("impartial");
	String fair = request.getParameter("fair");
	String balance = request.getParameter("balanced");
	String fact_distortion = request.getParameter("factsDistortion");
	String number_news = request.getParameter("numberNewsItems");
	String period_id = request.getParameter("timeNewsItem");
	String political_party_id = request.getParameter("politicalParty");
	String opinion_poll = request.getParameter("opinionPull");
	String defamation = request.getParameter("defamation");
	String content_item_description = request.getParameter("newsItemDescription");
	String content_item_start_time = request.getParameter("newsItemStartTime");
	String content_item_end_time = request.getParameter("newsItemEndTime");
	String presenter_name = request.getParameter("hostname");
	String interviewee_name = request.getParameter("interviewName");
	String general_observations_reg_breached = request.getParameter("newsRegulationBreached");
	String presenter_wearing_symbols = request.getParameter("presenter_wearing_symbols");
	String presenter_wearing_party_symbol = request.getParameter("public_involvement");
	String user_id = request.getParameter("user_id");

	int checker = 0;

	int  status= NewsElectionCard.setElectionIndexCard(programme_name, content_date, start_time, end_time, language_used, news_type, 
				programme_duration, accuracy, impartial, fair, balance, fact_distortion, defamation, number_news, scheduled_time, 
				presenter_name, interviewee_name, presenter_wearing_symbols, opinion_poll, general_observations_reg_breached, 
				user_id, chanel_id, period_id, political_party_id, content_item_description, content_item_start_time, 
				content_item_end_time, presenter_wearing_party_symbol);
	
	if(status > 0){
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
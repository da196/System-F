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
	String contentType = request.getParameter("contentType");
	String programme_name = request.getParameter("programmeName");
	String content_date = request.getParameter("file_date");
	String start_time = request.getParameter("start_time");
	String end_time = request.getParameter("end_time");
	String language_used = request.getParameter("language");
	String programme_type = request.getParameter("typeNews");  //content_category_id
	String programme_duration = request.getParameter("durationProgramme");
	String education_content  = request.getParameter("educationalContent");
	String cultural_identity  = request.getParameter("culturalIdentity");
	String use_offensive_language  = request.getParameter("useOffensiveLanguage");
	String obs_water_shed_period  = request.getParameter("observeWatershedPeriod");
	String accepted_picture  = request.getParameter("accepted_picture");
	String sign_language_interpreter  = request.getParameter("signLanguageInterpreter");
	String producer_independent  = request.getParameter("producer");
	String disclose_name_producer  = request.getParameter("discloseNameProducer");
	String family_viewing_classification  = request.getParameter("familyViewing");
	String general_observations_reg_breached  = request.getParameter("newsRegulationBreached");
	String user_id = request.getParameter("user_id");
	String channel_id = request.getParameter("channel_id");
	String content_nat_interest_id  = request.getParameter("eventNationalInterest");
	String scheduled_time = request.getParameter("programTime");
	String news_item_description = request.getParameter("newsItemDescription");
	String news_item_start_time = request.getParameter("newsItemStartTime");
	String news_item_end_time = request.getParameter("newsItemEndTime");

	Long checker = NewsLocalIndexCard.checker(programme_name, content_date, start_time, end_time, programme_type, 
			user_id, channel_id, news_item_description, news_item_start_time, news_item_end_time);
	System.out.println(checker);
	if(checker == 0){
		int status = NewsLocalIndexCard.setLocalNewsIndexCard(programme_name, content_date, start_time, end_time, language_used, 
				programme_type, programme_duration, education_content, cultural_identity, use_offensive_language, 
				obs_water_shed_period, content_nat_interest_id, accepted_picture, sign_language_interpreter, 
				producer_independent, disclose_name_producer, family_viewing_classification, general_observations_reg_breached, 
				user_id, channel_id, content_nat_interest_id, news_item_description, news_item_start_time, news_item_end_time, 
				scheduled_time);
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
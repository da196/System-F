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
	java.util.List<String> naList = NewsStandard.getNALocalNewsStandard(channel_id, analyzed_date, language, news_category_id);
	java.util.List<String> yesList = NewsStandard.getYesLocalNewsStandard(channel_id, analyzed_date, language, news_category_id);
	java.util.List<String> noList = NewsStandard.getNoLocalNewsStandard(channel_id, analyzed_date, language, news_category_id);

		JSONObject json = new JSONObject();

		long Accuracy = Long.parseLong(yesList.get(0));
		long Impartial = Long.parseLong(yesList.get(1));
		long Fair = Long.parseLong(yesList.get(2));
		long Balanced = Long.parseLong(yesList.get(3));
		long FactsDistortion = Long.parseLong(yesList.get(4));
		long Picture = Long.parseLong(yesList.get(5));
		long DisVictimChildren = Long.parseLong(yesList.get(6));
		long ProperPronunciation = Long.parseLong(yesList.get(7));
		long SignLanguage = Long.parseLong(yesList.get(8));
		
		long AccuracyNo = Long.parseLong(noList.get(0));
		long ImpartialNo = Long.parseLong(noList.get(1));
		long FairNo = Long.parseLong(noList.get(2));
		long BalancedNo = Long.parseLong(noList.get(3));
		long FactsDistortionNo = Long.parseLong(noList.get(4));
		long PictureNo = Long.parseLong(noList.get(5));
		long DisVictimChildrenNo = Long.parseLong(noList.get(6));
		long ProperPronunciationNo = Long.parseLong(noList.get(7));
		long SignLanguageNo = Long.parseLong(noList.get(8));
		
		long AccuracyNA = Long.parseLong(naList.get(0));
		long ImpartialNA = Long.parseLong(naList.get(1));
		long FairNA = Long.parseLong(naList.get(2));
		long BalancedNA = Long.parseLong(naList.get(3));
		long FactsDistortionNA = Long.parseLong(naList.get(4));
		long PictureNA = Long.parseLong(naList.get(5));
		long DisVictimChildrenNA = Long.parseLong(naList.get(6));
		long ProperPronunciationNA = Long.parseLong(naList.get(7));
		long SignLanguageNA = Long.parseLong(naList.get(8));
		
		json.accumulate("Accuracy", Accuracy);
		json.accumulate("Impartial", Impartial);
		json.accumulate("Fair", Fair);
		json.accumulate("Balanced", Balanced);
		json.accumulate("FactsDistortion", FactsDistortion);
		json.accumulate("Picture", Picture);
		json.accumulate("DisVictimChildren", DisVictimChildren);
		json.accumulate("ProperPronunciation", ProperPronunciation);
		json.accumulate("SignLanguage", SignLanguage);
		
		json.accumulate("AccuracyNo", AccuracyNo);
		json.accumulate("ImpartialNo", ImpartialNo);
		json.accumulate("FairNo", FairNo);
		json.accumulate("BalancedNo", BalancedNo);
		json.accumulate("FactsDistortionNo", FactsDistortionNo);
		json.accumulate("PictureNo", PictureNo);
		json.accumulate("DisVictimChildrenNo", DisVictimChildrenNo);
		json.accumulate("ProperPronunciationNo", ProperPronunciationNo);
		json.accumulate("SignLanguageNo", SignLanguageNo);

		json.accumulate("AccuracyNA", AccuracyNA);
		json.accumulate("ImpartialNA", ImpartialNA);
		json.accumulate("FairNA", FairNA);
		json.accumulate("BalancedNA", BalancedNA);
		json.accumulate("FactsDistortionNA", FactsDistortionNA);
		json.accumulate("PictureNA", PictureNA);
		json.accumulate("DisVictimChildrenNA", DisVictimChildrenNA);
		json.accumulate("ProperPronunciationNA", ProperPronunciationNA);
		json.accumulate("SignLanguageNA", SignLanguageNA);
		
		out.print(json.toString());
		//System.out.println(json.toString());
%>





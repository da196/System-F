/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.42
 * Generated at: 2020-01-23 13:43:51 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.backend.actions.components;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import java.text.*;
import java.util.Vector;
import java.util.Vector;
import tcms.presentation.*;
import tcms.configuration.*;
import java.io.PrintWriter;

public final class newsIndexCardAction_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("java.util");
    _jspx_imports_packages.add("java.text");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("tcms.presentation");
    _jspx_imports_packages.add("tcms.configuration");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.io.PrintWriter");
    _jspx_imports_classes.add("java.util.Vector");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write(" \r\n");
      out.write(" \r\n");

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


    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
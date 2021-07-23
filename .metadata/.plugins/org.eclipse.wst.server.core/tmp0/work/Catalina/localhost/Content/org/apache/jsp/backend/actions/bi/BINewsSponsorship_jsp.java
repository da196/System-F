/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.42
 * Generated at: 2020-01-21 12:20:33 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.backend.actions.bi;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import java.text.*;
import java.util.Vector;
import java.util.Vector;
import tcms.analysis.*;
import java.io.PrintWriter;
import net.sf.json.JSONObject;
import net.sf.ezmorph.Morpher;

public final class BINewsSponsorship_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_packages.add("tcms.analysis");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.io.PrintWriter");
    _jspx_imports_classes.add("java.util.Vector");
    _jspx_imports_classes.add("net.sf.ezmorph.Morpher");
    _jspx_imports_classes.add("net.sf.json.JSONObject");
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
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
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
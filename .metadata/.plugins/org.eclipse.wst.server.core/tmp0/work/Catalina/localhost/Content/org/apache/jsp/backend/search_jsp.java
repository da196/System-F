/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.42
 * Generated at: 2020-04-07 09:42:54 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.backend;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import tcms.configuration.*;
import tcms.presentation.*;
import tcms.errorLogs.*;
import java.util.*;
import java.io.*;

public final class search_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_packages.add("tcms.errorLogs");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("java.io");
    _jspx_imports_packages.add("tcms.presentation");
    _jspx_imports_packages.add("tcms.configuration");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;


response.setHeader("Cache-control", "no-cache");
response.setHeader("Cache-control", "no-store");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expire",0);

if (session.getAttribute("userID") != null && session.getAttribute("roleID").equals("3") ) {

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!-- Start header -->\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "includes/header.jsp", out, false);
      out.write("\n");
      out.write("<!-- End header -->\n");
      out.write("\n");
      out.write("<!-- Start Top header View -->\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "includes/topView.jsp", out, false);
      out.write("\n");
      out.write("<!-- End Top Header View -->\n");
      out.write("\n");
      out.write("<!-- Start SideBar View -->\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "includes/sideView.jsp", out, false);
      out.write("\n");
      out.write("<!-- End SideBar View -->\n");
      out.write("\n");
      out.write("<style>\n");
      out.write("#overlay {\n");
      out.write("    position: fixed;\n");
      out.write("    display: none;\n");
      out.write("    width: 100%;\n");
      out.write("    height: 100%;\n");
      out.write("    top: 0;\n");
      out.write("    left: 0;\n");
      out.write("    right: 0;\n");
      out.write("    bottom: 0;\n");
      out.write("\n");
      out.write("    z-index: 2;\n");
      out.write("    cursor: pointer;\n");
      out.write("    background: url('img/loading1.gif') 50% 50% no-repeat rgb(0,0,0,0.5);\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("\n");
      out.write("function getContent(){\n");
      out.write("\t\n");
      out.write("\tvar contentType = document.getElementById(\"contentType\").value;\n");
      out.write("\tvar file_date = document.getElementById(\"inputDate\").value; \n");
      out.write("\tvar start_time = document.getElementById(\"startTime\").value; \n");
      out.write("\tvar end_time = document.getElementById(\"endTime\").value; \n");
      out.write("\tvar channel_id = document.getElementById(\"channel\").value; \n");
      out.write("\tvar program = document.getElementById(\"program\").value;\n");
      out.write("\tvar identifier = document.getElementById(\"search\").value; \n");
      out.write("\t\n");
      out.write("\tif (contentType == \"\") {\n");
      out.write("\t\talert(\"Please select Content Type!\");\n");
      out.write("\t\tdie(\"\");\n");
      out.write("\t}\n");
      out.write("\tif (file_date == \"\") {\n");
      out.write("\t\talert(\"Please select date\");\n");
      out.write("\t\tdie(\"\");\n");
      out.write("\t}\n");
      out.write("\tif (channel_id == \"\") {\n");
      out.write("\t\talert(\"Please select Channel!\");\n");
      out.write("\t\tdie(\"\");\n");
      out.write("\t}\n");
      out.write("\tif (start_time == \"\" || end_time ==\"\") {\n");
      out.write("\t\talert(\"Please enter time\");\n");
      out.write("\t\tdie(\"\");\n");
      out.write("\t}\n");
      out.write("\t\n");
      out.write("\telse{\n");
      out.write("\tdocument.getElementById(\"overlay\").style.display = \"block\";\n");
      out.write("\t $.ajax({\n");
      out.write("\t     type: \"post\",\n");
      out.write("\t      url: \"actions/components/search_content.jsp\", //this is my servlet\n");
      out.write("\t       data: {\n");
      out.write("\t    \t   file_date: file_date,\n");
      out.write("\t    \t   start_time:start_time,\n");
      out.write("\t    \t   end_time:end_time,\n");
      out.write("\t    \t   channel_id: channel_id,\n");
      out.write("\t    \t   identifier: identifier,\n");
      out.write("\t    \t   program: program,\n");
      out.write("\t    \t   contentType: contentType\n");
      out.write("\t           }, \n");
      out.write("\t          success: function(msg){  \n");
      out.write("\t              var filename = msg.trim();\n");
      out.write("\t        \t  \n");
      out.write("\t\t          document.getElementById(\"overlay\").style.display = \"none\";\n");
      out.write("\t\t          document.getElementById(\"filename\").value = filename\n");
      out.write("\t\t          if(contentType == 1)  {\n");
      out.write("\t\t        \t  $(\"#search_player\").show();\n");
      out.write("\t\t        \t  $(\"#video\").show();\n");
      out.write("\t\t\t          $(\"#audio\").hide();\n");
      out.write("\t\t\t  \n");
      out.write("\t\t        \t  $(\"#classic-video\").attr(\"src\",\"../../mergeFiles/\" + filename);\n");
      out.write("\t\t          }else{\n");
      out.write("\t\t        \t  $(\"#search_player\").show();\n");
      out.write("\t\t        \t  $(\"#audio\").show();\n");
      out.write("\t\t\t          $(\"#video\").hide();\n");
      out.write("\t\t\n");
      out.write("\t\t        \t  $(\"#classic-audio\").attr(\"src\",\"../../mergeFiles/\" + filename);\n");
      out.write("\t\t          }\n");
      out.write("\t        \t \n");
      out.write("\t          }\n");
      out.write("\t     });\n");
      out.write("\t}\n");
      out.write("}\n");
      out.write("\n");
      out.write("function trimAudioVideo(){\n");
      out.write("\t\n");
      out.write("\tvar filename = document.getElementById(\"filename\").value;\n");
      out.write("\tvar title = document.getElementById(\"title\").value;\n");
      out.write("\tvar description = document.getElementById(\"description\").value;\n");
      out.write("\tvar identifier = document.getElementById(\"trim\").value; \n");
      out.write("\tvar channel_id = document.getElementById(\"channel\").value; \n");
      out.write("\tvar contentType = document.getElementById(\"contentType\").value;\n");
      out.write("\t\n");
      out.write("\tvar hh_from = document.getElementById(\"hh_from\").value;\n");
      out.write("\tvar mm_from = document.getElementById(\"mm_from\").value;\n");
      out.write("\tvar ss_from = document.getElementById(\"ss_from\").value;\n");
      out.write("\tvar hh_duration = document.getElementById(\"hh_duration\").value;\n");
      out.write("\tvar mm_duration = document.getElementById(\"mm_duration\").value;\n");
      out.write("\tvar ss_duration = document.getElementById(\"ss_duration\").value;\n");
      out.write("\t\n");
      out.write("\tvar cut_from = hh_from + \":\" + mm_from + \":\" + ss_from;\n");
      out.write("\t//var duration = (hh_duration - hh_from) + \":\" + (mm_duration - mm_from) + \":\" + (ss_duration - ss_from);\n");
      out.write("\tvar duration = hh_duration + \":\" + mm_duration+ \":\" + ss_duration ;\n");
      out.write("\n");
      out.write("\tif (filename == \"\") {\n");
      out.write("\t\talert(\"No File to trim please retrive the file\");\n");
      out.write("\t\tdie(\"\");\n");
      out.write("\t}\n");
      out.write("\tif (channel_id == \"\") {\n");
      out.write("\t\talert(\"Please select Channel!\");\n");
      out.write("\t\tdie(\"\");\n");
      out.write("\t}\n");
      out.write("\tif (cut_from == \"\") { \n");
      out.write("\t\talert(\"Please cut from\");\n");
      out.write("\t\tdie(\"\");\n");
      out.write("\t}\n");
      out.write("\tif (duration ==\"\") {\n");
      out.write("\t\talert(\"Please enter duration\");\n");
      out.write("\t\tdie(\"\");\n");
      out.write("\t}\n");
      out.write("\tif (title ==\"\") {\n");
      out.write("\t\talert(\"Please enter title\");\n");
      out.write("\t\tdie(\"\");\n");
      out.write("\t}\n");
      out.write("\telse{\n");
      out.write("\tdocument.getElementById(\"overlay\").style.display = \"block\";\n");
      out.write("\t $.ajax({\n");
      out.write("\t     type: \"post\",\n");
      out.write("\t      url: \"actions/components/search_content.jsp\", //this is my servlet\n");
      out.write("\t       data: {\n");
      out.write("\t    \t   filename: filename,\n");
      out.write("\t    \t   cut_from: cut_from,\n");
      out.write("\t    \t   duration: duration,\n");
      out.write("\t    \t   title: title,\n");
      out.write("\t    \t   description: description,\n");
      out.write("\t    \t   identifier: identifier,\n");
      out.write("\t    \t   channel_id: channel_id,\n");
      out.write("\t    \t   contentType: contentType\n");
      out.write("\t           }, \n");
      out.write("\t          success: function(msg){  \n");
      out.write("\t        \tdocument.getElementById(\"overlay\").style.display = \"none\";\n");
      out.write("\t        \t\n");
      out.write("\t        \t  var response = JSON.parse(msg);\n");
      out.write("                  var status = response.status;\n");
      out.write("                  if (status == 1) {\n");
      out.write("                        alert(\"File Successfully Generated. Click on Library menu to view and download!\");\n");
      out.write("                        location.reload();\n");
      out.write("                        document.getElementById(\"filename\").value = \"\";\n");
      out.write("                    \tdocument.getElementById(\"cut_from\").value = \"\";\n");
      out.write("                    \tdocument.getElementById(\"duration\").value = \"\";\n");
      out.write("                    \tdocument.getElementById(\"title\").value = \"\";\n");
      out.write("                    \tdocument.getElementById(\"description\").value = \"\";\n");
      out.write("                    \tdocument.getElementById(\"channel\").value = \"\";\n");
      out.write("                    \tdocument.getElementById(\"contentType\").value = \"\";\n");
      out.write("\t\t\t\t\t\tdocument.getElementById(\"inputDate\").value = \"\"; \n");
      out.write("                    \tdocument.getElementById(\"startTime\").value = \"\"; \n");
      out.write("                    \tdocument.getElementById(\"endTime\").value = \"\"; \n");
      out.write("                    \tdocument.getElementById(\"program\").value = \"\";\n");
      out.write("                                   \t\t    \n");
      out.write("                    } else {\n");
      out.write("                    \t\n");
      out.write("                        alert(\"Error!.. File Couldn't Generated\");\n");
      out.write("                        \n");
      out.write("                    }\n");
      out.write("                },\n");
      out.write("                error : function(msg) {\n");
      out.write("                \t alert(\"Error!.. File Couldn't Generated\");\n");
      out.write("                    \n");
      out.write("                }\n");
      out.write("\t     });\n");
      out.write("\t}\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("<div id=\"overlay\"></div>\n");
      out.write("<input type=\"hidden\" id=\"filename\" />\n");
      out.write("<input type=\"hidden\" id=\"search\" value=\"search\" />\n");
      out.write("<input type=\"hidden\" id=\"trim\" value=\"trim\" />\n");
      out.write("\n");
      out.write("      <main class=\"main\">\n");
      out.write("         <!-- Breadcrumb-->\n");
      out.write("         <ol class=\"breadcrumb\">\n");
      out.write("          <li class=\"breadcrumb-item\">Home</li>\n");
      out.write("          <li class=\"breadcrumb-item\">\n");
      out.write("            Components\n");
      out.write("          </li>   \n");
      out.write("          <li class=\"breadcrumb-item\">\n");
      out.write("            <a href=\"search.jsp\">Search</a>\n");
      out.write("          </li>   \n");
      out.write("        </ol>        \n");
      out.write("        <!-- Breadcrumb-->\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("          <div class=\"animated fadeIn\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("              <div class=\"col-sm-12 col-xl-12\">\n");
      out.write("              \n");
      out.write("                <div class=\"card\">\n");
      out.write("                  <div class=\"card-header\">\n");
      out.write("                    <i class=\"fa fa-align-justify\"></i> Search for the Content Playback             \n");
      out.write("                  </div>\n");
      out.write("\n");
      out.write("                  <div class=\"card-body\">                  \n");
      out.write("\n");
      out.write("                     <!-- Start Search for the content --> \n");
      out.write("                                        \n");
      out.write("               <!--     <form class=\"form-horizontal\"  action=\"\" method=\"post\">\t-->\n");
      out.write("\t      \t\t\t  <div class=\"form-group row\">\n");
      out.write("\n");
      out.write("\t\t\t      \t\t\t   <div class=\"form-group col-sm-10\">\n");
      out.write("\t\t\t      \t\t\t   \n");
      out.write("\t\t\t\t      \t\t\t   <div class=\"form-group row\">\n");
      out.write("\t\t\t\t      \t\t\t   \n");
      out.write("\t\t\t\t      \t\t\t        <div class=\"form-group col-sm-3\">\n");
      out.write("\t\t\t\t      \t\t\t        <label for=\"source\"><strong>Content Type</strong></label>\n");
      out.write("\t\t\t\t\t\t                <select class=\"form-control\" id=\"contentType\" name=\"contentType\" >\n");
      out.write("\t\t\t\t\t\t\t \t\t\t<option value=\"\">-- Content Type -- </option>\n");
      out.write("\t\t\t\t\t\t \t \t\t\t");

						 	 			File errorLogs = null;
						                String errorLogFile = Utility.getPath();
						                errorLogs = new File(errorLogFile);
										try{
													                    
										java.util.List<Lookup> contentList = Lookup.GetContentTypeList();
													
										for (int i = 0; i < contentList.size(); i++){
											
										
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<option value=\"");
 out.print(contentList.get(i).getId());
      out.write('"');
      out.write('>');
      out.write(' ');
 out.print(contentList.get(i).getName()); 
      out.write(" </option>\t\t\t\t\t\t\t\t      \n");
      out.write("\t\t\t\t\t\t\t\t\t\t ");

										}
										}catch(Exception er){
											er.printStackTrace();
										ErrorLogsAppender.appendException("Search.jsp page", er, errorLogs);
										}
						 	 			
      out.write("\n");
      out.write("\t\t\t\t\t\t\t \t\t\t</select>\n");
      out.write("\t\t\t      \t\t\t            </div>\n");
      out.write("\t\t\t      \t\t\t            \n");
      out.write("\t\t\t      \t\t\t            <div class=\"form-group col-sm-3\">\n");
      out.write("\t\t\t      \t\t\t  \t\t\t<label for=\"source\"><strong>Date</strong></label>\n");
      out.write("\t\t\t      \t\t\t  \t\t\t<input class=\"form-control\" id=\"inputDate\" type=\"date\" name=\"inputDate\">  \n");
      out.write("\t\t\t      \t\t\t            </div>\n");
      out.write("\t\t\t      \t\t\t            \n");
      out.write("\t\t\t      \t\t\t            <div class=\"form-group col-sm-3\">\n");
      out.write("\t\t\t      \t\t\t            <label for=\"source\"><strong>Start Time</strong></label>\n");
      out.write("\t\t\t      \t\t\t  \t\t\t<input class=\"form-control\" id=\"startTime\" type=\"time\" name=\"startTime\"> \n");
      out.write("\t\t\t      \t\t\t            </div>\n");
      out.write("\t\t\t      \t\t\t            \n");
      out.write("\t\t\t      \t\t\t            <div class=\"form-group col-sm-3\">\n");
      out.write("\t\t\t      \t\t\t  \t\t\t<label for=\"source\"><strong>End Time</strong></label>\n");
      out.write("\t\t\t      \t\t\t  \t\t\t<input class=\"form-control\" id=\"endTime\" type=\"time\" name=\"endTime\" placeholder=\"11:20 AM\">\n");
      out.write("\t\t\t      \t\t\t            </div>\n");
      out.write("\t\t\t\t      \t\t\t   \n");
      out.write("\t\t\t\t      \t\t\t   </div>\n");
      out.write("\t\t\t\t      \t\t\t   \n");
      out.write("\t\t\t\t      \t\t\t   \n");
      out.write("\t\t\t\t      \t\t\t   <div class=\"form-group row\">\n");
      out.write("\t\t\t\t      \t\t\t   \n");
      out.write("\t\t\t\t      \t\t\t        <div id=\"channel_id\" class=\"form-group col-sm-3\">\n");
      out.write("\t\t\t\t      \t\t\t            <label for=\"channel\"><strong>Channel Name</strong></label>\n");
      out.write("\t\t\t\t\t                        <select class=\"form-control\" name=\"channel\" id=\"channel\" >\n");
      out.write("\t\t\t\t\t                        <option value=\"\">-- Channel Name -- </option>\n");
      out.write("\t\t\t\t\t                       \n");
      out.write("\t\t\t\t\t                        </select>\t\t\t      \t\t\t  \n");
      out.write("\t\t\t      \t\t\t            </div>\n");
      out.write("\t\t\t      \t\t\t            \n");
      out.write("\t\t\t      \t\t\t            <div class=\"form-group col-sm-7\">\n");
      out.write("\t\t\t\t      \t\t\t            <label for=\"source\"><strong>Description</strong></label>\n");
      out.write("\t\t\t\t      \t\t\t            <input class=\"form-control\" id=\"program\" type=\"text\" name=\"program\" placeholder=\"Program\">\n");
      out.write("\t\t\t\t      \t\t\t            \t\t\t      \t\t\t            \n");
      out.write("\t\t\t      \t\t\t            </div>\n");
      out.write("\t\t\t      \t\t\t            \n");
      out.write("\t\t\t      \t\t\t           \n");
      out.write("\t\t\t      \t\t\t            <div class=\"form-group col-sm-2\">\n");
      out.write("\t\t\t      \t\t\t         \n");
      out.write("\t\t\t\t      \t\t\t            <button class=\"btn btn-sm btn-primary\" type=\"submit\" onClick=\"getContent();\">\n");
      out.write("                      \t\t\t\t\t\t<i class=\"fa fa-dot-circle-o\"></i> Search </button>\n");
      out.write("\t\t\t      \t\t\t            </div>\n");
      out.write("\t\t\t      \t\t\t            \t\t      \t\t\t            \n");
      out.write("\t\t\t      \t\t\t  \n");
      out.write("\t\t\t      \t\t\t            </div>\n");
      out.write("\t\t\t\t      \t\t\t   \n");
      out.write("\t\t\t\t      \t\t\t   </div>\n");
      out.write("\t\t\t      \t\t\t  \t\t\t      \t\t\t   \n");
      out.write("\t\t\t      \t\t\t   </div>\n");
      out.write("\t      \t\t\t  \n");
      out.write("\t      \t\t\t  \n");
      out.write("                  <!--   </form> -->\n");
      out.write("                   \n");
      out.write("\n");
      out.write("                    <!-- End Search for the content --> \n");
      out.write("\n");
      out.write("\n");
      out.write("                    <!-- Start DIV for video/audio player --> \n");
      out.write("                        \n");
      out.write("                    <div id='search_player'>\n");
      out.write("                    \t<div class=\"row\">\n");
      out.write("\t                        \n");
      out.write("                            <div class=\"col-sm-12 col-lg-6\"> \n");
      out.write("                             <div class=\"card\">\n");
      out.write("                              <div class=\"card-body text-center\">\n");
      out.write("                              \n");
      out.write("                              <div id=\"video\">\n");
      out.write("\t                            <video id=\"classic-video\" class=\"media-video\" controls>\n");
      out.write("\t                            \n");
      out.write("\t                                <source src=\"\" type=\"video/mp4\">\n");
      out.write("\t                                    Your browser does not support the video element.\n");
      out.write("\t                            </video>\n");
      out.write("\t                            </div>\n");
      out.write("\n");
      out.write("                              <div id=\"audio\">\n");
      out.write("\t                           \n");
      out.write("\t                            <audio id=\"classic-audio\" controls> \n");
      out.write("\t                            <source src=\"\" type=\"audio/mp3\" preload=\"auto\">\n");
      out.write("\t                            </audio>\n");
      out.write("\t                            </div>\n");
      out.write("\t                          </div>\n");
      out.write("\t                          </div>\n");
      out.write("\t                          </div>\n");
      out.write("\t                          \n");
      out.write("\t                          \n");
      out.write("\t                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("\t                          <div class=\"col-sm-12 col-lg-4 mb-2\">\n");
      out.write("\t                                   \n");
      out.write("                <div class=\"card\">\n");
      out.write("                  <div class=\"card-header\">\n");
      out.write("                    <i class=\"fa fa-align-justify\"></i> Trim Content Playback             \n");
      out.write("                  </div>\n");
      out.write("\n");
      out.write("                  <div class=\"card-body\">  \n");
      out.write("                  \n");
      out.write("\t\t\t\t\t\t              <div class=\"form-group mr-1\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<label for=\"cutFrom\"><strong>Cut From </strong></label>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>     \n");
      out.write("\t\t\t\t\t\t          <div class=\"d-flex\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"form-group mr-1\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t<input class=\"form-control\" type=\"text\" id = \"hh_from\" maxlength = 2 placeholder=\"HH\">\n");
      out.write("\t\t\t\t\t\t\t\t\t</div> \n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"form-group mr-1\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input class=\"form-control\" type=\"text\" id = \"mm_from\" maxlength = 2 placeholder=\"MM\"> \t\t\t  \t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"form-group mr-1\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input class=\"form-control\" type=\"text\" id = \"ss_from\" maxlength = 2 placeholder=\"SS\">\t      \t\t\t  \t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t<!-- Duration -->\n");
      out.write("        \t\t\t\t\t\t\t <div class=\"form-group mr-1\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<label for=\"duration\"><strong>Duration </strong></label>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>     \n");
      out.write("\t\t\t\t\t\t          <div class=\"d-flex\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"form-group mr-1\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t<input class=\"form-control\" type=\"text\" id = \"hh_duration\" maxlength = 2 placeholder=\"HH\">\n");
      out.write("\t\t\t\t\t\t\t\t\t</div> \n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"form-group mr-1\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input class=\"form-control\" type=\"text\" id = \"mm_duration\" maxlength = 2 placeholder=\"MM\">\t      \t\t\t  \t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"form-group mr-1\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input class=\"form-control\" type=\"text\" id = \"ss_duration\" maxlength = 2 placeholder=\"SS\">\t      \t\t\t  \t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t<!-- Tittle -->\n");
      out.write("\t\t\t\t\t\t\t\t\t <div class=\"form-group mr-1\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<label for=\"title\"><strong>Tittle </strong></label>\n");
      out.write("\t\t\t\t\t\t\t\t\t<input class=\"form-control\" id=\"title\" type=\"text\" name=\"title\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div> \n");
      out.write("\t                               \n");
      out.write("\t                                \n");
      out.write("\t                                <!-- Description -->\n");
      out.write("\t                                 <div class=\"form-group\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<label  for=\"title\"><strong>Description </strong></label>\n");
      out.write("\t\t\t\t\t\t\t\t\t<textarea class=\"form-control\"  id=\"description\" name=\"description\"></textarea>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div> \n");
      out.write("\t                                 <div class=\"form-group row justify-content-center\">\n");
      out.write("\t                                  <button type=\"submit\" class=\"btn btn-primary justify-content-center\" onClick=\"trimAudioVideo();\">\n");
      out.write("\t                                  <i class=\"fa fa-cut\">&nbsp;</i>Trim</button>\n");
      out.write("\t                                </div>\n");
      out.write("\t                          \t\n");
      out.write("\t                          \t\n");
      out.write("\t                          \t</div>\n");
      out.write("\t                          \t</div>\n");
      out.write("\t                          </div>\n");
      out.write("                    \t</div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <!-- End DIV for video/audio player --> \n");
      out.write("\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("              </div>\n");
      out.write("             \n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("        </div>\n");
      out.write("      </main>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("\n");
      out.write("<!-- Start Top header View -->\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "includes/footer.jsp", out, false);
      out.write("\n");
      out.write("<!-- End Top Header View -->\n");
      out.write("\n");
      out.write("  </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("\n");
      out.write("$(document).ready(function (){\n");
      out.write("\t\n");
      out.write("\t$(\"#contentType\").on(\"change\", function (){\n");
      out.write("\t\tvar content_type_id = $(\"#contentType\").val(); // get content id in a selected box \n");
      out.write("\t\t\n");
      out.write("\t\t$.ajax({\n");
      out.write("\t\t\turl: \"channel.jsp\", // yuor jsp page name\n");
      out.write("\t\t\tdata:{\n");
      out.write("\t\t\t\tcontent_type_id: content_type_id\n");
      out.write("\t\t\t},\n");
      out.write("\t\t\tmethod: \"POST\",\n");
      out.write("\t\t\tsuccess: function (data)\n");
      out.write("\t\t\t{\n");
      out.write("\t\t\t\t$(\"#channel_id\").html(data);\n");
      out.write("\t\t\t}\n");
      out.write("\t\t})\n");
      out.write("\t});\n");
      out.write("\n");
      out.write("\t\n");
      out.write("});\n");
      out.write("\n");
      out.write("$(document).ready(function() {\n");
      out.write("    $(\"#search_player\").hide();\n");
      out.write("    document.getElementById(\"contentType\").value = \"\";  \n");
      out.write("});\n");
      out.write("\n");
      out.write("</script>\n");
      out.write("<!-- <script type=\"text/javascript\">\n");
      out.write("$(document).ready(function (){\n");
      out.write("\t\n");
      out.write("    $(\"#cut_from\").focusin(function (evt) {\n");
      out.write("        $(this).keypress(function () {\n");
      out.write("            content=$(this).val();\n");
      out.write("            content1 = content.replace(/\\:/g, '');\n");
      out.write("            length=content1.length;\n");
      out.write("            if(((length % 2) == 0) && length < 10 && length > 1){\n");
      out.write("                $('#cut_from').val($('#cut_from').val() + ':');\n");
      out.write("            }\n");
      out.write("        });\n");
      out.write("    });\n");
      out.write("    \n");
      out.write("    $(\"#duration\").focusin(function (evt) {\n");
      out.write("        $(this).keypress(function () {\n");
      out.write("            content=$(this).val();\n");
      out.write("            content1 = content.replace(/\\:/g, '');\n");
      out.write("            length=content1.length;\n");
      out.write("            if(((length % 2) == 0) && length < 10 && length > 1){\n");
      out.write("                $('#duration').val($('#duration').val() + ':');\n");
      out.write("            }\n");
      out.write("        });\n");
      out.write("    });\n");
      out.write("});\n");
      out.write("\n");
      out.write("</script>\n");
      out.write("\n");
      out.write(" -->\n");
      out.write("      ");

} else {
	session.setAttribute("userID", null);
	session.setAttribute("fullName", null);
	session.setAttribute("roleID", null);
	session.setAttribute("roleDescription", null);
	session.setAttribute("email", null);
	session.setAttribute("username", null);
    session.invalidate();
	response.sendRedirect("index.jsp");
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

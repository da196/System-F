/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.42
 * Generated at: 2020-04-15 08:25:29 UTC
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
import tcms.csp.*;

public final class interviewReport_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_packages.add("tcms.csp");
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("<!-- Start header -->\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "includes/header.jsp", out, false);
      out.write("\r\n");
      out.write("<!-- End header -->\r\n");
      out.write("\r\n");
      out.write("<!-- Start Top header View -->\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "includes/topView.jsp", out, false);
      out.write("\r\n");
      out.write("<!-- End Top Header View -->\r\n");
      out.write("\r\n");
      out.write("<!-- Start SideBar View -->\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "includes/sideView.jsp", out, false);
      out.write("\r\n");
      out.write("<!-- End SideBar View -->\r\n");
      out.write("<style>\r\n");
      out.write("#overlay {\r\n");
      out.write("    position: fixed;\r\n");
      out.write("    display: none;\r\n");
      out.write("    width: 100%;\r\n");
      out.write("    height: 100%;\r\n");
      out.write("    top: 0;\r\n");
      out.write("    left: 0;\r\n");
      out.write("    right: 0;\r\n");
      out.write("    bottom: 0;\r\n");
      out.write("\r\n");
      out.write("    z-index: 2;\r\n");
      out.write("    cursor: pointer;\r\n");
      out.write("    background: url('img/loading1.gif') 50% 50% no-repeat rgb(0,0,0,0.5);\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\" src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.js\"></script>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\r\n");
      out.write("$(document).ready(function() {\r\n");
      out.write("    $(\"#video\").hide();\r\n");
      out.write("    \r\n");
      out.write("});\r\n");
      out.write("\r\n");
      out.write("function getInterviewerVideo(){\r\n");
      out.write("\r\n");
      out.write("\tvar startDate = document.getElementById('startDate').value;\r\n");
      out.write("\tvar endDate = document.getElementById('endDate').value;\r\n");
      out.write("\tvar keyword = document.getElementById('keyword').value;\r\n");
      out.write("\t\r\n");
      out.write("\tif (startDate == \"\") {\r\n");
      out.write("\t\talert(\"Please select Start Date\");\r\n");
      out.write("\t\tdie(\"\");\r\n");
      out.write("\t}\r\n");
      out.write("\tif (endDate == \"\") {\r\n");
      out.write("\t\talert(\"Please select End Date!\");\r\n");
      out.write("\t\tdie(\"\");\r\n");
      out.write("\t}\r\n");
      out.write("\tif (keyword == \"\") {\r\n");
      out.write("\t\talert(\"Please Enter Keyword!\");\r\n");
      out.write("\t\tdie(\"\");\r\n");
      out.write("\t}\r\n");
      out.write("\telse{\r\n");
      out.write("\t$.ajax({ \r\n");
      out.write("\t     type: \"GET\",\r\n");
      out.write("\t      url: \"actions/configuration/getInterviewReport.jsp\", //this is my servlet\r\n");
      out.write("\t      dataType: \"json\",\r\n");
      out.write("\t       data: {\r\n");
      out.write("\t    \t   startDate: startDate,\r\n");
      out.write("\t    \t   endDate: endDate,\r\n");
      out.write("\t    \t   keyword: keyword\r\n");
      out.write("\t           }, \r\n");
      out.write("\t\t          success: function(list){  \r\n");
      out.write("\t\t\t          var s = '';\r\n");
      out.write("\t\t\t          s += '<h6> <strong><center> INTERVIEW REPORT FOR  '+ keyword + ' </center></strong></h6>';\r\n");
      out.write("\t\t\t          s += '<div class=\"fresh-datatables\">';\r\n");
      out.write("\t\t\t          s += '<table id=\"datatables\" class=\"table table-striped table-no-bordered table-hover\" cellspacing=\"0\" width=\"100%\" style=\"width:100%\">';\r\n");
      out.write("\t\t\t          s += '<thead>';\r\n");
      out.write("\t\t\t          s += '<tr>';\r\n");
      out.write("\t\t\t          s += '<th>Date</th>';\r\n");
      out.write("\t\t\t          s += '<th>Channel</th>';\r\n");
      out.write("\t\t\t          s += '<th> Start Time </th>';\t\t\r\n");
      out.write("\t\t\t          s += '<th> End Time </th>';\t\t;\r\n");
      out.write("\t\t\t          s += '<th>Action</th>';\r\n");
      out.write("\t\t\t          s += '</tr>';\r\n");
      out.write("\t\t\t          s += '</thead>';\r\n");
      out.write("\t\t\t          s += '<tfoot>';\r\n");
      out.write("\t\t\t          s += '<tr>';\r\n");
      out.write("\t\t\t          s += '<th>Date</th>';\r\n");
      out.write("\t\t\t          s += '<th>Channel</th>';\r\n");
      out.write("\t\t\t          s += '<th> Start Time </th>';\t\t\r\n");
      out.write("\t\t\t          s += '<th> End Time </th>';\t\t        ;\r\n");
      out.write("\t\t\t          s += '<th>Action</th>';\r\n");
      out.write("\t\t\t          s += '</tr>';\r\n");
      out.write("\t\t\t          s += '</tfoot>';\r\n");
      out.write("\t\t\t          s += '<tbody >';\r\n");
      out.write("\t\t\t          $.each(list.data, function(index,list) {        \r\n");
      out.write("\t\t\t            \r\n");
      out.write("\t\t\t                s += '<tr>';\t\t\t\t\t\t   \r\n");
      out.write("\t\t\t\t\t\t\ts += '<td>' + list.contentDate + '</td>';\r\n");
      out.write("\t\t\t\t\t\t\ts += '<td>' + list.channelName + '</td>';\r\n");
      out.write("\t\t\t\t\t\t\ts += '<td>' + list.startTime +'</td>';\r\n");
      out.write("\t\t\t\t\t\t\ts += '<td>' + list.endTime +'</td>';\r\n");
      out.write("\t\t\t\t\t\t\ts += '<td> <a class=\"btn btn-primary btn-circle btn-sm\" href=\"#viewInterviewLibrary\" data-toggle=\"modal\" title=\"VIEW\"  onclick=\"getContent('+list.analysisID+','+list.channelID+',\\''+list.contentDate.trim()+'\\',\\''+list.startTime.trim()+'\\',\\''+list.endTime.trim()+'\\');\" ><i class=\"fa fa-eye\"></i></a>&nbsp; </td>';\r\n");
      out.write("\t\t\t\t\t\t\ts += '</tr>';\r\n");
      out.write("\t\t\t          });\t\r\n");
      out.write("\t\t\t      \t\r\n");
      out.write("\t\t\t          s += '</tbody>';\r\n");
      out.write("\t\t\t          s += '</table>';\r\n");
      out.write("\t\t\t          s += '</div>';\r\n");
      out.write("\t\t\t          $('#result').html(s);\r\n");
      out.write("\t\t\t          $('#datatables').DataTable({\t\t\t        \t\r\n");
      out.write("\t\t\t           });\r\n");
      out.write("\r\n");
      out.write("\t\t\t        }\r\n");
      out.write("\t   });\r\n");
      out.write("\t}\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("function getContent(analysisID,channelID,contentDate, startTime, endTime){\r\n");
      out.write("\tdocument.getElementById(\"overlay\").style.display = \"block\";\r\n");
      out.write("\t $.ajax({\r\n");
      out.write("\t     type: \"post\",\r\n");
      out.write("\t      url: \"actions/configuration/getInterviewAnalysis.jsp\", //this is my servlet\r\n");
      out.write("\t       data: {\r\n");
      out.write("\t    \t   analysisID: analysisID,\r\n");
      out.write("\t    \t   channelID: channelID,\r\n");
      out.write("\t    \t   contentDate: contentDate,\r\n");
      out.write("\t    \t   startTime: startTime,\r\n");
      out.write("\t    \t   endTime: endTime\r\n");
      out.write("\t           }, \r\n");
      out.write("\t          success: function(msg){ \r\n");
      out.write("\t        \t \r\n");
      out.write("\t        \t  var array = msg.split('|');\r\n");
      out.write("\t        \t  var url = array[0].trim();\r\n");
      out.write("\t        \t  //var channelName = array[0];\r\n");
      out.write("\t        \t \r\n");
      out.write("\t\t          document.getElementById(\"overlay\").style.display = \"none\";\r\n");
      out.write("\t\t          $(\"#video\").show();\r\n");
      out.write("\t\t          $(\"#classic-video\").attr(\"src\",\"../../mergeFiles/\" + url);\r\n");
      out.write("\t\t          \r\n");
      out.write("\t\t          \r\n");
      out.write("\t\t          document.getElementById(\"channelName\").value = array[3].trim();\r\n");
      out.write("\t\t          document.getElementById(\"description\").value = array[4].trim();\r\n");
      out.write("\t\t          document.getElementById(\"generalObservation\").value = array[1].trim();\r\n");
      out.write("\t\t          \r\n");
      out.write("\r\n");
      out.write("\t          }\r\n");
      out.write("\t     });\r\n");
      out.write("\t\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("      <main class=\"main\">\r\n");
      out.write("         <!-- Breadcrumb-->\r\n");
      out.write("         <ol class=\"breadcrumb\">\r\n");
      out.write("          <li class=\"breadcrumb-item\">Home</li>\r\n");
      out.write("          <li class=\"breadcrumb-item\">\r\n");
      out.write("            Analysis Report\r\n");
      out.write("          </li>   \r\n");
      out.write("          <li class=\"breadcrumb-item\">\r\n");
      out.write("            <a href=\"interviewReport.jsp\">Interview Report</a>\r\n");
      out.write("          </li>   \r\n");
      out.write("        </ol>        \r\n");
      out.write("        <!-- Breadcrumb-->\r\n");
      out.write("        <div class=\"container-fluid\">\r\n");
      out.write("          <div class=\"animated fadeIn\">\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("              <div class=\"col-sm-12 col-xl-12\">\r\n");
      out.write("                <div class=\"card\">\r\n");
      out.write("                  <div class=\"card-header\">\r\n");
      out.write("                    <i class=\"fa fa-align-justify\"></i> Interview Report for all Channels            \r\n");
      out.write("                  </div>\r\n");
      out.write("\r\n");
      out.write("                  <div class=\"card-body\" style=\"padding-bottom:0px; margin-bottom:0px;\">                  \r\n");
      out.write("                     <!-- Start Search for the content --> \r\n");
      out.write("                                        \r\n");
      out.write("                  \r\n");
      out.write("\t      \t\t\t  <div class=\"form-group row\">\r\n");
      out.write("\t      \t\t\t  \t\t\t      \t\t\t\t\t      \t\t\t  \t\t\t      \t\t\t  \r\n");
      out.write("\t\t\t      \t\t\t   <div class=\"form-group col-sm-12\">\r\n");
      out.write("\t\t\t      \t\t\t   \r\n");
      out.write("\t\t\t\t      \t\t\t   <div class=\"form-group row\">\r\n");
      out.write("\t\t\t\t      \t\t\t   \r\n");
      out.write("\t\t\t\t      \t\t\t    <div class=\"form-group col-sm-3\">\r\n");
      out.write("\t\t\t\t      \t\t\t        <label for=\"startDate\"><strong>Start Date</strong></label>\r\n");
      out.write("\t\t\t\t      \t\t\t        <input class=\"form-control\" id=\"startDate\" type=\"date\" name=\"startDate\"> \r\n");
      out.write("\t\t\t      \t\t\t  \t\t\t\r\n");
      out.write("\t\t\t      \t\t\t            </div>\r\n");
      out.write("\t\t\t\t      \t\t\t   \r\n");
      out.write("\t\t\t\t      \t\t\t        <div id=\"channel_id\" class=\"form-group col-sm-3\">\r\n");
      out.write("\t\t\t\t      \t\t\t            <label for=\"endDate\"><strong>End Date</strong></label>\r\n");
      out.write("\t\t\t\t      \t\t\t            <input class=\"form-control\" id=\"endDate\" type=\"date\" name=\"endDate\"> \t\t\t\t\t                        \t\t\t      \t\t\t  \r\n");
      out.write("\t\t\t      \t\t\t            </div>\r\n");
      out.write("\t\t\t      \t\t\t            \r\n");
      out.write("\t\t\t      \t\t\t            <div class=\"form-group col-sm-3\">\r\n");
      out.write("\t\t\t\t      \t\t\t  \t\t\t<label for=\"day\"><strong>Keyword</strong></label>\r\n");
      out.write("\t\t\t\t      \t\t\t  \t\t\t<input class=\"form-control\" id=\"keyword\" type=\"text\" name=\"keyword\"> \t\t\t\t\t                        \t\t\t      \t\t\t  \r\n");
      out.write("\t\t\t   \t\t\t\t\t\t\t\t\t\t\t\t\t\t      \t\t\t           \t\t\t\t\t                        \r\n");
      out.write("\t\t\t\t\t                    </div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t      \t\t\t            <div class=\"form-group col-sm-3\">\r\n");
      out.write("\t\t\t      \t\t\t            \t<br>\t\t\t      \t\t\t         \r\n");
      out.write("\t\t\t\t      \t\t\t            <button class=\"btn btn-sm btn-primary\" type=\"submit\" onClick=\"getInterviewerVideo();\">\r\n");
      out.write("                      \t\t\t\t\t\t<i class=\"fa fa-dot-circle-o\"></i> Search \r\n");
      out.write("                      \t\t\t\t\t\t</button>\r\n");
      out.write("                      \t\t\t\t\t\t\r\n");
      out.write("\t\t\t      \t\t\t            </div>\r\n");
      out.write("\t\t\t      \t\t\t          \t\t\t      \t\t\t   \r\n");
      out.write("\t\t\t\t      \t\t\t   </div>\t\t\t\t      \t\t\t   \r\n");
      out.write("\t\t\t\t      \t\t\t   </div>\t\t\t      \t\t\t  \t\t\t      \t\t\t   \r\n");
      out.write("\t\t\t      \t\t\t   </div>      \t\t\t  \r\n");
      out.write("\t      \t\t\t  </div>\r\n");
      out.write("                   \r\n");
      out.write("                    <div class=\"col-sm-12 col-xl-12\">                    \r\n");
      out.write("                      <div class=\"card-body\">\r\n");
      out.write("                     \r\n");
      out.write("                     <!-- \tStart Table for display for all interview report here... -->\r\n");
      out.write("\t\t\t\t\t\t \t<div id=\"result\"></div>  \r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<!-- End Table for display for all interview report here... -->\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("            \t\t </div>\r\n");
      out.write("                    </div>\r\n");
      out.write(" \r\n");
      out.write("                    </div> <!-- End Div card-body -->\r\n");
      out.write("\r\n");
      out.write("                    <!-- Start DIV for video/audio player --> \r\n");
      out.write("                    \r\n");
      out.write("                </div>\r\n");
      out.write("                \r\n");
      out.write("              </div>\r\n");
      out.write("             \r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </main>\r\n");
      out.write("    </div>\r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("<!-- Start Modal for the display of Interview Library           \r\n");
      out.write("        <div class=\"modal fade\" id=\"viewInterviewLibrary\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myModalLabel\" aria-hidden=\"true\">\r\n");
      out.write("          <div class=\"modal-dialog modal-primary modal-lg\" role=\"document\">\r\n");
      out.write("            <div class=\"modal-content\" style=\"width:1200px; margin-left:-150px;\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t        <div id=\"result2\"></div>\r\n");
      out.write("\t\t\t        <div id=\"overlay\"></div>\r\n");
      out.write("\t\t\t\t\t\t        <div id=\"video\">\r\n");
      out.write("\t                            <video id=\"classic-video\" class=\"media-video\" controls>\r\n");
      out.write("\t                            <source src=\"\" type=\"video/mp4\">Your browser does not support the video element.\r\n");
      out.write("\t                            </video>\r\n");
      out.write("\t                            </div>\t\t\t       \t\t  \r\n");
      out.write("            </div>          \r\n");
      out.write("          </div>        \r\n");
      out.write("        </div>     \r\n");
      out.write(" End Modal for the display of Interview Library \r\n");
      out.write(" -->   \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- Start Modal for the display of Interview Library -->\r\n");
      out.write("<div class=\"modal fade\" id=\"viewInterviewLibrary\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myModalLabel\" aria-hidden=\"true\">\r\n");
      out.write("<div class=\"modal-dialog modal-primary modal-lg\" role=\"document\">\r\n");
      out.write("<div class=\"modal-content\" > \r\n");
      out.write("<div class=\"row mt-4\" >\r\n");
      out.write(" <div class=\"col-sm-12 col-lg-12\"> \r\n");
      out.write("     <div class=\"card\">\r\n");
      out.write("     <div class=\"card-body text-center\" style=\"width:800px;\">    \r\n");
      out.write("     <div id=\"overlay\"></div>                            \r\n");
      out.write("         <video controls > \r\n");
      out.write("             <source src=\"../../ %>\" type=\"video/mp4\">\r\n");
      out.write("         </video>\r\n");
      out.write("     </div>\r\n");
      out.write("     <div class=\"card-footer\" style=\"width:800px;\">    \r\n");
      out.write("         <div class=\"form-group row\">\r\n");
      out.write("            <div class=\"form-group col-2\"><strong>Channel Name:</strong> \r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"form-group col-10\">\r\n");
      out.write("            <input type=\"text\" name=\"channelName\" id=\"channelName\" style=\"width:80%\" readonly/>\r\n");
      out.write("            </div>\r\n");
      out.write("         </div>  \r\n");
      out.write("          <div class=\"form-group row\">\r\n");
      out.write("            <div class=\"form-group col-2\"><strong>Description:</strong>  \r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"form-group col-10\">\r\n");
      out.write("            <input type=\"text\" name=\"description\" id=\"description\" style=\"width:80%\" readonly/>\r\n");
      out.write("            </div>\r\n");
      out.write("         </div>\r\n");
      out.write("         <div class=\"form-group row\">\r\n");
      out.write("            <div class=\"form-group col-2\"><strong>General Observation:</strong>  \r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"form-group col-10\">\r\n");
      out.write("            <textarea name=\"generalObservation\" id=\"generalObservation\" style=\"width:80%\"  readonly/> </textarea>\r\n");
      out.write("            </div>\r\n");
      out.write("         </div>\r\n");
      out.write("         \r\n");
      out.write("         <button class=\"btn btn-primary\" id=\"closemodal\" type=\"button\" data-dismiss=\"modal\">Close</button>\r\n");
      out.write("         \r\n");
      out.write("    </div>\r\n");
      out.write("       </div>\r\n");
      out.write(" </div>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("<!-- End Modal for the display of Interview Library --> \r\n");
      out.write("\r\n");
      out.write("<!-- Start Top header View -->\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "includes/footer.jsp", out, false);
      out.write("\r\n");
      out.write("<!-- End Top Header View -->\r\n");
      out.write("\r\n");
      out.write("  </body>\r\n");
      out.write("  \r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("</html>\r\n");
      out.write(" <script type=\"text/javascript\">\r\n");
      out.write("  $(document).ready(function() {\r\n");
      out.write("\t  //alert('Auckland');\r\n");
      out.write("\t  $('#closemodal').click(function() {\r\n");
      out.write("\t\t    $('#viewInterviewLibrary').modal('hide');\r\n");
      out.write("\t\t});\r\n");
      out.write("\t  \r\n");
      out.write("\t});\r\n");
      out.write("  </script>\r\n");
      out.write("\r\n");
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

      out.write('\r');
      out.write('\n');
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

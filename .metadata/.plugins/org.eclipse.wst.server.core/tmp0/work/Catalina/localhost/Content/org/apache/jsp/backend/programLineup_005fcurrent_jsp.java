/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.42
 * Generated at: 2020-05-08 12:48:56 UTC
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

public final class programLineup_005fcurrent_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write(" \n");
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
      out.write("<script type=\"text/javascript\" src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.js\"></script>\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("\n");
      out.write("function getProgram(){\n");
      out.write("\t\n");
      out.write("\tvar sel = document.getElementById(\"day\");\n");
      out.write("\tvar day= sel.options[sel.selectedIndex].text;\n");
      out.write("\t\n");
      out.write("\tvar sel_channel = document.getElementById('channel');\n");
      out.write("\tvar channelname = sel_channel.options[sel_channel.selectedIndex].text;\n");
      out.write("\t\n");
      out.write("\tvar channelID = document.getElementById('channel').value;\n");
      out.write("\tif (day == \"\") {\n");
      out.write("\t\talert(\"Please select Day\");\n");
      out.write("\t\tdie(\"\");\n");
      out.write("\t}\n");
      out.write("\tif (channelID == \"\") {\n");
      out.write("\t\talert(\"Please select Channel!\");\n");
      out.write("\t\tdie(\"\");\n");
      out.write("\t}\n");
      out.write("\telse{\n");
      out.write("\t$.ajax({ \n");
      out.write("\t     type: \"GET\",\n");
      out.write("\t      url: \"actions/configuration/getApprovedPL.jsp\", //this is my servlet\n");
      out.write("\t      dataType: \"json\",\n");
      out.write("\t       data: {\n");
      out.write("\t\t\t  day: day,\n");
      out.write("\t\t\t  channelID: channelID\n");
      out.write("\t           }, \n");
      out.write("\t\t          success: function(programList){  \n");
      out.write("\t\t\t          var s = '';\n");
      out.write("\t\t\t          s += '<h6> <strong><center> '+day + \" - \" + channelname +' Program Line Up </center></strong></h6>';\n");
      out.write("\t\t\t          s += '<div class=\"fresh-datatables\">';\n");
      out.write("\t\t\t          s += '<table id=\"datatables\" class=\"table table-striped table-no-bordered table-hover\" cellspacing=\"0\" width=\"100%\" style=\"width:100%\">';\n");
      out.write("\t\t\t          s += '<thead>';\n");
      out.write("\t\t\t          s += '<tr>';\n");
      out.write("\t\t\t          s += '<th class=\"no-sort\" style=\"width:12%\">Time</th>';\n");
      out.write("\t\t\t          s += '<th class=\"no-sort\">Name</th>';\n");
      out.write("\t\t\t          s += '<th class=\"no-sort\">Main Objective</th>';\n");
      out.write("\t\t\t          s += '<th class=\"no-sort\">Target Audience</th>';\n");
      out.write("\t\t\t          s += '<th class=\"no-sort\">Expectetions</th>';\n");
      out.write("\t\t\t         // s += '<th>Status</th>';\n");
      out.write("\t\t\t          //s += '<th>Actions</th>';\n");
      out.write("\t\t\t          s += '</tr>';\n");
      out.write("\t\t\t          s += '</thead>';\n");
      out.write("\t\t\t          s += '<tfoot>';\n");
      out.write("\t\t\t          s += '<tr>';\n");
      out.write("\t\t\t          s += '<th>Time</th>';\n");
      out.write("\t\t\t          s += '<th>Name</th>';\n");
      out.write("\t\t\t          s += '<th>Main Objective</th>';\n");
      out.write("\t\t\t          s += '<th>Target Audience</th>';\n");
      out.write("\t\t\t          s += '<th>Expectetions</th>';\n");
      out.write("\t\t\t         // s += '<th>Status</th>';\n");
      out.write("\t\t\t          //s += '<th>Actions</th>';\n");
      out.write("\t\t\t          s += '</tr>';\n");
      out.write("\t\t\t          s += '</tfoot>';\n");
      out.write("\t\t\t          s += '<tbody >';\n");
      out.write("\t\t\t          $.each(programList.data, function(index,programList) {        \n");
      out.write("\t\t\t              //alert(equipmentList.make+\" -- \"+equipmentList.model+\" -- \"+equipmentList.country+\" -- \"+equipmentList.equipmentType+\" -- \"+equipmentList.cdate)\n");
      out.write("\t\t\t                s += '<tr>';\n");
      out.write("\t\t\t\t\t\t    s += '<td>' + programList.time + '</td>';\n");
      out.write("\t\t\t\t\t\t\ts += '<td>' + programList.programeName + '</td>';\n");
      out.write("\t\t\t\t\t\t\ts += '<td>' + programList.programObjective + '</td>';\n");
      out.write("\t\t\t\t\t\t\ts += '<td>' + programList.targetAudience + '</td>';\n");
      out.write("\t\t\t\t\t\t\ts += '<td>' + programList.expectedArchivement + '<input type=\"hidden\" id=\"entryDate\" value=\"'+programList.entryDate+'\"></td>';\n");
      out.write("\t\t\t\t\t\t\t//s += '<td>' + programList.status + '</td>';\n");
      out.write("\t\t\t\t\t\t\t//s += '<td> <a class=\"btn btn-primary btn-circle btn-sm\" href=\"#editProgrammeModal\" data-toggle=\"modal\" title=\"EDIT\"  onClick=\"editProgram('+ programList.id +');\" ><i class=\"fas fa-pencil-alt\"></i></a>&nbsp; <a class=\"btn btn-danger btn-circle btn-sm\" href=\"#editProgrammeModal\" data-toggle=\"modal\" title=\"DELETE\"  onClick=\"editProgram(' + programList.id + ');\"><i class=\"fas fa-trash\"></i></a></td>';\n");
      out.write("\t\t\t\t\t\t\ts += '</tr>';\n");
      out.write("\t\t\t          });\t\n");
      out.write("\t\t\t      \t\n");
      out.write("\t\t\t          s += '</tbody>';\n");
      out.write("\t\t\t          s += '</table>';\n");
      out.write("\t\t\t          s += '</div>';\n");
      out.write("\t\t\t          $('#result').html(s);\n");
      out.write("\t\t\t         \n");
      out.write("\t\t\t        }\n");
      out.write("\t   });\n");
      out.write("\t}\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("      <main class=\"main\">\n");
      out.write("         <!-- Breadcrumb-->\n");
      out.write("         <ol class=\"breadcrumb\">\n");
      out.write("          <li class=\"breadcrumb-item\">Home</li>\n");
      out.write("          <li class=\"breadcrumb-item\">\n");
      out.write("            Program Line up\n");
      out.write("          </li>   \n");
      out.write("          <li class=\"breadcrumb-item\">\n");
      out.write("            <a href=\"programLineup.jsp\">PL - Current</a>\n");
      out.write("          </li>   \n");
      out.write("        </ol>        \n");
      out.write("        <!-- Breadcrumb-->\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("          <div class=\"animated fadeIn\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("              <div class=\"col-sm-12 col-xl-12\">\n");
      out.write("                <div class=\"card\">\n");
      out.write("                  <div class=\"card-header\">\n");
      out.write("                    <i class=\"fa fa-align-justify\"></i> Current Program Line up for all Channels             \n");
      out.write("                  </div>\n");
      out.write("\n");
      out.write("                  <div class=\"card-body\" style=\"padding-bottom:0px; margin-bottom:0px;\">                  \n");
      out.write("                     <!-- Start Search for the content --> \n");
      out.write("                                        \n");
      out.write("                  \n");
      out.write("\t      \t\t\t  <div class=\"form-group row\">\n");
      out.write("\t      \t\t\t  \t\t\t      \t\t\t\t\t      \t\t\t  \t\t\t      \t\t\t  \n");
      out.write("\t\t\t      \t\t\t   <div class=\"form-group col-sm-12\">\n");
      out.write("\t\t\t      \t\t\t   \n");
      out.write("\t\t\t\t      \t\t\t   <div class=\"form-group row\">\n");
      out.write("\t\t\t\t      \t\t\t   \n");
      out.write("\t\t\t\t      \t\t\t    <div class=\"form-group col-sm-3\">\n");
      out.write("\t\t\t\t      \t\t\t        <label for=\"content\"><strong>Content Type</strong></label>\n");
      out.write("\t\t\t      \t\t\t  \t\t\t<select class=\"form-control\" id=\"contentType\" name=\"contentType\" >\n");
      out.write("\t\t\t\t\t                    <option value=\"\">-- Content Type -- </option>\n");
      out.write("\t\t\t\t\t\t \t \t\t\t");

						 	 			File errorLogs = null;
						                String errorLogFile = "";//Utility.getPath();
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
      out.write("\t\t\t\t\t                         \n");
      out.write("\t\t\t\t\t                        </select>\n");
      out.write("\t\t\t      \t\t\t            </div>\n");
      out.write("\t\t\t\t      \t\t\t   \n");
      out.write("\t\t\t\t      \t\t\t        <div id=\"channel_id\" class=\"form-group col-sm-3\">\n");
      out.write("\t\t\t\t      \t\t\t            <label for=\"channel\"><strong>Channel Name</strong></label>\n");
      out.write("\t\t\t\t\t                        <select class=\"form-control\" name=\"channel\" id=\"channel\" >\n");
      out.write("\t\t\t\t\t                        <option value=\"\">-- Channel Name -- </option>\n");
      out.write("\t\t\t\t\t                       \n");
      out.write("\t\t\t\t\t                        </select>\t\t\t      \t\t\t  \n");
      out.write("\t\t\t      \t\t\t            </div>\n");
      out.write("\t\t\t      \t\t\t            \n");
      out.write("\t\t\t      \t\t\t            <div class=\"form-group col-sm-3\">\n");
      out.write("\t\t\t      \t\t\t  \t\t\t<label for=\"day\"><strong>Day</strong></label>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" id=\"day\">\n");
      out.write("\t\t\t\t\t                          \t");

	 		
										            
													try{
																                    
													java.util.List<Days> contentList = Days.getDays();
																
													for (int i = 0; i < contentList.size(); i++){
														
													
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<option value=\"");
 out.print(contentList.get(i).getId());
      out.write('"');
      out.write('>');
      out.write(' ');
 out.print(contentList.get(i).getDay()); 
      out.write(" </option>\t\t\t\t\t\t\t\t      \n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t ");

													}
													}catch(Exception er){
														er.printStackTrace();
													ErrorLogsAppender.appendException("Search.jsp page", er, errorLogs);
													}
												
      out.write("\t\t\t\t                          \n");
      out.write("\t\t\t\t\t                        </select>\t\t\t      \t\t\t           \t\t\t\t\t                        \n");
      out.write("\t\t\t\t\t                    </div>\n");
      out.write("\n");
      out.write("\t\t\t      \t\t\t            <div class=\"form-group col-sm-3\">\n");
      out.write("\t\t\t      \t\t\t            \t<br>\t\t\t      \t\t\t         \n");
      out.write("\t\t\t\t      \t\t\t            <button class=\"btn btn-sm btn-primary\" type=\"submit\" onClick=\"getProgram();\">\n");
      out.write("                      \t\t\t\t\t\t<i class=\"fa fa-dot-circle-o\"></i> Search \n");
      out.write("                      \t\t\t\t\t\t</button>\n");
      out.write("                      \t\t\t\t\t\t\n");
      out.write("\t\t\t      \t\t\t            </div>\n");
      out.write("\t\t\t      \t\t\t          \t\t\t      \t\t\t   \n");
      out.write("\t\t\t\t      \t\t\t   </div>\t\t\t\t      \t\t\t   \n");
      out.write("\t\t\t\t      \t\t\t   </div>\t\t\t      \t\t\t  \t\t\t      \t\t\t   \n");
      out.write("\t\t\t      \t\t\t   </div>      \t\t\t  \n");
      out.write("\t      \t\t\t  </div>\n");
      out.write("                   \n");
      out.write("                    <div class=\"col-sm-12 col-xl-12\">\n");
      out.write("                    <!-- Start Table -->\n");
      out.write("                  <!--   <h6> <strong><center> ITV PROGRAM LINE UP </center></strong></h6>  -->\n");
      out.write("                    \n");
      out.write("                     <div class=\"card-body\">\n");
      out.write("\t\t\t\t\t<div id=\"result\"></div>\n");
      out.write("            \t\t</div>\n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                    <!-- End Table -->\n");
      out.write("                   \n");
      out.write("                    \n");
      out.write("                    </div> <!-- End Div card-body -->\n");
      out.write("\n");
      out.write("                    <!-- Start DIV for video/audio player --> \n");
      out.write("                        \n");
      out.write("                    <div id='search_player'>\n");
      out.write("\n");
      out.write("                    \n");
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
      out.write("  <script type=\"text/javascript\">\n");
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
      out.write("</script>\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("\n");
      out.write("$(document).ready(function() {\n");
      out.write("\n");
      out.write("    $('#datatables').DataTable();\n");
      out.write("\n");
      out.write("    });\n");
      out.write("\n");
      out.write("  </script>\n");
      out.write("</html>\n");
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

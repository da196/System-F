/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.42
 * Generated at: 2020-05-11 10:13:39 UTC
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

public final class processedFiles_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
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
      out.write("\r\n");
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
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\r\n");
      out.write("function getContent(){\r\n");
      out.write("\t\r\n");
      out.write("\tvar contentType = document.getElementById(\"contentType\").value;\r\n");
      out.write("\tvar file_date = document.getElementById(\"inputDate\").value; \r\n");
      out.write("\tvar channel_id = document.getElementById(\"channel\").value; \r\n");
      out.write("\t\r\n");
      out.write("\tif (contentType == \"\") {\r\n");
      out.write("\t\talert(\"Please select Content Type!\");\r\n");
      out.write("\t\tdie(\"\");\r\n");
      out.write("\t}\r\n");
      out.write("\tif (file_date == \"\") {\r\n");
      out.write("\t\talert(\"Please select date\");\r\n");
      out.write("\t\tdie(\"\");\r\n");
      out.write("\t}\r\n");
      out.write("\tif (channel_id == \"\") {\r\n");
      out.write("\t\talert(\"Please select Channel!\");\r\n");
      out.write("\t\tdie(\"\");\r\n");
      out.write("\t}\r\n");
      out.write("\telse{\r\n");
      out.write("\t//document.getElementById(\"overlay\").style.display = \"block\";\r\n");
      out.write("\t $.ajax({\r\n");
      out.write("\t       type: \"GET\",\r\n");
      out.write("\t       url: \"actions/components/getProcessedFiles.jsp\", //this is my servlet\r\n");
      out.write("\t       dataType: \"json\",\r\n");
      out.write("\t       data: {\r\n");
      out.write("\t    \t   file_date: file_date,\r\n");
      out.write("\t    \t   channel_id: channel_id,\r\n");
      out.write("\t    \t   contentType: contentType\r\n");
      out.write("\t           }, \r\n");
      out.write("\t          success: function(applicationList){    \r\n");
      out.write("\t        \t\r\n");
      out.write("\t\t          //document.getElementById(\"overlay\").style.display = \"none\";\r\n");
      out.write("\t\t          var s = '';\r\n");
      out.write("\t\t          s += '<div class=\"fresh-datatables\">';\r\n");
      out.write("\t\t          s += '<table id=\"datatables\" class=\"table table-striped table-no-bordered table-hover\" cellspacing=\"0\" width=\"100%\" style=\"width:100%\">';\r\n");
      out.write("\t\t          s += '<thead>';\r\n");
      out.write("\t\t          s += '<tr>';\r\n");
      out.write("\t\t          s += '<th>Channel Name</th>';\r\n");
      out.write("\t\t          s += '<th>File Name</th>';\r\n");
      out.write("\t\t          s += '<th>Serial Number</th>';\r\n");
      out.write("\t\t          s += '<th>Time</th>'; \r\n");
      out.write("\t\t          s += '<th>Download File</th>'; \r\n");
      out.write("\t\t          s += '</tr>';\r\n");
      out.write("\t\t          s += '</thead>';\r\n");
      out.write("\t\t          s += '<tfoot>';\r\n");
      out.write("\t\t          s += '<tr>';\r\n");
      out.write("\t\t          s += '<th>Channel Name</th>';\r\n");
      out.write("\t\t          s += '<th>File Name</th>';\r\n");
      out.write("\t\t          s += '<th>Serial Number</th>';\r\n");
      out.write("\t\t          s += '<th>Time</th>';\r\n");
      out.write("\t\t          s += '<th>Download File</th>'; \r\n");
      out.write("\t\t          s += '</tr>';\r\n");
      out.write("\t\t          s += '</tfoot>';\r\n");
      out.write("\t\t          s += '<tbody >';\r\n");
      out.write("\t\t         \r\n");
      out.write("\t\t          $.each(applicationList.data, function(index,applicationList) {  \r\n");
      out.write("\t\t        \t \r\n");
      out.write("\t\t                s += '<tr>';\r\n");
      out.write("\t\t\t\t\t    s += '<td>' + applicationList.channelName + '</td>';\r\n");
      out.write("\t\t\t\t\t\ts += '<td>' + applicationList.fileName + '</td>';\r\n");
      out.write("\t\t\t\t\t\ts += '<td>' + applicationList.fileSerialNo + '</td>';\r\n");
      out.write("\t\t\t\t\t\ts += '<td>' + applicationList.time + '</td>';\r\n");
      out.write("\t\t\t\t\t\t//s += '<td>' + applicationList.flag + '</td>';\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t//s += '<td> <span class=\"badge badge-danger\" style=\"font-size:15px;\">' + applicationList.flag + '</span></td>';\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\ts += '<td> <a class=\"icon-arrow-down-circle icons\" href=\"../../' + applicationList.url + '\" title=\"Download\"></a></td>';\r\n");
      out.write("\t\t\t\t\t\ts += '</tr>';\r\n");
      out.write("\t\t          });\t\r\n");
      out.write("\t\t          //',' + applicationList.channelName + ',' + applicationList.day \r\n");
      out.write("\t\t          s += '</tbody>';\r\n");
      out.write("\t\t          s += '</table>';\r\n");
      out.write("\t\t          s += '</div>';\r\n");
      out.write("\t\t          $('#result').html(s);\r\n");
      out.write("\t\t          $('#datatables').DataTable( {\r\n");
      out.write("\t\t        \t  dom: 'Bfrtip',\r\n");
      out.write("\t\t\t            buttons: [\r\n");
      out.write("\t\t\t            \t\r\n");
      out.write("\t\t\t                'copy', 'csv', 'excel', 'pdf', 'print'\r\n");
      out.write("\t\t\t                \r\n");
      out.write("\t\t\t            ]\r\n");
      out.write("\t\t           } );\r\n");
      out.write("\t        \t \r\n");
      out.write("\t          }\r\n");
      out.write("\t     });\r\n");
      out.write("\t}\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("<div id=\"overlay\"></div>\r\n");
      out.write("<input type=\"hidden\" id=\"filename\" />\r\n");
      out.write("\r\n");
      out.write("      <main class=\"main\">\r\n");
      out.write("         <!-- Breadcrumb-->\r\n");
      out.write("         <ol class=\"breadcrumb\">\r\n");
      out.write("          <li class=\"breadcrumb-item\">Home</li>\r\n");
      out.write("          <li class=\"breadcrumb-item\">\r\n");
      out.write("            Settings\r\n");
      out.write("          </li>   \r\n");
      out.write("          <li class=\"breadcrumb-item\">\r\n");
      out.write("            <a href=\"processedFiles.jsp\">Processed Files</a>\r\n");
      out.write("          </li>   \r\n");
      out.write("        </ol>        \r\n");
      out.write("        <!-- Breadcrumb-->\r\n");
      out.write("        <div class=\"container-fluid\">\r\n");
      out.write("          <div class=\"animated fadeIn\">\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("              <div class=\"col-sm-12 col-xl-12\">\r\n");
      out.write("              \r\n");
      out.write("                <div class=\"card\">\r\n");
      out.write("                  <div class=\"card-header\">\r\n");
      out.write("                    <i class=\"fa fa-align-justify\"></i> Search for the Processed Files             \r\n");
      out.write("                  </div>\r\n");
      out.write("\r\n");
      out.write("                  <div class=\"card-body\">                  \r\n");
      out.write("\r\n");
      out.write("                     <!-- Start Search for the files -->                                         \r\n");
      out.write("\t      \t\t\t  <div class=\"form-group row\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t      \t\t\t   <div class=\"form-group col-sm-12\">\r\n");
      out.write("\t\t\t      \t\t\t   \r\n");
      out.write("\t\t\t\t      \t\t\t   <div class=\"form-group row\">\r\n");
      out.write("\t\t\t\t      \t\t\t   \r\n");
      out.write("\t\t\t\t      \t\t\t        <div class=\"form-group col-sm-3\">\r\n");
      out.write("\t\t\t\t      \t\t\t        <label for=\"source\"><strong>Content Type</strong></label>\r\n");
      out.write("\t\t\t\t\t\t                <select class=\"form-control\" id=\"contentType\" name=\"contentType\" >\r\n");
      out.write("\t\t\t\t\t\t\t \t\t\t<option value=\"\">-- Content Type -- </option>\r\n");
      out.write("\t\t\t\t\t\t \t \t\t\t");

						 	 			File errorLogs = null;
						                String errorLogFile = Utility.getPath();
						                errorLogs = new File(errorLogFile);
										try{
													                    
										java.util.List<Lookup> contentList = Lookup.GetContentTypeList();
													
										for (int i = 0; i < contentList.size(); i++){
											
										
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<option value=\"");
 out.print(contentList.get(i).getId());
      out.write('"');
      out.write('>');
      out.write(' ');
 out.print(contentList.get(i).getName()); 
      out.write(" </option>\t\t\t\t\t\t\t\t      \r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t ");

										}
										}catch(Exception er){
											er.printStackTrace();
										ErrorLogsAppender.appendException("Search.jsp page", er, errorLogs);
										}
						 	 			
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t \t\t\t</select>\r\n");
      out.write("\t\t\t      \t\t\t            </div>\r\n");
      out.write("\t\t\t      \t\t\t            \r\n");
      out.write("\t\t\t      \t\t\t            <div id=\"channel_id\" class=\"form-group col-sm-3\">\r\n");
      out.write("\t\t\t\t      \t\t\t            <label for=\"channel\"><strong>Channel Name</strong></label>\r\n");
      out.write("\t\t\t\t\t                        <select class=\"form-control\" name=\"channel\" id=\"channel\" >\r\n");
      out.write("\t\t\t\t\t                        <option value=\"\">-- Channel Name -- </option>\t\t\t\t\t                       \r\n");
      out.write("\t\t\t\t\t                        </select>\t\t\t      \t\t\t  \r\n");
      out.write("\t\t\t      \t\t\t            </div>\r\n");
      out.write("\t\t\t      \t\t\t            \r\n");
      out.write("\t\t\t      \t\t\t            <div class=\"form-group col-sm-3\">\r\n");
      out.write("\t\t\t\t      \t\t\t  \t\t\t<label for=\"source\"><strong>Date</strong></label>\r\n");
      out.write("\t\t\t\t      \t\t\t  \t\t\t<input class=\"form-control\" id=\"inputDate\" type=\"date\" name=\"inputDate\">  \r\n");
      out.write("\t\t\t\t      \t\t\t        </div>\t\t\t      \t\t\t         \r\n");
      out.write("\t\t\t      \t\t\t            \r\n");
      out.write("\t\t\t      \t\t\t             <div class=\"form-group col-sm-2\" style=\"padding:15px;\">\t\t\t      \t\t\t         \r\n");
      out.write("\t\t\t\t      \t\t\t            <button class=\"btn btn-sm btn-primary\" type=\"submit\" onClick=\"getContent();\">\r\n");
      out.write("                      \t\t\t\t\t\t<i class=\"fa fa-dot-circle-o\"></i> Search </button>\r\n");
      out.write("\t\t\t      \t\t\t            </div>\r\n");
      out.write("\t\t\t\t      \t\t\t   \r\n");
      out.write("\t\t\t\t      \t\t\t   </div>\r\n");
      out.write("\t\t\t\t      \t\t\t   \r\n");
      out.write("\t\t\t\t      \t\t\t   \t\t\t\t      \t\t\t   \r\n");
      out.write("\t\t\t\t      \t\t\t   </div>\r\n");
      out.write("\t\t\t      \t\t\t  \t\t\t      \t\t\t   \r\n");
      out.write("\t\t\t      \t\t\t   </div>\r\n");
      out.write("\t      \t\t\t                     \r\n");
      out.write("                    <!-- End Search for the files --> \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                    <!-- Start for display files --> \r\n");
      out.write("                   \r\n");
      out.write("\t\t\t\t\t<div id=\"result\"></div>\r\n");
      out.write("                        \r\n");
      out.write("                   \r\n");
      out.write("                    <!-- End for display files --> \r\n");
      out.write("                </div>\r\n");
      out.write("                \r\n");
      out.write("              </div>\r\n");
      out.write("             \r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </main>\r\n");
      out.write("\r\n");
      out.write("    </div>\r\n");
      out.write("    \r\n");
      out.write("\r\n");
      out.write("<!-- Start Top header View -->\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "includes/footer.jsp", out, false);
      out.write("\r\n");
      out.write("<!-- End Top Header View -->\r\n");
      out.write("\r\n");
      out.write("  </body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\r\n");
      out.write("$(document).ready(function (){\r\n");
      out.write("\t\r\n");
      out.write("\t$(\"#contentType\").on(\"change\", function (){\r\n");
      out.write("\t\tvar content_type_id = $(\"#contentType\").val(); // get content id in a selected box \r\n");
      out.write("\t\t\r\n");
      out.write("\t\t$.ajax({\r\n");
      out.write("\t\t\turl: \"channel.jsp\", // yuor jsp page name\r\n");
      out.write("\t\t\tdata:{\r\n");
      out.write("\t\t\t\tcontent_type_id: content_type_id\r\n");
      out.write("\t\t\t},\r\n");
      out.write("\t\t\tmethod: \"POST\",\r\n");
      out.write("\t\t\tsuccess: function (data)\r\n");
      out.write("\t\t\t{\r\n");
      out.write("\t\t\t\t$(\"#channel_id\").html(data);\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t})\r\n");
      out.write("\t});\r\n");
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("});\r\n");
      out.write("</script>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\r\n");
      out.write("$(document).ready(function() {\r\n");
      out.write("\r\n");
      out.write("    $('#datatables').DataTable();\r\n");
      out.write("\r\n");
      out.write("    });\r\n");
      out.write("\r\n");
      out.write("  </script>\r\n");

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

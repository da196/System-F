/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.42
 * Generated at: 2020-03-25 10:58:38 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.csp_002dincludes;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class csp_002dpledit_002dtopbar_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_packages.add("javax.servlet.http");
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

      out.write("<script type=\"text/javascript\" src=\"js/registration-js/jquery-1.12.4.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("function getDay(){\r\n");
      out.write("\t\r\n");
      out.write("\tvar day = document.getElementById('day').value;\r\n");
      out.write("\tdocument.getElementById('dayText').value = day;\r\n");
      out.write("\tdocument.getElementById(\"overlay\").style.display = \"block\";\r\n");
      out.write("\t\r\n");
      out.write("\t$.ajax({ \r\n");
      out.write("\t     type: \"post\",\r\n");
      out.write("\t      url: \"get-programs-edit.jsp\", //this is my servlet\r\n");
      out.write("\t       data: {\r\n");
      out.write("\t\t\t  day: day\r\n");
      out.write("\t           }, \r\n");
      out.write("\t          success: function(msg){ \r\n");
      out.write("\t          document.getElementById(\"overlay\").style.display = \"none\";\r\n");
      out.write("\t          $('#outputProgram').html(\"\");\t\t  \r\n");
      out.write("\t          $('#outputProgram').append(msg);\r\n");
      out.write("\t        }\r\n");
      out.write("\t   });\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
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
      out.write("    \r\n");
      out.write("    z-index: 2;\r\n");
      out.write("    cursor: pointer;\r\n");
      out.write("\tbackground: url('images/loading.gif') 50% 50% no-repeat rgb(0,0,0,0.5);\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("<!-- Topbar -->\r\n");
      out.write("<nav class=\"navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow\">\r\n");
      out.write("\r\n");
      out.write("<!-- Sidebar Toggle (Topbar) -->\r\n");
      out.write("<button id=\"sidebarToggleTop\" class=\"btn btn-link d-md-none rounded-circle mr-3\">\r\n");
      out.write("  <i class=\"fa fa-bars\"></i>\r\n");
      out.write("</button>\r\n");
      out.write("\r\n");
      out.write("<div class=\"dropdown\">\r\n");
      out.write("    \r\n");
      out.write("    <select class=\"form-control rounded-pill\" id=\"day\" onChange=\"getDay();\">\r\n");
      out.write("\t\t<option class=\"dropdown-item\" >Select day...</option>\r\n");
      out.write("\t\t<option class=\"dropdown-item\" value=\"Monday\">Monday</option>\r\n");
      out.write("\t\t<option class=\"dropdown-item\" value=\"Tuesday\">Tuesday</option>\r\n");
      out.write("\t\t<option class=\"dropdown-item\" value=\"Wednesday\">Wednesday</option>\r\n");
      out.write("\t\t<option class=\"dropdown-item\" value=\"Thursday\">Thursday</option>\r\n");
      out.write("\t\t<option class=\"dropdown-item\" value=\"Friday\">Friday</option>\r\n");
      out.write("\t\t<option class=\"dropdown-item\" value=\"Saturday\">Saturday</option>\r\n");
      out.write("\t\t<option class=\"dropdown-item\" value=\"Sunday\">Sunday</option>\r\n");
      out.write("\t</select>\r\n");
      out.write("</div>\r\n");
      out.write("<!--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("<div>2019 Q2, New PL</div> -->\r\n");
      out.write("\r\n");
      out.write("<!-- Topbar Navbar -->\r\n");
      out.write("<ul class=\"navbar-nav ml-auto\">\r\n");
      out.write("\r\n");
      out.write("  <!-- Nav Item - User Information -->\r\n");
      out.write("  <li class=\"nav-item dropdown no-arrow\">\r\n");
      out.write("    <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"userDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\r\n");
      out.write("      <span class=\"mr-2 d-none d-lg-inline text-gray-600 small\">user@mail.com</span>\r\n");
      out.write("      <span class=\"rounded-circle my-5 text-gray-400\"><i class=\"fas fa-user fa-sm fa-fw mr-2 text-gray-400\"></i></span>\r\n");
      out.write("    </a>\r\n");
      out.write("    <!-- Dropdown - User Information -->\r\n");
      out.write("    <div id=\"overlay\" class=\"dropdown-menu dropdown-menu-right shadow animated--grow-in\" aria-labelledby=\"userDropdown\">\r\n");
      out.write("      <a class=\"dropdown-item\" href=\"#\">\r\n");
      out.write("        <i class=\"fas fa-user fa-sm fa-fw mr-2 text-gray-400\"></i>\r\n");
      out.write("        Profile\r\n");
      out.write("      </a>\r\n");
      out.write("      <div class=\"dropdown-divider\"></div>\r\n");
      out.write("      <a class=\"dropdown-item\" href=\"#\" data-toggle=\"modal\" data-target=\"#logoutModal\">\r\n");
      out.write("        <i class=\"fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400\"></i>\r\n");
      out.write("        Logout\r\n");
      out.write("      </a>\r\n");
      out.write("    </div>\r\n");
      out.write("  </li>\r\n");
      out.write("\r\n");
      out.write("</ul>\r\n");
      out.write("<input type=\"hidden\" id=\"dayText\" />\r\n");
      out.write("</nav>\r\n");
      out.write("<!-- End of Topbar -->");
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
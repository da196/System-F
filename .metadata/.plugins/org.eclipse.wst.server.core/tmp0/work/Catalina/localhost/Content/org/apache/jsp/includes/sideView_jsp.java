/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.42
 * Generated at: 2019-11-28 07:19:59 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.includes;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class sideView_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<div class=\"app-body\">\r\n");
      out.write("        <div class=\"sidebar\">\r\n");
      out.write("          <nav class=\"sidebar-nav\">\r\n");
      out.write("            <ul class=\"nav\">\r\n");
      out.write("              <li class=\"nav-item\">\r\n");
      out.write("                <a class=\"nav-link\" href=\"index.jsp\">\r\n");
      out.write("                  <i class=\"nav-icon icon-speedometer\"></i> Dashboard               \r\n");
      out.write("                </a>\r\n");
      out.write("              </li>\r\n");
      out.write("              <li class=\"nav-title\">Content</li>\r\n");
      out.write("              <li class=\"nav-item\">\r\n");
      out.write("                <a class=\"nav-link\" href=\"channel-tv.jsp\">\r\n");
      out.write("                  <i class=\"nav-icon icon-screen-desktop\"></i>Television</a>\r\n");
      out.write("              </li>\r\n");
      out.write("              <li class=\"nav-item\">\r\n");
      out.write("                <a class=\"nav-link\" id=\"typo\"  href=\"channel-radio.jsp\">\r\n");
      out.write("                  <i class=\"nav-icon icon-playlist\"></i> Radio</a>\r\n");
      out.write("              </li>\r\n");
      out.write("              <li class=\"nav-title\">Components</li>\r\n");
      out.write("              <li class=\"nav-item\">\r\n");
      out.write("                <a class=\"nav-link\" href=\"library.jsp\">\r\n");
      out.write("                  <i class=\"nav-icon icon-camrecorder\"></i> Library               \r\n");
      out.write("                </a>\r\n");
      out.write("              </li>\r\n");
      out.write("              <li class=\"nav-item\">\r\n");
      out.write("                <a class=\"nav-link\" href=\"alert.jsp\">\r\n");
      out.write("                  <i class=\"nav-icon icon-bell\"></i> Alert               \r\n");
      out.write("                </a>\r\n");
      out.write("              </li>\r\n");
      out.write("              <li class=\"nav-item\">\r\n");
      out.write("                <a class=\"nav-link\" href=\"search.jsp\">\r\n");
      out.write("                  <i class=\"nav-icon icon-magnifier\"></i> Search               \r\n");
      out.write("                </a>\r\n");
      out.write("              </li>\r\n");
      out.write("               <li class=\"nav-item\">\r\n");
      out.write("                <a class=\"nav-link\" href=\"programLineup.jsp\">\r\n");
      out.write("                  <i class=\"nav-icon icon-info\"></i> Program Line Up               \r\n");
      out.write("                </a>\r\n");
      out.write("              </li>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("              <li class=\"nav-title\">Settings</li>\r\n");
      out.write("              <li class=\"nav-item\">\r\n");
      out.write("              <a class=\"nav-link\" href=\"roles.jsp\">\r\n");
      out.write("                      <i class=\"nav-icon icon-magic-wand\"></i> Roles</a>\r\n");
      out.write("              </li>\r\n");
      out.write("              <li class=\"nav-item\">\r\n");
      out.write("                    <a class=\"nav-link\" href=\"users.jsp\">\r\n");
      out.write("                      <i class=\"nav-icon icon-user\"></i> Users</a>\r\n");
      out.write("              </li>\r\n");
      out.write("              <li class=\"nav-item\">\r\n");
      out.write("                    <a class=\"nav-link\" href=\"channels.jsp\">\r\n");
      out.write("                      <i class=\"nav-icon icon-badge\"></i> Channels</a>\r\n");
      out.write("                  </li>\r\n");
      out.write("                  <li class=\"nav-item\">\r\n");
      out.write("                    <a class=\"nav-link\" href=\"pathFiles.jsp\">\r\n");
      out.write("                      <i class=\"nav-icon icon-docs\"></i> Path Files</a>\r\n");
      out.write("                  </li>\r\n");
      out.write("                  <li class=\"nav-item\">\r\n");
      out.write("                    <a class=\"nav-link\" href=\"regions.jsp\">\r\n");
      out.write("                      <i class=\"nav-icon icon-location-pin\"></i> Regions</a>\r\n");
      out.write("                  </li>  \r\n");
      out.write("       <!--                  \r\n");
      out.write("              <li class=\"divider\"></li>\r\n");
      out.write("              <li class=\"nav-title\">Extras</li>\r\n");
      out.write("              <li class=\"nav-item nav-dropdown\">\r\n");
      out.write("                <a class=\"nav-link nav-dropdown-toggle\" href=\"#\">\r\n");
      out.write("                  <i class=\"nav-icon icon-star\"></i> Pages</a>\r\n");
      out.write("                <ul class=\"nav-dropdown-items\">\r\n");
      out.write("                  <li class=\"nav-item\">\r\n");
      out.write("                    <a class=\"nav-link\" href=\"login.html\" target=\"_top\">\r\n");
      out.write("                      <i class=\"nav-icon icon-star\"></i> Login</a>\r\n");
      out.write("                  </li>\r\n");
      out.write("                  <li class=\"nav-item\">\r\n");
      out.write("                    <a class=\"nav-link\" href=\"register.html\" target=\"_top\">\r\n");
      out.write("                      <i class=\"nav-icon icon-star\"></i> Register</a>\r\n");
      out.write("                  </li>\r\n");
      out.write("                  <li class=\"nav-item\">\r\n");
      out.write("                    <a class=\"nav-link\" href=\"404.html\" target=\"_top\">\r\n");
      out.write("                      <i class=\"nav-icon icon-star\"></i> Error 404</a>\r\n");
      out.write("                  </li>\r\n");
      out.write("                  <li class=\"nav-item\">\r\n");
      out.write("                    <a class=\"nav-link\" href=\"500.html\" target=\"_top\">\r\n");
      out.write("                      <i class=\"nav-icon icon-star\"></i> Error 500</a>\r\n");
      out.write("                  </li>\r\n");
      out.write("                </ul>\r\n");
      out.write("              </li> \r\n");
      out.write("        -->       \r\n");
      out.write("            </ul>\r\n");
      out.write("          </nav>\r\n");
      out.write("          <button class=\"sidebar-minimizer brand-minimizer\" type=\"button\"></button>\r\n");
      out.write("        </div>");
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

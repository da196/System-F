/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.42
 * Generated at: 2020-05-06 12:39:08 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.csp_002dincludes;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class sidebar_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!-- Sidebar -->\r\n");
      out.write("<ul class=\"navbar-nav bg-gradient-primary sidebar sidebar-dark accordion\" id=\"accordionSidebar\">\r\n");
      out.write("\r\n");
      out.write("<!-- Sidebar - Brand -->\r\n");
      out.write("<a class=\"sidebar-brand d-flex align-items-center justify-content-center\" href=\"csp-dashboard.jsp\">\r\n");
      out.write("\r\n");
      out.write("  <div class=\"sidebar-brand-text mx-3\"><img class=\"navbar-brand-full\" src=\"pics/tcra_bright.png\" width=\"65\" height=\"55\" alt=\"TCMS Logo\"> TCMS</div>\r\n");
      out.write("</a>\r\n");
      out.write("\r\n");
      out.write("<!-- Divider -->\r\n");
      out.write("<hr class=\"sidebar-divider my-0\">\r\n");
      out.write("\r\n");
      out.write("<!-- Divider -->\r\n");
      out.write("<hr class=\"sidebar-divider\">\r\n");
      out.write("\r\n");
      out.write("<!-- Heading -->\r\n");
      out.write("<div class=\"sidebar-heading\">\r\n");
      out.write("  Home\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<!-- Nav Item - Pages Collapse Menu -->\r\n");
      out.write("<li class=\"nav-item active\">\r\n");
      out.write("  <a class=\"nav-link\" href=\"csp-dashboard.jsp\">\r\n");
      out.write("  <i class=\"fas fa-clipboard-list\"></i>\r\n");
      out.write("    <span> Home </span>\r\n");
      out.write("  </a>\r\n");
      out.write("  </li>\r\n");
      out.write("  \r\n");
      out.write("<div class=\"sidebar-heading\">\r\n");
      out.write("  Program Line Up\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<li class=\"nav-item active\">\r\n");
      out.write("<a class=\"nav-link\" href=\"csp-approved-pl.jsp\">\r\n");
      out.write("    <i class=\"fas fa-fw fa-clock\"></i>\r\n");
      out.write("    <span> Current Program Line Up </span>\r\n");
      out.write("  </a>\r\n");
      out.write("  <a class=\"nav-link\" href=\"csp-home.jsp\">\r\n");
      out.write("    <i class=\"fas fa-fw fa-clone\"></i>\r\n");
      out.write("    <span> Submit Program Line Up </span>\r\n");
      out.write("  </a>\r\n");
      out.write("  <a class=\"nav-link\" href=\"csp-pl-status.jsp\">\r\n");
      out.write("    <i class=\"fas fa-fw fa-tag\"></i>\r\n");
      out.write("    <span>Status Program Line Up</span>\r\n");
      out.write("  </a>\r\n");
      out.write("</li>\r\n");
      out.write("\r\n");
      out.write("<div class=\"sidebar-heading\">\r\n");
      out.write(" User Guide\r\n");
      out.write("</div>\r\n");
      out.write(" <li class=\"nav-item active\">\r\n");
      out.write("   <a class=\"nav-link\" href=\"#\">\r\n");
      out.write("    <i class=\"fas fa-clipboard-list\"></i>\r\n");
      out.write("    <span>User Manual</span>\r\n");
      out.write("  </a>\r\n");
      out.write("</li>\r\n");
      out.write("\r\n");
      out.write("<!-- Nav Item - Utilities Collapse Menu -->\r\n");
      out.write("<!--  \r\n");
      out.write("<li class=\"nav-item active\">\r\n");
      out.write("  <a class=\"nav-link\" href=\"csp-old.jsp\">\r\n");
      out.write("    <i class=\"fas fa-clipboard-list\"></i>\r\n");
      out.write("    <span>Preview</span>\r\n");
      out.write("  </a>\r\n");
      out.write("</li>\r\n");
      out.write("-->\r\n");
      out.write("<!-- Divider -->\r\n");
      out.write("\r\n");
      out.write("<!-- Sidebar Toggler (Sidebar) -->\r\n");
      out.write("<div class=\"text-center d-none d-md-inline\">\r\n");
      out.write("  <button class=\"rounded-circle border-0\" id=\"sidebarToggle\"></button>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("</ul>\r\n");
      out.write("<!-- End of Sidebar -->");
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

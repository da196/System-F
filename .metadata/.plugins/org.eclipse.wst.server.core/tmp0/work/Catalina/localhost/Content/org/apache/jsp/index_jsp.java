/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.42
 * Generated at: 2020-05-06 12:35:45 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!-- Start header -->\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "csp-includes/csp-rl-header.jsp", out, false);
      out.write("\r\n");
      out.write("<!-- End header -->\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/registration-js/jquery-1.12.4.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("function login(){\r\n");
      out.write("\t\r\n");
      out.write("\tvar email = document.getElementById('email').value;\r\n");
      out.write("\tvar password = document.getElementById('password').value;\r\n");
      out.write("\t\r\n");
      out.write("\tif (email == \"\") {\r\n");
      out.write("\t\talert(\"Please enter email address!\");\r\n");
      out.write("\t\tdie(\"\");\r\n");
      out.write("\t}\r\n");
      out.write("\telse if (password == \"\") {\r\n");
      out.write("\t\talert(\"Please enter password!\");\r\n");
      out.write("\t\tdie(\"\");\r\n");
      out.write("\t}\r\n");
      out.write("\telse{\r\n");
      out.write("\t $.ajax({\r\n");
      out.write("\t     type: \"post\",\r\n");
      out.write("\t      url: \"login-action.jsp\", //this is my servlet\r\n");
      out.write("\t       data: {\r\n");
      out.write("\t\t\t  email: email,\r\n");
      out.write("\t\t\t  password: password\r\n");
      out.write("\t           }, \r\n");
      out.write("\t          success: function(msg){      \r\n");
      out.write("\t          $('#output').append(msg);\r\n");
      out.write("\t        }\r\n");
      out.write("\t     });\r\n");
      out.write("\t}\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("<form action = \"login-action.jsp\" method = \"POST\">\r\n");
      out.write("<div class=\"container\">\r\n");
      out.write("\r\n");
      out.write("    <div class=\"row justify-content-center\">\r\n");
      out.write("\t\r\n");
      out.write("\t\t<div class=\"col-xl-10 col-lg-12 col-md-9 justify-content-center my-5\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t<div class=\"card o-hidden border-0 shadow-lg my-5 bg-gray-300\">\r\n");
      out.write("\t\t\t  <div class=\"card-body p-0\">\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\r\n");
      out.write("\t\t\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t\t  <div class=\"col-lg-6 d-none d-lg-block\">\r\n");
      out.write("\t\t\t\t\t  <img width=\"auto\" height=\"auto\" src=\"backend/img/tcra-logo.png\" class=\"card-img mt-5 mx-5\" alt=\"...\">\r\n");
      out.write("\t\t\t\t\t  <div class=\"row ml-5\">\r\n");
      out.write("\t\t\t\t\t\t<span class=\"col-2\"> <i class=\"fas fa-tv\"></i> </span>\r\n");
      out.write("\t\t\t\t\t\t<span class=\"col-2\"> <i class=\"fas fa-music\"></i> </span>\r\n");
      out.write("\t\t\t\t\t\t<span class=\"col-2\"> <i class=\"far fa-newspaper\"></i> </span>\r\n");
      out.write("\t\t\t\t\t\t<span class=\"col-2\"> <i class=\"fas fa-rss-square\"></i> </span>\r\n");
      out.write("\t\t\t\t\t\t<span class=\"col-2\"> <i class=\"far fa-futbol\"></i> </span>\r\n");
      out.write("\t\t\t\t\t\t<span class=\"col-2\"> <i class=\"fas fa-list-ol\"></i> </span>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t  </div>\r\n");
      out.write("\t\t\t\t  <div class=\"col-lg-6 mt-3\">\r\n");
      out.write("\t\t\t\t\t<div class=\"p-5\">\r\n");
      out.write("\t\t\t\t\t  <div class=\"text-center\">\r\n");
      out.write("\t\t\t\t\t\t<h1 class=\"h4 text-gray-900 mb-4\">Welcome to TCRA CSP Platform</h1>\r\n");
      out.write("\t\t\t\t\t\t<h5 class=\"card-title text-muted\">System login</h5>\r\n");
      out.write("\t\t\t\t\t  </div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t  <form class=\"user\" action=\"\" method=\"\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t\t\t<label class=\"form-col-form-label\" for=\"inputSuccess1\">Email address</label>\r\n");
      out.write("\t\t\t\t\t\t\t<input class=\"form-control form-control-user is-valid\" id=\"email\" name=\"email\" type=\"text\"  autocomplete=\"off\" readonly \r\n");
      out.write("    onfocus=\"this.removeAttribute('readonly');\" required>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t\t\t<label class=\"form-col-form-label\" for=\"inputError1\">Password</label>\r\n");
      out.write("\t\t\t\t\t\t\t<input class=\"form-control form-control-user is-invalid\" id=\"password\" name=\"password\" type=\"password\" autocomplete=\"off\" readonly \r\n");
      out.write("    onfocus=\"this.removeAttribute('readonly');\" required>\r\n");
      out.write("\t\t\t\t\t\t\t<div style=\"display:none;\" id=\"invalid-pass\" class=\"invalid-feedback\">Please provide a valid password.</div>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t ");
 
                    try {
                      String id = null;
                      id = request.getParameter("id");
                    if (id.equals("1")) {
                    	out.print("<div style='color:red; '>Username or password is incorrect!</div><br>");
                    }
                    if (id.equals("2")) {
                    	out.print("<div style='color:red; '>You have attempt 3 times, please wait after 1 hour system will resume again!!</div><br>");
                    }
                    } catch(NullPointerException ex) {
                    	
                    }
                    
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<button type=\"submit\" onClick=\"login();\" class=\"btn btn-primary btn-lg btn-block\">Login</button>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<div class=\"clearfix mt-5\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"float-left mt-4\"><a href=\"csp-registration.jsp\">Registration</a></div>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"float-right mt-4\"><a href=\"csp-forgot-password.jsp\">Forgot password?</a></div>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t  </div>\r\n");
      out.write("\t\t\t  </div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t  </div>\r\n");
      out.write("\t  </div>\r\n");
      out.write("\t</div>\r\n");
      out.write("</div>\r\n");
      out.write("</form>\r\n");
      out.write("    \r\n");
      out.write("  \t<!-- Start footer -->\r\n");
      out.write("\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "csp-includes/csp-out-pgs-footer.jsp", out, false);
      out.write("\r\n");
      out.write("\t<!-- End footer -->\r\n");
      out.write("\t\r\n");
      out.write("  </body>\r\n");
      out.write("</html>");
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

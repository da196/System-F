/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.42
 * Generated at: 2019-11-15 14:17:56 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class programLineup_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("      <main class=\"main\">\r\n");
      out.write("         <!-- Breadcrumb-->\r\n");
      out.write("         <ol class=\"breadcrumb\">\r\n");
      out.write("          <li class=\"breadcrumb-item\">Home</li>\r\n");
      out.write("          <li class=\"breadcrumb-item\">\r\n");
      out.write("            Components\r\n");
      out.write("          </li>   \r\n");
      out.write("          <li class=\"breadcrumb-item\">\r\n");
      out.write("            <a href=\"programLineup.jsp\">Program Line up</a>\r\n");
      out.write("          </li>   \r\n");
      out.write("        </ol>        \r\n");
      out.write("        <!-- Breadcrumb-->\r\n");
      out.write("        <div class=\"container-fluid\">\r\n");
      out.write("          <div class=\"animated fadeIn\">\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("              <div class=\"col-sm-12 col-xl-12\">\r\n");
      out.write("                <div class=\"card\">\r\n");
      out.write("                  <div class=\"card-header\">\r\n");
      out.write("                    <i class=\"fa fa-align-justify\"></i> Program Line up for all Channels             \r\n");
      out.write("                  </div>\r\n");
      out.write("\r\n");
      out.write("                  <div class=\"card-body\" style=\"padding-bottom:0px; margin-bottom:0px;\">                  \r\n");
      out.write("                     <!-- Start Search for the content --> \r\n");
      out.write("                                        \r\n");
      out.write("                    <form class=\"form-horizontal\"  action=\"\" method=\"post\" style=\"padding:0px; margin:0px;\">\t\r\n");
      out.write("\t      \t\t\t  <div class=\"form-group row\">\r\n");
      out.write("\t      \t\t\t  \t\t\t      \t\t\t\t\t      \t\t\t  \t\t\t      \t\t\t  \r\n");
      out.write("\t\t\t      \t\t\t   <div class=\"form-group col-sm-12\">\r\n");
      out.write("\t\t\t      \t\t\t   \r\n");
      out.write("\t\t\t\t      \t\t\t   <div class=\"form-group row\">\r\n");
      out.write("\t\t\t\t      \t\t\t   \r\n");
      out.write("\t\t\t\t      \t\t\t    <div class=\"form-group col-sm-3\">\r\n");
      out.write("\t\t\t\t      \t\t\t        <label for=\"content\"><strong>Content Type</strong></label>\r\n");
      out.write("\t\t\t      \t\t\t  \t\t\t\t<select class=\"form-control\" id=\"content\">\r\n");
      out.write("\t\t\t\t\t                          <option value=\"\">-- Content -- </option>\r\n");
      out.write("\t\t\t\t\t                          <option value=\"Television\">Television</option>\r\n");
      out.write("\t\t\t\t\t                          <option value=\"Audio\">Audio</option>\r\n");
      out.write("\t\t\t\t\t                         \r\n");
      out.write("\t\t\t\t\t                        </select>\r\n");
      out.write("\t\t\t      \t\t\t            </div>\r\n");
      out.write("\t\t\t\t      \t\t\t   \r\n");
      out.write("\t\t\t\t      \t\t\t        <div class=\"form-group col-sm-3\">\r\n");
      out.write("\t\t\t\t      \t\t\t        <label for=\"source\"><strong>Channel/Station</strong></label>\r\n");
      out.write("\t\t\t      \t\t\t  \t\t\t\t<select class=\"form-control\" id=\"source\">\r\n");
      out.write("\t\t\t\t\t                          <option value=\"\">-- Channel -- </option>\r\n");
      out.write("\t\t\t\t\t                          <option value=\"ITV\">ITV</option>\r\n");
      out.write("\t\t\t\t\t                          <option value=\"EFM\">EFM</option>\r\n");
      out.write("\t\t\t\t\t                          <option value=\"WASAFI TV\">WASAFI TV</option>\r\n");
      out.write("\t\t\t\t\t                        </select>\r\n");
      out.write("\t\t\t      \t\t\t            </div>\r\n");
      out.write("\t\t\t      \t\t\t            \r\n");
      out.write("\t\t\t      \t\t\t            <div class=\"form-group col-sm-3\">\r\n");
      out.write("\t\t\t      \t\t\t  \t\t\t<label for=\"date\"><strong>Date</strong></label>\r\n");
      out.write("\t\t\t      \t\t\t  \t\t\t<input class=\"form-control\" id=\"inputDate\" type=\"date\" name=\"inputDate\">  \r\n");
      out.write("\t\t\t      \t\t\t            </div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t      \t\t\t            <div class=\"form-group col-sm-3\">\r\n");
      out.write("\t\t\t      \t\t\t            \t<br>\t\t\t      \t\t\t         \r\n");
      out.write("\t\t\t\t      \t\t\t            <button class=\"btn btn-sm btn-primary\" type=\"submit\">\r\n");
      out.write("                      \t\t\t\t\t\t<i class=\"fa fa-dot-circle-o\"></i> Search \r\n");
      out.write("                      \t\t\t\t\t\t</button>\r\n");
      out.write("                      \t\t\t\t\t\t<button class=\"btn btn-sm btn-success\" type=\"submit\">\r\n");
      out.write("                      \t\t\t\t\t\t<i class=\"fa fa-file\"></i> CSV </button>\r\n");
      out.write("\t\t\t      \t\t\t            </div>\r\n");
      out.write("\t\t\t      \t\t\t          \r\n");
      out.write("\t\t\t      \t\t\t         \r\n");
      out.write("\t\t\t\t      \t\t\t   \r\n");
      out.write("\t\t\t\t      \t\t\t   </div>\r\n");
      out.write("\t\t\t\t      \t\t\t   \r\n");
      out.write("\t\t\t\t      \t\t\t   </div>\r\n");
      out.write("\t\t\t      \t\t\t  \t\t\t      \t\t\t   \r\n");
      out.write("\t\t\t      \t\t\t   </div>\r\n");
      out.write("\t      \t\t\t  \r\n");
      out.write("\t      \t\t\t  </div>\r\n");
      out.write("                    </form>\r\n");
      out.write("                    \r\n");
      out.write("                    <div class=\"col-sm-12 col-xl-12\">\r\n");
      out.write("                    <!-- Start Table -->\r\n");
      out.write("                    <h6> <strong><center>PROGRAM LINE UP SEARCH </center></strong></h6>\r\n");
      out.write("                    <table class=\"table table-responsive-sm table-bordered table-striped table-sm\">\r\n");
      out.write("                      <thead>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                          <th>CHANNEL/STATION</th>\r\n");
      out.write("                          <th>DATE</th>\r\n");
      out.write("                          <th>PROGRAM</th>\r\n");
      out.write("                          <th>DURATION</th>                       \r\n");
      out.write("                        </tr>\r\n");
      out.write("                      </thead>\r\n");
      out.write("                      <tbody>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                          <td>ITV</td>\r\n");
      out.write("                          <td>2012/01/01</td>\r\n");
      out.write("                          <td>Habari</td>\r\n");
      out.write("                          <td>2:00 - 3:30</td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                                            \r\n");
      out.write("                        <tr>\r\n");
      out.write("                           <td>\tEFM</td>\r\n");
      out.write("                          <td>2012/01/01</td>\r\n");
      out.write("                          <td>Sport</td>\r\n");
      out.write("                          <td>3:00 - 3:30</td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                      </tbody>\r\n");
      out.write("                    </table>\r\n");
      out.write("                    \r\n");
      out.write("                    </div>\r\n");
      out.write("                    \r\n");
      out.write("                    \r\n");
      out.write("                    <!-- End Table -->\r\n");
      out.write("                   \r\n");
      out.write("                    \r\n");
      out.write("                    </div> <!-- End Div card-body -->\r\n");
      out.write("\r\n");
      out.write("                    <!-- Start DIV for video/audio player --> \r\n");
      out.write("                        \r\n");
      out.write("                    <div id='search_player'>\r\n");
      out.write("\r\n");
      out.write("                    \r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                    <!-- End DIV for video/audio player --> \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("                \r\n");
      out.write("              </div>\r\n");
      out.write("             \r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </main>\r\n");
      out.write("<!-- Start AsideMenu View -->\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "includes/asideMenuView.jsp", out, false);
      out.write("\r\n");
      out.write("<!-- End AsideMenu View --> \r\n");
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

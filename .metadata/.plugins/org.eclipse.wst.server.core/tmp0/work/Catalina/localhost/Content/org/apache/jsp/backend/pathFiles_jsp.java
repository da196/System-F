/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.42
 * Generated at: 2020-01-07 09:30:56 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.backend;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class pathFiles_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("      <main class=\"main\">\n");
      out.write("         <!-- Breadcrumb-->\n");
      out.write("         <ol class=\"breadcrumb\">\n");
      out.write("          <li class=\"breadcrumb-item\">Home</li>\n");
      out.write("          <li class=\"breadcrumb-item\">\n");
      out.write("            Settings\n");
      out.write("          </li>   \n");
      out.write("          <li class=\"breadcrumb-item\">\n");
      out.write("            <a href=\"pathFiles.jsp\">PathFiles</a>\n");
      out.write("          </li>   \n");
      out.write("        </ol>        \n");
      out.write("        <!-- Breadcrumb-->\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("          <div class=\"animated fadeIn\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("              <div class=\"col-sm-12 col-xl-12\">\n");
      out.write("                <div class=\"card\">\n");
      out.write("                  <div class=\"card-header\">\n");
      out.write("                    <i class=\"fa fa-align-justify\"></i> List of Path Files          \n");
      out.write("                    <div class=\"card-header-actions\">\n");
      out.write("                    <button class=\"btn btn-pill btn-block btn-primary mb-1\" type=\"button\" data-toggle=\"modal\" data-target=\"#addPathFilesDetailsModal\"><i class=\"fa fa-plus\"></i> <b>Add Path File</b></button>                    \n");
      out.write("                    </div>\n");
      out.write("                  </div>\n");
      out.write("                  <div class=\"card-body\">\n");
      out.write("                   \n");
      out.write("                    <table id=\"datatables\" class=\"table table-striped table-no-bordered table-hover\" cellspacing=\"0\" width=\"100%\" style=\"width:100%\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<thead>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<th>Channel/Station</th>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<th>Path to the Files</th>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<th class=\"disabled-sorting\">Actions</th>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</thead>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tfoot>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<tr>\n");
      out.write("                      <th>Channel/Station</th>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<th>Path to the Files</th>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<th class=\"disabled-sorting\">Actions</th>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tfoot>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tbody>\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t          <!-- Start of the Table Body -->\t\n");
      out.write("\t\t\t\t\t\t\t\t\t  \n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<tr>\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<td>ITV Media</td>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<td>E:/TCMS/Channels/Dar/ITV/</td>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<td>                       \n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<a class=\"btn btn-info\" href=\"#editPathFilesDetailsModal\" data-toggle=\"modal\" title=\"EDIT\">\n");
      out.write("                          <i class=\"fa fa-edit\"></i>\n");
      out.write("                        </a>\n");
      out.write("                        <a class=\"btn btn-danger\" href=\"#deletePathFilesModal\" data-toggle=\"modal\" title=\"DELETE\">\n");
      out.write("                          <i class=\"fa fa-trash-o\"></i>\n");
      out.write("                        </a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</tr>\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<!-- End of the Table Body -->\n");
      out.write("\t\t\t\t\t\t\t\t\t\t   </tbody>\n");
      out.write("\t\t\t\t\t\t\t\t\t    </table>                     \n");
      out.write("                    \n");
      out.write("\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("              </div>\n");
      out.write("             \n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </main>\n");
      out.write("\n");
      out.write("<!-- Start AsideMenu View -->\n");
      out.write("<");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "includes/asideMenuView.jsp", out, false);
      out.write("\n");
      out.write("<!-- End AsideMenu View -->     \n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("\n");
      out.write("   <!-- Start Add Path Files Form -->\n");
      out.write(" <div class=\"modal fade\" id=\"addPathFilesDetailsModal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myModalLabel\" aria-hidden=\"true\">\n");
      out.write("            <div class=\"modal-dialog modal-primary\" role=\"document\">\n");
      out.write("              <div class=\"modal-content\">\n");
      out.write("                <div class=\"modal-header\">\n");
      out.write("                  <h4 class=\"modal-title\">New Path File</h4>\n");
      out.write("                  <button class=\"close\" type=\"button\" data-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("                    <span aria-hidden=\"true\">X</span>\n");
      out.write("                  </button>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"modal-body\">\n");
      out.write("                <div class=\"card-body\">\n");
      out.write("                    <form action=\"\" method=\"post\">\n");
      out.write("                      <div class=\"form-group\">\n");
      out.write("                        <label for=\"role-name\"><strong>Channels / Stations</strong></label>\n");
      out.write("                        <select class=\"form-control\" id=\"channels\">\n");
      out.write("                          <option  value=\"\">-- Channels/Stations</option>\n");
      out.write("                          <option  value=\"ITV\">ITV</option>\n");
      out.write("                          <option  value=\"WASAFI\">WASAFI</option>\n");
      out.write("                          <option  value=\"CLOUDS\">CLOUDS</option>\n");
      out.write("                          <option  value=\"EFM\">EFM</option> \n");
      out.write("                        </select>                       \n");
      out.write("                      </div>\n");
      out.write("                      <div class=\"form-group\">\n");
      out.write("                        <label for=\"path-name\"><strong>Path Name</strong></label>\n");
      out.write("                        <input class=\"form-control\" id=\"path-name\" type=\"text\" name=\"path-name\" placeholder=\"Enter Path Name..\">\n");
      out.write("                      </div>\n");
      out.write("                    </form>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"modal-footer\">\n");
      out.write("                  <button class=\"btn btn-secondary\" type=\"button\" data-dismiss=\"modal\">Close</button>\n");
      out.write("                  <button class=\"btn btn-primary\" type=\"button\">Save</button>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("              <!-- /.modal-content-->\n");
      out.write("            </div>\n");
      out.write("            <!-- /.modal-dialog-->\n");
      out.write("          </div>\n");
      out.write("  <!-- End Add Path Files Form -->\n");
      out.write("\n");
      out.write("\n");
      out.write("  <!-- Start Edit Path Files Form -->\n");
      out.write("  <div class=\"modal fade\" id=\"editPathFilesDetailsModal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myModalLabel\" aria-hidden=\"true\">\n");
      out.write("            <div class=\"modal-dialog modal-primary\" role=\"document\">\n");
      out.write("              <div class=\"modal-content\">\n");
      out.write("                <div class=\"modal-header\">\n");
      out.write("                  <h4 class=\"modal-title\">Edit Path File</h4>\n");
      out.write("                  <button class=\"close\" type=\"button\" data-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("                    <span aria-hidden=\"true\">X</span>\n");
      out.write("                  </button>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"modal-body\">\n");
      out.write("                <div class=\"card-body\">\n");
      out.write("                    <form action=\"\" method=\"post\">\n");
      out.write("                      <div class=\"form-group\">\n");
      out.write("                        <label for=\"role-name\"><strong>Channels / Stations</strong></label>\n");
      out.write("                        <select class=\"form-control\" id=\"channels\">\n");
      out.write("                          <option  value=\"\">-- Channels/Stations</option>\n");
      out.write("                          <option  value=\"ITV\">ITV</option>\n");
      out.write("                          <option  value=\"WASAFI\">WASAFI</option>\n");
      out.write("                          <option  value=\"CLOUDS\">CLOUDS</option>\n");
      out.write("                          <option  value=\"EFM\">EFM</option> \n");
      out.write("                        </select>                       \n");
      out.write("                      </div>\n");
      out.write("                      <div class=\"form-group\">\n");
      out.write("                        <label for=\"path-name\"><strong>Path Name</strong></label>\n");
      out.write("                        <input class=\"form-control\" id=\"path-name\" type=\"text\" name=\"path-name\" placeholder=\"Enter Path Name..\">\n");
      out.write("                      </div>\n");
      out.write("                    </form>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"modal-footer\">\n");
      out.write("                  <button class=\"btn btn-secondary\" type=\"button\" data-dismiss=\"modal\">Close</button>\n");
      out.write("                  <button class=\"btn btn-primary\" type=\"button\">Save</button>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("              <!-- /.modal-content-->\n");
      out.write("            </div>\n");
      out.write("            <!-- /.modal-dialog-->\n");
      out.write("          </div>\n");
      out.write("  <!-- End Edit Path Files Form -->\n");
      out.write("\n");
      out.write("\n");
      out.write("  <!-- Start Delete Path Files Modal -->\n");
      out.write("  <div class=\"modal fade\" id=\"deletePathFilesModal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myModalLabel\" aria-hidden=\"true\">\n");
      out.write("          <div class=\"modal-dialog modal-danger\" role=\"document\">\n");
      out.write("            <div class=\"modal-content\">\n");
      out.write("              <div class=\"modal-header\">\n");
      out.write("                <h4 class=\"modal-title\">Delete Path File</h4>\n");
      out.write("                <button class=\"close\" type=\"button\" data-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("                  <span aria-hidden=\"true\">X</span>\n");
      out.write("                </button>\n");
      out.write("              </div>\n");
      out.write("              <div class=\"modal-body\">\n");
      out.write("                <p>Are you sure you want to <b>delete</b> this Path File ?</p>\n");
      out.write("              </div>\n");
      out.write("              <div class=\"modal-footer\">\n");
      out.write("                <button class=\"btn btn-secondary\" type=\"button\" data-dismiss=\"modal\">Close</button>\n");
      out.write("                <button class=\"btn btn-danger\" type=\"sumit\">Delete</button>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("            <!-- /.modal-content-->\n");
      out.write("          </div>\n");
      out.write("          <!-- /.modal-dialog-->\n");
      out.write("        </div>\n");
      out.write("<!-- End Delete Path Files Modal -->\n");
      out.write("\n");
      out.write("<!-- Start Top header View -->\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "includes/footer.jsp", out, false);
      out.write("\n");
      out.write("<!-- End Top Header View -->\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("\n");
      out.write("$(document).ready(function() {\n");
      out.write("\n");
      out.write("    $('#datatables').DataTable();\n");
      out.write("\n");
      out.write("    });\n");
      out.write("\n");
      out.write("  </script>\n");
      out.write("  </body>\n");
      out.write("</html>\n");
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
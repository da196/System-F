/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.42
 * Generated at: 2020-04-17 12:53:20 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.backend;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import tcms.configuration.*;

public final class changePassword_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\r\n");
      out.write("//START PASSWORD CHECK \r\n");
      out.write("function passwordCheck(field_val,fieldName){\r\n");
      out.write("\tif(field_val.length <= 8){\r\n");
      out.write("\t\t// Declare variable\r\n");
      out.write("      var lowercaseCheck = /.*[a-z]/\r\n");
      out.write("      var uppercaseCheck = /.*[A-Z]/\r\n");
      out.write("      var specialCharacterCheck = /.*[!@#$%^&*]/\r\n");
      out.write("      var digitCheck = /.*\\d/       \t\r\n");
      out.write("      var countDigitCheck = /.{8,}/\r\n");
      out.write("\r\n");
      out.write("      // Search to the variable        \r\n");
      out.write("      var regResultLowerCase = field_val.search(lowercaseCheck);             \r\n");
      out.write("      var regResultUpperCase = field_val.search(uppercaseCheck);\r\n");
      out.write("      var regResultspecialCharacter = field_val.search(specialCharacterCheck);\r\n");
      out.write("      var regResultDigit = field_val.search(digitCheck);\r\n");
      out.write("      var regResultCountCharacters = field_val.search(countDigitCheck);\r\n");
      out.write("\r\n");
      out.write("      if(regResultLowerCase != 0){\r\n");
      out.write("      \t$('#pmatch').empty()\r\n");
      out.write("      \t\t\t    .html(\"Password should contain atleast one lowercase character \")\r\n");
      out.write("      \t\t\t    .css(\"display\",\"block\")\r\n");
      out.write("      \t\t\t    .css(\"color\",\"red\")\r\n");
      out.write("      \t\t\t    .css(\"font-weight\",\"bold\")\r\n");
      out.write("      \t\t\t    .css(\"font-size\",\"14px\");    \r\n");
      out.write("      \tdie();\r\n");
      out.write("      }\r\n");
      out.write("      else if(regResultUpperCase != 0){        \t\r\n");
      out.write("      \t$('#pmatch').empty()\r\n");
      out.write("\t\t    \t\t\t.html(\"Password should contain atleast one uppercase character \")\r\n");
      out.write("\t\t    \t\t\t.css(\"display\",\"block\")\r\n");
      out.write("\t\t    \t\t\t.css(\"color\",\"red\")\r\n");
      out.write("\t\t    \t\t\t.css(\"font-weight\",\"bold\")\r\n");
      out.write("\t\t    \t\t\t.css(\"font-size\",\"14px\"); \r\n");
      out.write("      \tdie();\r\n");
      out.write("      }\r\n");
      out.write("      else if(regResultspecialCharacter != 0){        \t\r\n");
      out.write("      \t$('#pmatch').empty()\r\n");
      out.write("\t\t    \t\t\t.html(\"Password should contain atleast one special character \")\r\n");
      out.write("\t\t    \t\t\t.css(\"display\",\"block\")\r\n");
      out.write("\t\t    \t\t\t.css(\"color\",\"red\")\r\n");
      out.write("\t\t    \t\t\t.css(\"font-weight\",\"bold\")\r\n");
      out.write("\t\t    \t\t\t.css(\"font-size\",\"14px\"); \r\n");
      out.write("      }\r\n");
      out.write("      else if(regResultDigit != 0){        \t\r\n");
      out.write("      \t$('#pmatch').empty()\r\n");
      out.write("\t\t    \t\t\t.html(\"Password should contain atleast one digit \")\r\n");
      out.write("\t\t    \t\t\t.css(\"display\",\"block\")\r\n");
      out.write("\t\t    \t\t\t.css(\"color\",\"red\")\r\n");
      out.write("\t\t    \t\t\t.css(\"font-weight\",\"bold\")\r\n");
      out.write("\t\t    \t\t\t.css(\"font-size\",\"14px\"); \r\n");
      out.write("      \tdie();\r\n");
      out.write("      }\r\n");
      out.write("      else if(regResultCountCharacters != 0){        \t\r\n");
      out.write("      \t$('#pmatch').empty()\r\n");
      out.write("\t\t    \t\t\t.html(\"Password should contain atleast eight characters \")\r\n");
      out.write("\t\t    \t\t\t.css(\"display\",\"block\")\r\n");
      out.write("\t\t    \t\t\t.css(\"color\",\"red\")\r\n");
      out.write("\t\t    \t\t\t.css(\"font-weight\",\"bold\")\r\n");
      out.write("\t\t    \t\t\t.css(\"font-size\",\"14px\"); \r\n");
      out.write("      \tdie();\r\n");
      out.write("      }\r\n");
      out.write("      else{        \t\r\n");
      out.write("      \t$('#pmatch').empty();\r\n");
      out.write("      \t//registerUser();\r\n");
      out.write("      }\r\n");
      out.write("  }\r\n");
      out.write("}\r\n");
      out.write("//END PASSWORD CHECK\r\n");
      out.write("\r\n");
      out.write("function changePassword() {\r\n");
      out.write("\tvar currentPass = document.getElementById(\"current_password\").value;\r\n");
      out.write("\tvar newPass = document.getElementById(\"new_password\").value;\r\n");
      out.write("\tvar confirmPass = document.getElementById(\"confirm_password\").value;\r\n");
      out.write("\t\r\n");
      out.write("\tif (currentPass == \"\" || newPass == \"\" || confirmPass == \"\") {\r\n");
      out.write("\t\talert(\"Please fill all fields\");\r\n");
      out.write("\t} else {\r\n");
      out.write("\t\t\r\n");
      out.write("\tif (newPass != confirmPass) {\r\n");
      out.write("\t\talert(\"New password dont match with confirm password!\");\r\n");
      out.write("\t} else {\r\n");
      out.write("\tvar answer = confirm(\"Please confirm to change password!\")\r\n");
      out.write("\tif (answer) {\r\n");
      out.write("\t\t\r\n");
      out.write("\t//document.getElementById(\"overlay\").style.display = \"block\";\r\n");
      out.write("\t$.ajax({\r\n");
      out.write("\t    type: \"actions/components/change_password_action.jsp\", //this is my servlet\r\n");
      out.write("\t       data: {\r\n");
      out.write("\t\r\n");
      out.write("\t          currentPass: currentPass,\r\n");
      out.write("\t          newPass: newPass,\r\n");
      out.write("\t          confirmPass: confirmPass\r\n");
      out.write("\t           }, \r\n");
      out.write("\t          success: function(msg){ \r\n");
      out.write("\t        \t  var response = JSON.parse(msg);\r\n");
      out.write("\t              var status = response.status;\r\n");
      out.write("\t              if (status == 1) { \r\n");
      out.write("\t                    alert(\"Password successfully changed!\");\r\n");
      out.write("\t                    document.getElementById(\"current_password\").value = \"\";\r\n");
      out.write("\t      \t            document.getElementById(\"new_password\").value = \"\";\r\n");
      out.write("\t      \t            document.getElementById(\"confirm_password\").value = \"\";\r\n");
      out.write("\t                    location.reload();\r\n");
      out.write("\t                } \r\n");
      out.write("\t              if (status == 2) { \r\n");
      out.write("\t                    alert(\"Error, could not change password!\");\r\n");
      out.write("\t                }\r\n");
      out.write("\t              if (status == 3) { \r\n");
      out.write("\t                    alert(\"Error, you have entered wrong current password!\");\r\n");
      out.write("\t                } \r\n");
      out.write("\t         \r\n");
      out.write("\t        }\r\n");
      out.write("\t     });\r\n");
      out.write("\t\r\n");
      out.write("\t} else {\r\n");
      out.write("\t  alert(\"Cancelled!\");\r\n");
      out.write("\t}\r\n");
      out.write("\t}\t\r\n");
      out.write("\t}\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("<main class=\"main\">\r\n");
      out.write("         <!-- Breadcrumb-->\r\n");
      out.write("         <ol class=\"breadcrumb\">\r\n");
      out.write("          <li class=\"breadcrumb-item\">Home</li>   \r\n");
      out.write("          <li class=\"breadcrumb-item\">\r\n");
      out.write("            <a href=\"changePassword.jsp\">Change Password</a>\r\n");
      out.write("          </li>   \r\n");
      out.write("        </ol>        \r\n");
      out.write("        <!-- Breadcrumb-->\r\n");
      out.write("        <div class=\"container-fluid\">\r\n");
      out.write("          <div class=\"animated fadeIn\">\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("              <div class=\"col-sm-12 col-xl-12\">\r\n");
      out.write("                <div class=\"card\">\r\n");
      out.write("                  <div class=\"card-header\">\r\n");
      out.write("                    <i class=\"fa fa-align-justify\"></i> Change Password         \r\n");
      out.write("                    <div class=\"card-header-actions\">                                    \r\n");
      out.write("                    </div>\r\n");
      out.write("                  </div>\r\n");
      out.write("                  <div class=\"card-body\">\r\n");
      out.write("                   \r\n");
      out.write("\t\t                <div class=\"input-group mb-3\">\r\n");
      out.write("\t\t                <div class=\"input-group-prepend\">\r\n");
      out.write("\t\t                  <span class=\"input-group-text\">\r\n");
      out.write("\t\t                    <i class=\"fa fa-asterisk\"></i>\r\n");
      out.write("\t\t                  </span>\r\n");
      out.write("\t\t                </div>\r\n");
      out.write("\t\t                <input class=\"form-control col-sm-4\" type=\"password\" name=\"current_password\" id=\"current_password\" placeholder=\"Current password\" required>\r\n");
      out.write("\t\t               </div>\r\n");
      out.write("\r\n");
      out.write("\t\t              <div class=\"input-group mb-5\">\r\n");
      out.write("\t\t                <div class=\"input-group-prepend\">\r\n");
      out.write("\t\t                  <span class=\"input-group-text\">\r\n");
      out.write("\t\t                    <i class=\"icon-lock\"></i>\r\n");
      out.write("\t\t                  </span>\r\n");
      out.write("\t\t                </div>\r\n");
      out.write("\t\t                <input class=\"form-control col-sm-4\" type=\"password\" placeholder=\"New password\" name=\"new_password\" id=\"new_password\" onkeyup=\"passwordCheck(this.value, 'password')\" required>\r\n");
      out.write("\t\t              </div>\r\n");
      out.write("\r\n");
      out.write("\t\t              <div class=\"input-group mb-4\">\r\n");
      out.write("\t\t                <div class=\"input-group-prepend\">\r\n");
      out.write("\t\t                  <span class=\"input-group-text\">\r\n");
      out.write("\t\t                    <i class=\"icon-lock\"></i>\r\n");
      out.write("\t\t                  </span>\r\n");
      out.write("\t\t                </div>\r\n");
      out.write("\t\t                <input class=\"form-control col-sm-4\" type=\"password\" placeholder=\"Re-type new password\" name=\"confirm_password\" id=\"confirm_password\" required>\r\n");
      out.write("\t\t              </div>\r\n");
      out.write("\t\t               <div id=\"pmatch\" style=\"color:red; display:none\" >Passwords dont match!</div>    <br>  \r\n");
      out.write("\t\t              <button class=\"btn btn-block btn-success col-sm-2\" type=\"button\" onClick=\"changePassword();\">Submit</button>\r\n");
      out.write("\t\t            </div>                    \r\n");
      out.write("                                      \r\n");
      out.write("                </div>               \r\n");
      out.write("                </div>           \r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </main>\r\n");
      out.write("    </div>\r\n");
      out.write("    \r\n");
      out.write("<!-- Start Top header View -->\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "includes/footer.jsp", out, false);
      out.write("\r\n");
      out.write("<!-- End Top Header View -->\r\n");
      out.write("\r\n");
      out.write("  </body>\r\n");
      out.write("</html>\r\n");
      out.write(" ");

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

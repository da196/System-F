/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.42
 * Generated at: 2020-05-27 14:13:42 UTC
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
import java.text.*;

public final class channel_002dradio_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_packages.add("java.text");
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
      out.write("\r\n");
      out.write("<script type=\"text/javascript\" src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.js\"></script>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("function getChannel(){\r\n");
      out.write("\t\r\n");
      out.write("\tvar regionID = document.getElementById('region').value\r\n");
      out.write("\tvar contentTypeID = \"2\";\r\n");
      out.write("\t\r\n");
      out.write("\t$.ajax({ \r\n");
      out.write("\t     type: \"GET\",\r\n");
      out.write("\t      url: \"actions/configuration/getChannel.jsp\", //this is my servlet\r\n");
      out.write("\t      dataType: \"json\",\r\n");
      out.write("\t       data: {\r\n");
      out.write("\t    \t   regionID: regionID,\r\n");
      out.write("\t    \t   contentTypeID: contentTypeID\r\n");
      out.write("\t           }, \r\n");
      out.write("\t\t          success: function(channelList){  \r\n");
      out.write("\t\t\t          var s = '';\r\n");
      out.write("\t\t\t          s += '<ul class=\"list-group\" id=\"myUL\">';          \r\n");
      out.write("\t\t\t          $.each(channelList.data, function(index,channelList) {        \r\n");
      out.write("\t\t\t                s += '<li class=\"list-group-item\"><a class=\"adddiv\" data-id=\"'+ channelList.channelID +'\" onClick=\"getChannelID('+ channelList.channelID +');\" style=\"text-decoration:none;\">'+channelList.channelName+'</a> </li>'; \r\n");
      out.write("\t\t\t          });\r\n");
      out.write("\t\t\t          s += '</ul>';     \r\n");
      out.write("\t\t\t          $('#result').html(s);\r\n");
      out.write("\r\n");
      out.write("\t\t\t        }\r\n");
      out.write("\t   });\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("$(document).ready(function() {\r\n");
      out.write("\tgetChannel();\r\n");
      out.write("\t});\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");

	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	
	Calendar calendar = Calendar.getInstance();
	
	//System.out.println("Current Date = " + df.format(calendar.getTime()));
	
	// Subtract 15 minutes from current date
	//calendar.add(Calendar.MINUTE, -5);
	
	calendar.add(Calendar.SECOND, -50);
	String updateDate = df.format(calendar.getTime());
	
	String[] parts = updateDate.split(" ");
	String date = parts[0];
	String time  = parts[1];
	
	int weekday = calendar.get(Calendar.DAY_OF_WEEK);
	DateFormatSymbols dfs = new DateFormatSymbols();
	
	String day = dfs.getWeekdays()[weekday];

      out.write(" \r\n");
      out.write("\t<input type=\"hidden\" id=\"date\" value=\"");
 out.print(date); 
      out.write("\">\r\n");
      out.write("\t<input type=\"hidden\" id=\"time\" value=\"");
 out.print(time); 
      out.write("\">\r\n");
      out.write("\t<input type=\"hidden\" id=\"day\" value=\"");
 out.print(day); 
      out.write("\">\r\n");
      out.write("      <main class=\"main\">\r\n");
      out.write("        <!-- Breadcrumb-->\r\n");
      out.write("        <ol class=\"breadcrumb\">\r\n");
      out.write("          <li class=\"breadcrumb-item\">Home</li>\r\n");
      out.write("          <li class=\"breadcrumb-item\">\r\n");
      out.write("            Content\r\n");
      out.write("          </li>\r\n");
      out.write("          <li class=\"breadcrumb-item\">\r\n");
      out.write("          <a href=\"channel-tv.jsp\">Radio</a>\r\n");
      out.write("          </li>\r\n");
      out.write("         \r\n");
      out.write("        </ol>\r\n");
      out.write("        <div class=\"container-fluid\">\r\n");
      out.write("          <div class=\"animated fadeIn\">\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("                <div class=\"col-sm-4 col-lg-2\">\r\n");
      out.write("                    <div class=\"card\">\r\n");
      out.write("                        <div class=\"card-header\">\r\n");
      out.write("                        </i> Stations\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"card-body\" style=\"height: 550px;\">\r\n");
      out.write("                        \r\n");
      out.write("                                     <!--  Start All regions here ... -->\r\n");
      out.write("                             <select class=\"form-control\" id=\"region\" name=\"region\" onChange=\"getChannel();\">\r\n");
      out.write("\t\t\t\t\t\t\t \t \t");

								 		File errorLogs = null;
							            String errorLogFile = "";
							            errorLogs = new File(errorLogFile);
										try{
													                    
										java.util.List<Regions> contentList = Regions.getRegionList();
													
										for (int i = 0; i < contentList.size(); i++){
											
										
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<option value=\"");
 out.print(contentList.get(i).getRegionID());
      out.write('"');
      out.write('>');
      out.write(' ');
 out.print(contentList.get(i).getRegionName()); 
      out.write(" </option>\t\t\t\t\t\t\t\t      \r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t ");

										}
										}catch(Exception er){
											er.printStackTrace();
										ErrorLogsAppender.appendException("Search.jsp page", er, errorLogs);
										}
									
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t </select>\r\n");
      out.write("                        <!--  End All regions here ... -->\r\n");
      out.write("                                              \r\n");
      out.write("                        <br/>\r\n");
      out.write("                        \r\n");
      out.write("                        <input class=\"form-control\" type=\"text\" onkeyup=\"myFunction()\"  id=\"myInput\" placeholder=\"Search...\" />\r\n");
      out.write("                            <div id=\"spy-example1\" data-spy=\"scroll\" data-target=\"#navbar-example1\" data-offset=\"65\" style=\"position: relative; height: 400px; overflow: auto; margin-top: .5rem; overflow-y: scroll;\">\r\n");
      out.write("\t\t                      \r\n");
      out.write("\t\t                      <div id=\"result\"></div>\r\n");
      out.write("\r\n");
      out.write("                         \t</div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"col-sm-8 col-lg-10 mb-12\">\r\n");
      out.write("                    <div class=\"row\" id=\"clean\">\r\n");
      out.write("                        <!-- Start the video insertion here.. -->\r\n");
      out.write("                      \r\n");
      out.write("                      \r\n");
      out.write("                      \r\n");
      out.write("                        <!-- End the video insertion here.. -->                   \r\n");
      out.write("                       \r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </main>\r\n");
      out.write("      \r\n");
      out.write("   <!-- Start AsideMenu View -->\r\n");
      out.write("\t<aside class=\"aside-menu\">    \r\n");
      out.write("        <!-- Tab panes-->\r\n");
      out.write("        <div class=\"tab-content\">\r\n");
      out.write("          <div class=\"tab-pane active\" id=\"timeline\" role=\"tabpanel\">\r\n");
      out.write("            <div class=\"list-group list-group-accent\">\r\n");
      out.write("      \t\t\t <div id=\"program\">\r\n");
      out.write("              </div>\r\n");
      out.write("                          \r\n");
      out.write("        \r\n");
      out.write("          </div>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </aside>\r\n");
      out.write("\t  <!-- End AsideMenu View --> \r\n");
      out.write("\t  \r\n");
      out.write("    </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    \r\n");
      out.write("<!-- Start Footer View -->\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "includes/footer.jsp", out, false);
      out.write("\r\n");
      out.write("<!-- End Footer View -->\r\n");
      out.write("\r\n");
      out.write("<!-- Search Channels start here ..-->\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("function myFunction() {\r\n");
      out.write("  // Declare variables\r\n");
      out.write("  var input, filter, ul, li, a, i, txtValue;\r\n");
      out.write("  input = document.getElementById('myInput');\r\n");
      out.write("  filter = input.value.toUpperCase();\r\n");
      out.write("  ul = document.getElementById(\"myUL\");\r\n");
      out.write("  li = ul.getElementsByTagName('li');\r\n");
      out.write("\r\n");
      out.write("  // Loop through all list items, and hide those who don't match the search query\r\n");
      out.write("  for (i = 0; i < li.length; i++) {\r\n");
      out.write("    a = li[i].getElementsByTagName(\"a\")[0];\r\n");
      out.write("    txtValue = a.textContent || a.innerText;\r\n");
      out.write("    if (txtValue.toUpperCase().indexOf(filter) > -1) {\r\n");
      out.write("      li[i].style.display = \"\";\r\n");
      out.write("    } else {\r\n");
      out.write("      li[i].style.display = \"none\";\r\n");
      out.write("    }\r\n");
      out.write("  }\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("<!-- Search channels end here ..-->\r\n");
      out.write("\r\n");
      out.write("<!-- Insert channels by a single click start here -->\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\r\n");
      out.write("//$(document).ready(function() {\r\n");
      out.write("\r\n");
      out.write("// TO ADD A CHANNEL IN A DIV  \r\n");
      out.write("//$(\".adddiv\").on(\"click\",function(){\r\n");
      out.write("//$(\".adddiv\").click(function(){\r\n");
      out.write("function getChannelID(val){\t\r\n");
      out.write("\t\r\n");
      out.write("\t// Obtain the Channel \r\n");
      out.write("\t//var newVal = $(this).data(\"id\");\r\n");
      out.write("\tvar channelID = val;\r\n");
      out.write("\tvar date =  document.getElementById(\"date\").value;\r\n");
      out.write("\tvar time =  document.getElementById(\"time\").value;\r\n");
      out.write("\tvar content_type_id = \"2\";\r\n");
      out.write("\r\n");
      out.write("\tgetProgramLineUp(channelID);\r\n");
      out.write("\t\r\n");
      out.write("\t $.ajax({\r\n");
      out.write("\t     type: \"post\",\r\n");
      out.write("\t      url: \"actions/components/channelTVAction.jsp\", //this is my servlet\r\n");
      out.write("\t       data: {\r\n");
      out.write("\t    \t   channelID: channelID,\r\n");
      out.write("\t    \t   date: date,\r\n");
      out.write("\t    \t   time: time,\r\n");
      out.write("\t    \t   content_type_id: content_type_id\r\n");
      out.write("\t           }, \r\n");
      out.write("\t          success: function(msg){  \r\n");
      out.write("\t             \r\n");
      out.write("\t              var array = msg.split('|');\r\n");
      out.write("\t              var file_serial_no = array[0];\r\n");
      out.write("\t              var videoUrl = array[1];\r\n");
      out.write("\t              var channelName = array[2];\r\n");
      out.write("\t              var videoSRCUrl = array[3];\r\n");
      out.write("\t              \r\n");
      out.write("\t\t\t\t\t//Check the video player should only be 4\t\t\t\r\n");
      out.write("\t\t\t\t\tif($('div #media-player').length <= 0){\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\tvar html ='<div class=\"col-sm-10\" style=\"border:1px solid black; width:1000px; border-radius: 20px 20px; display: block; padding:10px; margin:20px;\">';\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\thtml+='Channel:   <strong>' + channelName + '</strong>  <img src=\"img/livestream1.png\" width=\"50\" height=\"20\" class=\"pull-right\"/><i class=\"icon-close icon-3x pull-right\" style=\"padding-right:10px;\"></i>';\r\n");
      out.write("\t\t\t\t\t\t\thtml+='<div id=\"media-player\">';\r\n");
      out.write("\t\t\t\t\t\t\thtml+='<audio id=\"classic-video\" class=\"media-video\" width=\"480\" height=\"340\" controls>';\r\n");
      out.write("\t\t\t\t\t\t\t//html+='<audio id=\"classic-video\" class=\"media-video\" width=\"480\" height=\"340\" autoplay=\"\" poster=\"\">';\r\n");
      out.write("\t\t\t\t\t\t\thtml+='<source src=\"'+videoUrl+'\" id=\"mp4Source\" type=\"audio/mp3\" />';\r\n");
      out.write("\t\t\t\t\t\t\thtml+='Your browser does not support the video element.';\r\n");
      out.write("\t\t\t\t\t\t\thtml+='</audio>';\r\n");
      out.write("\t\t\t\t\t\t\thtml+='</div>';\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\thtml+='</div>';\r\n");
      out.write("\t\t\t\t\t\t$('#clean').append(html);\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\tvar count=file_serial_no;\r\n");
      out.write("\t\t\t\t\t\tvar player=document.getElementById('classic-video');\r\n");
      out.write("\t\t\t\t\t\tvar mp4Vid = document.getElementById('mp4Source');\r\n");
      out.write("\t\t\t\t\t\tvar URL = videoSRCUrl;\r\n");
      out.write("\t\t\t\t\t\t//var URL = \"/tcms_tv/itv/ITV_\";\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\tplayer.addEventListener('ended',myHandler,false);\r\n");
      out.write("\t\t\t\t\t\tfunction myHandler(e)\r\n");
      out.write("\t\t\t\t\t\t{\r\n");
      out.write("\t\t\t\t\t\t\t//Channelten_1001.mp4\r\n");
      out.write("\t\t\t\t\t\t   if(!e) \r\n");
      out.write("\t\t\t\t\t\t   {\r\n");
      out.write("\t\t\t\t\t\t      e = window.event; \r\n");
      out.write("\t\t\t\t\t\t   }\r\n");
      out.write("\t\t\t\t\t\t   count++;\r\n");
      out.write("\t\t\t\t\t\t   $(mp4Vid).attr('src', URL +count+\".mp3\");\r\n");
      out.write("\t\t\t\t\t\t   player.load();\r\n");
      out.write("\t\t\t\t\t\t   player.play();\r\n");
      out.write("\t\t\t\t\t\t} \r\n");
      out.write("\t\t\t\t\t}\t\r\n");
      out.write("\t          }\r\n");
      out.write("\t     });\t\t\r\n");
      out.write("}\r\n");
      out.write("// });\r\n");
      out.write("// });\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("function getProgramLineUp(val){\r\n");
      out.write("\tvar channelID = val;\r\n");
      out.write("\tvar day = document.getElementById(\"day\").value\r\n");
      out.write("\t\r\n");
      out.write("\t$.ajax({ \r\n");
      out.write("\t type: \"GET\",\r\n");
      out.write("\t  url: \"actions/configuration/displayProgramLineUp.jsp\", //this is my servlet\r\n");
      out.write("\t  dataType: \"json\",\r\n");
      out.write("\t   data: {\r\n");
      out.write("\t\t   channelID: channelID,\r\n");
      out.write("\t\t   day: day\r\n");
      out.write("\t       }, \r\n");
      out.write("\t          success: function(programList){  \r\n");
      out.write("\t\t          var s = '';          \r\n");
      out.write("\t\t          \t  s += '<div class=\"list-group-item list-group-item-accent-secondary bg-light text-center font-weight-bold text-muted text-uppercase small\">'+ day +'</div>';           \r\n");
      out.write("\t              \t  \r\n");
      out.write("\t\t          $.each(programList.data, function(index,programList) {        \r\n");
      out.write("\t\t        \t  s += '<div class=\"list-group-item list-group-item-accent-info list-group-item-divider\">';\r\n");
      out.write("\t\t        \t  s += '<i class=\"icon-clock\"></i> ' + programList.time; \r\n");
      out.write("\t\t              s += '<br>'; \r\n");
      out.write("\t\t              s += '<small><strong>' + programList.programeName + '</strong></small>'; \r\n");
      out.write("\t\t              s += '</div>';\r\n");
      out.write("\t\t          });   \r\n");
      out.write("\t\t          $('#program').html(s);\r\n");
      out.write("\t\t        }\r\n");
      out.write("\t});\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t/* \r\n");
      out.write("\tTO REMOVE A CHANNEL IN A DIV  \t\r\n");
      out.write("\t*/\r\n");
      out.write("\t$(document).on(\"click\",\".icon-close\",function(){\r\n");
      out.write("\t\t\t$(this).closest('div').remove();\r\n");
      out.write("\t\t\t location.reload();\r\n");
      out.write("\t });\r\n");
      out.write("\r\n");
      out.write("\t</script>\r\n");
      out.write("<!-- Insert channels by a single click end here -->\r\n");
      out.write("\t\r\n");
      out.write("</body>\r\n");
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

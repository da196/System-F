/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.42
 * Generated at: 2020-05-11 10:12:28 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.backend;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Vector;
import java.sql.*;
import javax.sql.*;
import tcms.configuration.*;
import tcms.presentation.*;
import tcms.errorLogs.*;
import java.io.File;

public final class dashboard_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("tcms.errorLogs");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("tcms.presentation");
    _jspx_imports_packages.add("tcms.configuration");
    _jspx_imports_packages.add("javax.sql");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.util.Vector");
    _jspx_imports_classes.add("java.io.File");
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
response.setDateHeader("Expire",1);


if (session.getAttribute("userID") != null && session.getAttribute("roleID").equals("3") ) {

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("  \r\n");
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
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("function getZoneChannelList(header_name,zone,content_type){\r\n");
      out.write("\r\n");
      out.write("\t$('#ZoneChannelModal').modal({show:false});\r\n");
      out.write("\tvar header = header_name;\r\n");
      out.write("\tvar zone_id = zone; \r\n");
      out.write("\tvar content_type_id = content_type;\r\n");
      out.write("\t$.ajax({\r\n");
      out.write("\t    type: \"GET\",\r\n");
      out.write("\t      url: \"actions/components/dashboard.jsp\", //this is my servlet\r\n");
      out.write("\t      dataType: \"json\",\r\n");
      out.write("\t       data: {\r\n");
      out.write("\t    \t   zone_id: zone_id,\r\n");
      out.write("\t    \t   content_type_id: content_type_id\r\n");
      out.write("\t           }, \r\n");
      out.write("\t          success: function(ZoneTVList){  \r\n");
      out.write("\t        \t  $('#ZoneChannelModal').modal({show:true});\r\n");
      out.write("\t        \t\t        \t  \r\n");
      out.write("\t          var s = '';\r\n");
      out.write("\t          s += '<div class=\"modal-header\">';\r\n");
      out.write("\t          s += '<h4 class=\"modal-title\">' + header + '</h4>';\r\n");
      out.write("\t          s += '<button class=\"close\" type=\"button\" data-dismiss=\"modal\" aria-label=\"Close\">';\r\n");
      out.write("\t          s += '<span aria-hidden=\"true\">X</span>';\r\n");
      out.write("\t          s += '</button>';\r\n");
      out.write("\t          s += '</div>';\r\n");
      out.write("\t          \r\n");
      out.write("\t          s += '<div class=\"modal-body\">';\r\n");
      out.write("\t          s += '<div class=\"fresh-datatables\">';\r\n");
      out.write("\t          s += '<table id=\"datatables\" class=\"table table-striped table-no-bordered table-hover\" cellspacing=\"0\" width=\"100%\" style=\"width:100%\">';\r\n");
      out.write("\t          s += '<thead>';\r\n");
      out.write("\t          s += '<tr>';\r\n");
      out.write("\t          s += '<th>Channel Name</th>';\r\n");
      out.write("\t          s += '<th>Region</th>';\r\n");
      out.write("\t          s += '<th>License Type</th>';\r\n");
      out.write("\t          //s += '<th>News Item Description</th>';\r\n");
      out.write("\t          //s += '<th>Duration Of News Item</th>';\r\n");
      out.write("\t          //s += '<th>Action</th>';\r\n");
      out.write("\t          s += '</tr>';\r\n");
      out.write("\t          s += '</thead>';\r\n");
      out.write("\t          s += '<tfoot>';\r\n");
      out.write("\t          s += '<tr>';\r\n");
      out.write("\t          s += '<th>Channel Name</th>';\r\n");
      out.write("\t          s += '<th>Region</th>';\r\n");
      out.write("\t          s += '<th>License Type</th>';\r\n");
      out.write("\t          //s += '<th>News Item Description</th>';\r\n");
      out.write("\t          //s += '<th>Duration Of News Item</th>';\r\n");
      out.write("\t          //s += '<th>Action</th>';\r\n");
      out.write("\t          s += '</tr>';\r\n");
      out.write("\t          s += '</tfoot>';\r\n");
      out.write("\t          s += '<tbody >';\r\n");
      out.write("\t          $.each(ZoneTVList.data, function(index,ZoneTVList) {        \r\n");
      out.write("\t             // alert(newsIndexCardList.channel_name+\" -- \"+newsIndexCardList.news_type+\" -- \"+ newsIndexCardList.news_item_description+\" -- \"+newsIndexCardList.news_item_duration+\" -- \"+newsIndexCardList.cdate)\r\n");
      out.write("\t                s += '<tr>';\r\n");
      out.write("\t\t\t\t    s += '<td>' + ZoneTVList.channel_name + '</td>';\r\n");
      out.write("\t\t\t\t    s += '<td>' + ZoneTVList.region_name + '</td>';\r\n");
      out.write("\t\t\t\t\ts += '<td>' + ZoneTVList.license_category_name + '</td>';\r\n");
      out.write("\t\t\t\t\t//s += '<td>' + ZoneTVList.news_item_duration + '</td>';\r\n");
      out.write("\t\t\t\t\t//s += '<td>' + ZoneTVList.cdate + '</td>';\r\n");
      out.write("\t\t\t\t\t//s += '<td> <a href=\"#addEmployeeModal\" id=\"' + newsIndexCardList.id + '\" onClick=\"getApplicationInfo(' + newsIndexCardList.id + ');\" class=\"edit\" data-toggle=\"modal\"> <i class=\"fa fa-eye\"></i> </a> </td>';\r\n");
      out.write("\t\t\t\t\ts += '</tr>';\r\n");
      out.write("\t          });\t\r\n");
      out.write("\t      \t\r\n");
      out.write("\t          s += '</tbody>';\r\n");
      out.write("\t          s += '</table>';\r\n");
      out.write("\t          s += '</div>';\r\n");
      out.write("\t          s += '</div>';\r\n");
      out.write("\t          $('#result').html(s);\r\n");
      out.write("\t          $('#datatables').DataTable( {\r\n");
      out.write("\t        \t  dom: 'Bfrtip',\r\n");
      out.write("\t\t            buttons: [\r\n");
      out.write("\t\t            \t\r\n");
      out.write("\t\t                'copy', 'csv', 'excel', 'pdf', 'print'\r\n");
      out.write("\t\t                \r\n");
      out.write("\t\t            ]\r\n");
      out.write("\t           } );\r\n");
      out.write("\r\n");
      out.write("\t        }\r\n");
      out.write("\t           \r\n");
      out.write("\t     });\r\n");
      out.write("\t\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("<!-- START MAP DATA HERE  -->\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("    $(document ).ready(function() {\r\n");
      out.write("    \t\r\n");
      out.write("        var televisionData = [\r\n");
      out.write("        \t['tz-mo',4],\r\n");
      out.write("        \t['tz-tn',1],\r\n");
      out.write("        \t['tz-as',1],\r\n");
      out.write("        \t['tz-mw',1],\r\n");
      out.write("        \t['tz-ir',1],\r\n");
      out.write("        \t['tz-ds',36]\r\n");
      out.write("                   \r\n");
      out.write("        ];\r\n");
      out.write("        \r\n");
      out.write("        var radioData = [\r\n");
      out.write("        \t['tz-my',3],\r\n");
      out.write("        \t['tz-sd',1],\r\n");
      out.write("        \t['tz-ge',2],\r\n");
      out.write("        \t['tz-nj',7],\r\n");
      out.write("        \t['tz-mb',14],\r\n");
      out.write("        \t['tz-ka',1],\r\n");
      out.write("        \t['tz-li',3],\r\n");
      out.write("        \t['tz-kr',11],\r\n");
      out.write("        \t['tz-kl',8],\r\n");
      out.write("        \t['tz-as',12],\r\n");
      out.write("        \t['tz-ds',30],\r\n");
      out.write("        \t['tz-mt',7],\r\n");
      out.write("        \t['tz-mo',11],\r\n");
      out.write("        \t['tz-ma',4],\r\n");
      out.write("        \t['tz-km',2],\r\n");
      out.write("        \t['tz-ir',7],\r\n");
      out.write("        \t['tz-tn',8],\r\n");
      out.write("        \t['tz-do',10],\r\n");
      out.write("        \t['tz-sh',4],\r\n");
      out.write("        \t['',1],\r\n");
      out.write("        \t['tz-rk',3],\r\n");
      out.write("        \t['tz-si',1],\r\n");
      out.write("        \t['tz-rv',6],\r\n");
      out.write("        \t['tz-mw',15],\r\n");
      out.write("        \t['tz-tb',4]\r\n");
      out.write("                   \r\n");
      out.write("        ];\r\n");
      out.write("        \r\n");
      out.write("        // Create the chart\r\n");
      out.write("        Highcharts.mapChart('containerTV', {\r\n");
      out.write("            chart: {\r\n");
      out.write("                map: 'countries/tz/tz-all'\r\n");
      out.write("            },\r\n");
      out.write("         credits:{\r\n");
      out.write("                enabled:false\r\n");
      out.write("                },       \r\n");
      out.write("            title: {\r\n");
      out.write("                text: 'Licensed Television Stations in Tanzania'\r\n");
      out.write("            },\r\n");
      out.write("        \r\n");
      out.write("            subtitle: {\r\n");
      out.write("                text: 'Total TV Channels : 44'\r\n");
      out.write("            },\r\n");
      out.write("        \r\n");
      out.write("            mapNavigation: {\r\n");
      out.write("                enabled: true,\r\n");
      out.write("                buttonOptions: {\r\n");
      out.write("                    verticalAlign: 'bottom'\r\n");
      out.write("                }\r\n");
      out.write("            },\r\n");
      out.write("        \r\n");
      out.write("            colorAxis: {\r\n");
      out.write("                min: 0\r\n");
      out.write("            },\r\n");
      out.write("        \r\n");
      out.write("            series: [{\r\n");
      out.write("                data: televisionData,\r\n");
      out.write("                name: 'TV',\r\n");
      out.write("                states: {\r\n");
      out.write("                    hover: {\r\n");
      out.write("                        color: '#BADA55'\r\n");
      out.write("                    }\r\n");
      out.write("                },\r\n");
      out.write("                dataLabels: {\r\n");
      out.write("                    enabled: true,\r\n");
      out.write("                    format: '{point.name}'\r\n");
      out.write("                }\r\n");
      out.write("            }]\r\n");
      out.write("        });\r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("        Highcharts.mapChart('containerRadio', {\r\n");
      out.write("            chart: {\r\n");
      out.write("                map: 'countries/tz/tz-all'\r\n");
      out.write("            },\r\n");
      out.write("          credits:{\r\n");
      out.write("                enabled:false\r\n");
      out.write("            },       \r\n");
      out.write("            title: {\r\n");
      out.write("                text: 'Licensed Radio Stations in Tanzania'\r\n");
      out.write("            },\r\n");
      out.write("        \r\n");
      out.write("            subtitle: {\r\n");
      out.write("                text: 'Total Radio Stations: 175 '\r\n");
      out.write("            },\r\n");
      out.write("        \r\n");
      out.write("            mapNavigation: {\r\n");
      out.write("                enabled: true,\r\n");
      out.write("                buttonOptions: {\r\n");
      out.write("                    verticalAlign: 'bottom'\r\n");
      out.write("                }\r\n");
      out.write("            },\r\n");
      out.write("        \r\n");
      out.write("            colorAxis: {\r\n");
      out.write("                min: 0\r\n");
      out.write("            },\r\n");
      out.write("        \r\n");
      out.write("            series: [{\r\n");
      out.write("                data: radioData,\r\n");
      out.write("                name: 'Radio',\r\n");
      out.write("                states: {\r\n");
      out.write("                    hover: {\r\n");
      out.write("                        color: '#BADA55'\r\n");
      out.write("                    }\r\n");
      out.write("                },\r\n");
      out.write("                dataLabels: {\r\n");
      out.write("                    enabled: true,\r\n");
      out.write("                    format: '{point.name}'\r\n");
      out.write("                }\r\n");
      out.write("            }]\r\n");
      out.write("        });\r\n");
      out.write("    });       \r\n");
      out.write("        </script>\r\n");
      out.write("        \r\n");
      out.write("<!-- END  MAP DATA HERE  -->\r\n");
      out.write("        \r\n");
      out.write("<!-- Start Main Content -->\r\n");
      out.write("<main class=\"main\">\r\n");
      out.write("       \r\n");
      out.write("        <!-- Breadcrumb-->\r\n");
      out.write("        <ol class=\"breadcrumb\">\r\n");
      out.write("          <li class=\"breadcrumb-item\">Home</li>\r\n");
      out.write("          <li class=\"breadcrumb-item\">\r\n");
      out.write("            <a href=\"dashboard.jsp\">Dashboard</a>\r\n");
      out.write("          </li>      \r\n");
      out.write("        </ol>        \r\n");
      out.write("        <!-- Breadcrumb-->\r\n");
      out.write("            \r\n");
      out.write("        <div class=\"container-fluid\">\r\n");
      out.write("          <div class=\"animated fadeIn\">\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("              <div class=\"col-sm-6 col-lg-6\">\r\n");
      out.write("                <div class=\"card text-white bg-info\">\r\n");
      out.write("                  <div class=\"card-body pb-0\">                    \r\n");
      out.write("                    <br>                    \r\n");
      out.write("                    <div style=\"height:90px; font-weight:bolder; font-size:40px;\">\r\n");
      out.write("                    <i class=\"nav-icon icon-screen-desktop\"></i>\r\n");
      out.write("                    TV Channels\r\n");
      out.write("\t\t\t\t\t<span class=\"badge badge-light pull-right\"> \r\n");
      out.write("\t\t\t\t\t");

					String errorLogFile = Utility.getPath();
				 	File errorLogs = new File(errorLogFile);
				 	try{
						java.util.List<Dashboard> tvList = Dashboard.getChannelList(1);
						out.print(tvList.size());
				 	}catch(Exception er){
						er.printStackTrace();
						 ErrorLogsAppender.appendException("dashboard page - Dashboard.getChannelList()",er, errorLogs);
					}
					
      out.write("\r\n");
      out.write("\t\t\t\t\t </span>\r\n");
      out.write("                    </div>\r\n");
      out.write("                  </div>\r\n");
      out.write("                 \r\n");
      out.write("                </div>\r\n");
      out.write("              </div>\r\n");
      out.write("              <!-- /.col-->\r\n");
      out.write("              <div class=\"col-sm-6 col-lg-6\">\r\n");
      out.write("                  <div class=\"card text-white bg-warning\">\r\n");
      out.write("                    <div class=\"card-body pb-0\">                    \r\n");
      out.write("                      <br>\r\n");
      out.write("                      <div style=\"height:90px; font-weight:bolder; font-size:40px;\">\r\n");
      out.write("                      <i class=\"nav-icon icon-playlist\"></i>\r\n");
      out.write("                      Radio Stations\r\n");
      out.write("                      <span class=\"badge badge-light pull-right\"> \r\n");
      out.write("\t\t\t\t\t\t\t");

							try{
								java.util.List<Dashboard> radioList = Dashboard.getChannelList(2);
								out.print(radioList.size());
						 	}catch(Exception er){
								er.printStackTrace();
								 ErrorLogsAppender.appendException("dashboard page - Dashboard.getChannelList()",er, errorLogs);
							}
							
      out.write("\r\n");
      out.write("\t\t\t\t\t </span>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                   \r\n");
      out.write("                  </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!-- /.row-->\r\n");
      out.write("            \r\n");
      out.write("            \r\n");
      out.write("<!-- Start here ... -->\r\n");
      out.write("<div class=\"card\">\r\n");
      out.write("    <div class=\"card-body\">\r\n");
      out.write("        <div class=\"row\">\r\n");
      out.write("            <div class=\"col-sm-6 col-lg-6\">\r\n");
      out.write("                                                           \r\n");
      out.write("                        <div id=\"containerTV\"></div>\r\n");
      out.write("                                                   \r\n");
      out.write("            </div>\r\n");
      out.write("        \r\n");
      out.write("            <div class=\"col-sm-6 col-lg-6\">\r\n");
      out.write("                                                                        \r\n");
      out.write("                        <div id=\"containerRadio\"></div>   \r\n");
      out.write("                        \r\n");
      out.write("            </div>\r\n");
      out.write("                   \r\n");
      out.write("        </div>\r\n");
      out.write("      <!-- /.row-->\r\n");
      out.write("                     \r\n");
      out.write("    </div>                                                     \r\n");
      out.write("</div>\r\n");
      out.write("<!-- End here ... -->\r\n");
      out.write("\r\n");
      out.write("            <!-- /.card-->\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("              <div class=\"col-sm-6 col-lg-3\">\r\n");
      out.write("                <div class=\"brand-card\">\r\n");
      out.write("                  <div class=\"brand-card-header bg-facebook\">\r\n");
      out.write("                  <div style=\"height:90px; font-weight:bolder; font-size:25px; padding-top:35px; color:white;\">\r\n");
      out.write("                    NORTHERN ZONE\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                  </div>\r\n");
      out.write("                  \r\n");
      out.write("                   <a class=\"nav-link\" data-toggle=\"tab\" href=\"#settings\" role=\"tab\">\r\n");
      out.write("              \t\t\t<i class=\"icon-screen-desktop pull-left\"  style=\"color:red;\" data-toggle=\"modal\" onClick=\"getZoneChannelList('Northern Zone - TV Channels', 4, 1);\"></i>\r\n");
      out.write("              \t\t\t<i class=\"icon-playlist pull-right\" data-toggle=\"modal\" onClick=\"getZoneChannelList('Northern Zone - Radio Station', 4, 2);\" ></i>\r\n");
      out.write("            \t\t</a>\r\n");
      out.write("                  \r\n");
      out.write("                  \r\n");
      out.write("                  <div class=\"brand-card-body\">\r\n");
      out.write("                    <div>\r\n");
      out.write("                      <div class=\"text-value\">\r\n");
      out.write("                     \t");

							try{
								java.util.List<Dashboard> list = Dashboard.getZoneChannelList("4", "1");
								out.print(list.size());
						 	}catch(Exception er){
								er.printStackTrace();
								 ErrorLogsAppender.appendException("dashboard page - Dashboard.getZoneChannelList()",er, errorLogs);
							}
						
      out.write("\r\n");
      out.write("                      </div>\r\n");
      out.write("                      <div class=\"text-uppercase text-muted small\">TV Channels</div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div>\r\n");
      out.write("                      <div class=\"text-value\">\r\n");
      out.write("                      ");

							try{
								java.util.List<Dashboard> list = Dashboard.getZoneChannelList("4", "2");
								out.print(list.size());
						 	}catch(Exception er){
								er.printStackTrace();
								 ErrorLogsAppender.appendException("dashboard page - Dashboard.getZoneChannelList()",er, errorLogs);
							}
					 
      out.write("\r\n");
      out.write("                      </div>\r\n");
      out.write("                      <div class=\"text-uppercase text-muted small\">Radio Stations</div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                  </div>\r\n");
      out.write("                </div>\r\n");
      out.write("              </div>\r\n");
      out.write("              <!-- /.col-->\r\n");
      out.write("              <div class=\"col-sm-6 col-lg-3\">\r\n");
      out.write("                <div class=\"brand-card\">\r\n");
      out.write("                  <div class=\"brand-card-header bg-twitter\">\r\n");
      out.write("                  <div style=\"height:90px; font-weight:bolder; font-size:25px; padding-top:35px; color:white;\">\r\n");
      out.write("                    SOUTHERN ZONE\r\n");
      out.write("                    </div>\r\n");
      out.write("                  </div>\r\n");
      out.write("       \t\t\t    \r\n");
      out.write("                   <a class=\"nav-link\" data-toggle=\"tab\" href=\"#settings\" role=\"tab\">\r\n");
      out.write("              \t\t\t<i class=\"icon-screen-desktop pull-left\"  style=\"color:red;\" data-toggle=\"modal\" onClick=\"getZoneChannelList('Southern Highlands Zone - TV Channels', 5, 1);\"></i>\r\n");
      out.write("              \t\t\t<i class=\"icon-playlist pull-right\" data-toggle=\"modal\" onClick=\"getZoneChannelList('Southern Highlands Zone - Radio Station', 5, 2);\" ></i>\r\n");
      out.write("            \t\t</a>\r\n");
      out.write("            \t            \t\t\r\n");
      out.write("                  <div class=\"brand-card-body\">\r\n");
      out.write("                    <div>\r\n");
      out.write("                      <div class=\"text-value\">\r\n");
      out.write("                      ");

							try{
								java.util.List<Dashboard> list = Dashboard.getZoneChannelList("5", "1");
								out.print(list.size());
						 	}catch(Exception er){
								er.printStackTrace();
								 ErrorLogsAppender.appendException("dashboard page - Dashboard.getZoneChannelList()",er, errorLogs);
							}
					 
      out.write("\r\n");
      out.write("                      \r\n");
      out.write("                      </div>\r\n");
      out.write("                      <div class=\"text-uppercase text-muted small\">TV Channels</div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div>\r\n");
      out.write("                      <div class=\"text-value\">\r\n");
      out.write("                      ");

							try{
								java.util.List<Dashboard> list = Dashboard.getZoneChannelList("5", "2");
								out.print(list.size());
						 	}catch(Exception er){
								er.printStackTrace();
								 ErrorLogsAppender.appendException("dashboard page - Dashboard.getZoneChannelList()",er, errorLogs);
							}
					 
      out.write("\r\n");
      out.write("                      </div>\r\n");
      out.write("                      <div class=\"text-uppercase text-muted small\">Radio Stations</div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                  </div>\r\n");
      out.write("                </div>\r\n");
      out.write("              </div>\r\n");
      out.write("              <!-- /.col-->\r\n");
      out.write("              <div class=\"col-sm-6 col-lg-3\">\r\n");
      out.write("                <div class=\"brand-card\">\r\n");
      out.write("                  <div class=\"brand-card-header bg-linkedin\">\r\n");
      out.write("                   <div style=\"height:90px; font-weight:bolder; font-size:25px; padding-top:35px; color:white;\">\r\n");
      out.write("                    EASTERN ZONE\r\n");
      out.write("                    </div>\r\n");
      out.write("                  </div>\r\n");
      out.write("                  \r\n");
      out.write("                 <a class=\"nav-link\" data-toggle=\"tab\" href=\"#settings\" role=\"tab\">\r\n");
      out.write("              \t\t\t<i class=\"icon-screen-desktop pull-left\"  style=\"color:red;\" data-toggle=\"modal\" onClick=\"getZoneChannelList('Eastern Zone - TV Channels', 2, 1);\"></i>\r\n");
      out.write("              \t\t\t<i class=\"icon-playlist pull-right\" data-toggle=\"modal\" onClick=\"getZoneChannelList('Eastern Zone - Radio Station', 2, 2);\" ></i>\r\n");
      out.write("            \t\t</a>\r\n");
      out.write("            \t\t\r\n");
      out.write("                  <div class=\"brand-card-body\">\r\n");
      out.write("                    <div>\r\n");
      out.write("                      <div class=\"text-value\">\r\n");
      out.write("                      ");

							try{
								java.util.List<Dashboard> list = Dashboard.getZoneChannelList("2", "1");
								out.print(list.size());
						 	}catch(Exception er){
								er.printStackTrace();
								 ErrorLogsAppender.appendException("dashboard page - Dashboard.getZoneChannelList()",er, errorLogs);
							}
					 
      out.write("\r\n");
      out.write("                      \r\n");
      out.write("                      </div>\r\n");
      out.write("                      <div class=\"text-uppercase text-muted small\">\r\n");
      out.write("                      TV Channels\r\n");
      out.write("                      </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div>\r\n");
      out.write("                      <div class=\"text-value\">\r\n");
      out.write("                      ");

							try{
								java.util.List<Dashboard> list = Dashboard.getZoneChannelList("2", "2");
								out.print(list.size());
						 	}catch(Exception er){
								er.printStackTrace();
								 ErrorLogsAppender.appendException("dashboard page - Dashboard.getZoneChannelList()",er, errorLogs);
							}
					 
      out.write("\r\n");
      out.write("                      </div>\r\n");
      out.write("                      <div class=\"text-uppercase text-muted small\">\r\n");
      out.write("                      Radio Stations\r\n");
      out.write("                      </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                  </div>\r\n");
      out.write("                </div>\r\n");
      out.write("              </div>\r\n");
      out.write("              <!-- /.col-->\r\n");
      out.write("              <div class=\"col-sm-6 col-lg-3\">\r\n");
      out.write("                <div class=\"brand-card\">\r\n");
      out.write("                  <div class=\"brand-card-header bg-google-plus\">\r\n");
      out.write("                   <div style=\"height:90px; font-weight:bolder; font-size:25px; padding-top:35px; color:white;\">\r\n");
      out.write("                    LAKE ZONE\r\n");
      out.write("                    </div>\r\n");
      out.write("                  </div>\r\n");
      out.write("                   <a class=\"nav-link\" data-toggle=\"tab\" href=\"#settings\" role=\"tab\">\r\n");
      out.write("              \t\t\t<i class=\"icon-screen-desktop pull-left\"  style=\"color:red;\" data-toggle=\"modal\" onClick=\"getZoneChannelList('Lake Zone - TV Channels', 3, 1);\"></i>\r\n");
      out.write("              \t\t\t<i class=\"icon-playlist pull-right\" data-toggle=\"modal\" onClick=\"getZoneChannelList('Lake Zone - Radio Station', 3, 2);\" ></i>\r\n");
      out.write("            \t\t</a>\r\n");
      out.write("                  <div class=\"brand-card-body\">\r\n");
      out.write("                    <div>\r\n");
      out.write("                      <div class=\"text-value\">\r\n");
      out.write("                      ");

							try{
								java.util.List<Dashboard> list = Dashboard.getZoneChannelList("3", "1");
								out.print(list.size());
						 	}catch(Exception er){
								er.printStackTrace();
								 ErrorLogsAppender.appendException("dashboard page - Dashboard.getZoneChannelList()",er, errorLogs);
							}
					 
      out.write("\r\n");
      out.write("                      </div>\r\n");
      out.write("                      <div class=\"text-uppercase text-muted small\">TV Channels</div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div>\r\n");
      out.write("                      <div class=\"text-value\">\r\n");
      out.write("                      ");

							try{
								java.util.List<Dashboard> list = Dashboard.getZoneChannelList("3", "2");
								out.print(list.size());
						 	}catch(Exception er){
								er.printStackTrace();
								 ErrorLogsAppender.appendException("dashboard page - Dashboard.getZoneChannelList()",er, errorLogs);
							}
					 
      out.write("\r\n");
      out.write("                      </div>\r\n");
      out.write("                      <div class=\"text-uppercase text-muted small\">Radio Stations</div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                  </div>\r\n");
      out.write("                </div>\r\n");
      out.write("              </div>\r\n");
      out.write("              <!-- /.col-->\r\n");
      out.write("            </div>\r\n");
      out.write("            <!-- /.row-->\r\n");
      out.write("            <!-- /.row-->\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </main>\r\n");
      out.write("      \r\n");
      out.write("      \t<!-- Start AsideMenu View -->\r\n");
      out.write("\r\n");
      out.write("\t<aside class=\"aside-menu\">    \r\n");
      out.write("        <!-- Tab panes-->\r\n");
      out.write("        <div class=\"tab-content\">\r\n");
      out.write("          <div class=\"tab-pane active\" id=\"timeline\" role=\"tabpanel\">\r\n");
      out.write("            <div class=\"list-group list-group-accent\">\r\n");
      out.write("              <div class=\"list-group-item list-group-item-accent-secondary bg-light text-center font-weight-bold text-muted text-uppercase small\">MONDAY</div>            \r\n");
      out.write("            \r\n");
      out.write("              \r\n");
      out.write("              <!--  Loop Start here  -->\r\n");
      out.write("              <div class=\"list-group-item list-group-item-accent-info list-group-item-divider\">\r\n");
      out.write("                <div><i class=\"icon-clock\"></i> 06:00 - 07:00 \r\n");
      out.write("                <br>\r\n");
      out.write("                <small><strong>Power Breakfast</strong></small>\r\n");
      out.write("                </div>            \r\n");
      out.write("              </div>\r\n");
      out.write("              <!--  Loop End here  -->\r\n");
      out.write("              \r\n");
      out.write("                          \r\n");
      out.write("        \r\n");
      out.write("          </div>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </aside>\r\n");
      out.write("\t\t<!-- End AsideMenu View -->\r\n");
      out.write("\t\t\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("<!-- Start footer View -->\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "includes/footer.jsp", out, false);
      out.write("\r\n");
      out.write("<!-- End footer View -->\r\n");
      out.write("\r\n");
      out.write("<!-- End ContentBody -->\r\n");
      out.write("\r\n");
      out.write("<!-- Start Northern Television Modal-->\r\n");
      out.write("\r\n");
      out.write("        <div class=\"modal fade\" id=\"ZoneChannelModal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myModalLabel\" aria-hidden=\"true\">\r\n");
      out.write("          <div class=\"modal-dialog modal-primary modal-lg\" role=\"document\">\r\n");
      out.write("            <div class=\"modal-content\" style=\"width:1200px; margin-left:-150px;\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t<div  id=\"result\"></div>\t\t  \r\n");
      out.write("            </div>\r\n");
      out.write("            <!-- /.modal-content-->\r\n");
      out.write("          </div>\r\n");
      out.write("          <!-- /.modal-dialog-->\r\n");
      out.write("        </div>\r\n");
      out.write("        <!-- /.end-add-user-modal-->\r\n");
      out.write("      \r\n");
      out.write("       \r\n");
      out.write("<!-- End Northern Television Modal --> \r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");

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

      out.write('\r');
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

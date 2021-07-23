<%@ page import="java.util.*" %>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Vector" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Vector" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="tcms.csp.Registration" %> 
<%@ page import="org.apache.commons.codec.digest.*" %>

<%

	String token = request.getParameter("key1");
	
	Long status = Registration.activateAccount(token);
	
	if(status ==1){
		 out.print("<script type=\"text/javascript\">");
		 out.print("window.location = 'csp-activated.jsp';");
		 out.print("</script>");
	}else{
		System.out.println("Failed");
	}
	

%>

<%@ page import="java.util.*" %>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Vector" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Vector" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="tcms.csp.*" %> 
<%@ page import="org.apache.commons.codec.digest.*" %>

<%
	String programName = request.getParameter("program");
	String start = request.getParameter("start");
	String end = request.getParameter("end");
	String objective = request.getParameter("objective");
	String audience = request.getParameter("audience");
	String expectation = request.getParameter("expectation");
	String day = request.getParameter("day2");
   
	 Program program = new Program(1, programName, start, end, "", "", objective, audience, expectation, "1", day, Integer.parseInt(session.getAttribute("channelID").toString()));
	 int status = tcms.csp.Registration.registerProgram(program, "program_lineup_tmp");
     if (status > -1) {
		 out.print("<script>");
		 out.print("alert('Program successful added!');");
		 out.print("</script>");
	} else {
		
		out.print("<script>");
		out.print("alert('Couldn't add program!');");
		out.print("</script>");
	}

%>











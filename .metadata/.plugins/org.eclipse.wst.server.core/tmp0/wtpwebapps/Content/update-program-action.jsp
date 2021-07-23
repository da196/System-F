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
     String startTime = request.getParameter("start");
     String endTime = request.getParameter("end");
     String programName = request.getParameter("program2");
     String objective = request.getParameter("objective2");
     String audience = request.getParameter("audience2");
     String expectation = request.getParameter("expectation2");
     String day = request.getParameter("day3");
     String programmeID = request.getParameter("programmeID");
     String channelID = request.getParameter("channelID");
     
	System.out.println(startTime + " ---> " + endTime);
     Program program = new Program(Integer.parseInt(programmeID), programName, startTime, endTime, "", "", objective, audience, expectation, "1", day, Integer.parseInt(channelID));
	
     long status = ProgramManipulator.UpdateProgram(program);
     if (status > 0) {
		 out.print("<script>");
		 out.print("alert('Program successful Update!');");
		 out.print("</script>");
		 
	 } else {
		
		out.print("<script>");
		out.print("alert('Couldn't add program!');");
		out.print("</script>");
	 }
	
%>











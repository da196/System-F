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
     String program_id = request.getParameter("program_id");
	 Program program = ProgramManipulator.getProgram(program_id);
	 
	 out.print(program.getProgramId() + "|" + program.getProgramName() + "|" + program.getStartTime() + "|" + program.getEndTime() + "|" + program.getEntryDate() + "|" + program.getModifiedDate() + "|" + program.getProgramObjective() + "|" + program.getTargetAudience() + "|" + program.getExpectedArchievement() + "|" + program.getStatus() + "|" + program.getDay());
	 
	 
	

%>











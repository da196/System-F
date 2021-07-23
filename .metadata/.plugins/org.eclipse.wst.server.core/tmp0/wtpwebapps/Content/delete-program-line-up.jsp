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
    
     String programmeID = request.getParameter("program_id");
     
     long status = ProgramManipulator.deleteProgram(programmeID);
     if (status > 0) {
		 out.print("<script>");
		 out.print("alert('Program successful Deleted!');");
		 out.print("</script>");
		 
	 } else {
		
		out.print("<script>");
		out.print("alert('Couldn't delete program!');");
		out.print("</script>");
	 }
	
%>











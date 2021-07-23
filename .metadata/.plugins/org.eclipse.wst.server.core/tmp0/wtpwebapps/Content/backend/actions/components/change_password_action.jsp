<%@ page import="java.util.*" %>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Vector" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Vector" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="tcms.presentation.*" %> 
<%@ page import="tcms.configuration.*" %> 
<%@ page import="java.io.PrintWriter" %> 
<% 
System.out.println("TEst");
	String currentPass = request.getParameter("currentPass"); 
	String newPass = request.getParameter("newPass");
	String confirmPass = request.getParameter("confirmPass");
	
	
	
	List<StaffAccount> userAccount = StaffAccount.getUsertId(session.getAttribute("email").toString(), currentPass);
	
	if (userAccount.size() > 0) {
	int status = StaffAccount.changePasswordImplementation(newPass, session.getAttribute("userID").toString());
	
	if (status == 1) {
		 PrintWriter printWriter = response.getWriter();
		 printWriter.print("{\"status\":1}");
		
	} else {
		 PrintWriter printWriter = response.getWriter();
		 printWriter.print("{\"status\":2}");
		
	}
	} else {
		 PrintWriter printWriter = response.getWriter();
		 printWriter.print("{\"status\":3}");
		
	}
%>

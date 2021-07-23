<%@ page import="java.util.*" %>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Vector" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Vector" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="tcms.csp.Registration" %>
<%@ page import="tcms.csp.Account" %>

<% 
try {
	String email = request.getParameter("passwordreset"); 
	 System.out.println(email);
	List<Account> userAccount = Registration.getUsertId(email);
	System.out.println(userAccount.size());
	if (userAccount.size() == 1) {
		 
		 String userID = userAccount.get(0).getId();
		 String newPass = Registration.getAlphaNumericString(8);
		 
		 System.out.println("New Password: " +newPass);
		 String fullName= userAccount.get(0).getContact_person();
		 System.out.println(fullName);
		 
		 		 
		 String link = "http://10.200.221.15:8080/TCMS/";
		 String msgSubject = "Content - Password Reset"; 
		 String msgHeader= "<b>Dear " + fullName +"</b>.";
		 String msgBody = " Please use the password <b>" + newPass + "</b> to login to the system and after login change the password. Click the below button to login."; 
		 String msgBodyEnd ="Regards. <br> TCRA";

		 int status = Registration.changePassword(newPass, userID, msgSubject, msgHeader, msgBody, msgBodyEnd, email, link);
		
		 if (status == 1) {
			    out.println("<script type=\"text/javascript\">");
			    out.println("alert('Your new password has been sent to your email address!');");
			    out.println("</script>");	
		// response.sendRedirect("reset-password-info.jsp");
		 } else {	 
			    out.println("<script type=\"text/javascript\">");
			    out.println("alert('Error, could not change password!');");
			    out.println("</script>");		 
		 }
		 } else {
			    out.println("<script type=\"text/javascript\">");
			    out.println("alert('Username does not exist!');");
			    out.println("</script>");
		 //response.sendRedirect("forgot-password.jsp");
	}
} catch(Exception er) {

}
%>


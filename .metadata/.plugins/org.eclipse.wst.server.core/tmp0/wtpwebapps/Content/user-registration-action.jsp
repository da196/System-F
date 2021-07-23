<%@ page import="java.util.*" %>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Vector" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Vector" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="tcms.csp.Registration" %>
<%@ page import="tcms.csp.Csp" %>
<%@ page import="org.apache.commons.codec.digest.*" %>

<%
		
		String companyName = request.getParameter("companyName");
		String contentType_id = request.getParameter("contentType_id");
		String channel_id = request.getParameter("channel_id");
		String contactPerson = request.getParameter("contactPerson");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String mobileNumber = request.getParameter("mobileNumber");
		Csp csp = new Csp(companyName, address, contactPerson, mobileNumber, email, password, Integer.parseInt(channel_id));
		
		long stat = Registration.checkEmailChannelExist(channel_id, email);
				
		//Generate Hash Code which help in Activation Link
		String token;
		Random random = new Random();
		random.nextInt(999999);
		token = DigestUtils.md5Hex("" + random);
		
		String msgSubject = "TCMS User Registration Activation Email"; 
		String msgHeader= "Dear Sir/ Madam.";
		String msgBody = "Thanks you for Registering in Content Service Provider Portal (CSP). Click below button to activate your account."; 
		String activationLink = "http://10.200.221.15:8080/TCMS/ActivateAccount.jsp?key1=" + token;
		String msgBodyEnd ="Regards.<br>TCRA";
		
		if (stat == 0) {
			
			int status = Registration.registerCsp(csp, activationLink, token, msgSubject, msgHeader, msgBody, msgBodyEnd);
				
		if (status > 0) {
		    out.print("<script type=\"text/javascript\">");
		    //out.print("$('#mid-page-div').html('');");
		    out.print("window.location = 'csp-success-alert.jsp';");
		    out.print("alert('User successfully added!');");
		    out.print("document.getElementById('companyName').value = '';");
		    out.print("document.getElementById('contentType_id').value = '';");
		    out.print("document.getElementById('address').value = '';");
		    out.print("document.getElementById('email').value = '';");
		    out.print("document.getElementById('contactPerson').value = '';");
		    out.print("document.getElementById('email').value = '';");
		    out.print("document.getElementById('cPassword').value = '';");
		   
		    out.print("</script>");
		} else {
		    out.print("<script type=\"text/javascript\">");
		   // out.print("document.getElementById('overlay').style.display = 'none';");
		    out.print("alert('Error, can not add User!');");
		    out.print("</script>");
		}
		} else {
			System.out.println(stat);
			
			out.print("<script type=\"text/javascript\">");
			//out.print("document.getElementById('overlay').style.display = 'none';");
		    out.print("alert('Email Address or Channel Exist in the System.');");
		    out.print("</script>");
		}
		
%>
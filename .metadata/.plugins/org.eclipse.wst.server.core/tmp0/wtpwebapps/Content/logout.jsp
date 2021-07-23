 <%
	session.setAttribute("channelID", null);
	session.setAttribute("channel_name", null);
	session.setAttribute("company_name", null);
	session.setAttribute("user_id", null);
	session.setAttribute("company_address", null);
	session.setAttribute("contact_person", null);
	session.setAttribute("mobile_phone", null);
	session.setAttribute("email", null);
    session.invalidate();
	response.sendRedirect("index.jsp");

%>
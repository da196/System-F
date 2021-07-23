<%
response.setHeader("Cache-control", "no-cache");
response.setHeader("Cache-control", "no-store");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expire",0);

if (session.getAttribute("userID") != null && session.getAttribute("roleID").equals("3") ) {
%>
<%@ page import="tcms.configuration.*" %>
<%@ page import="tcms.presentation.*" %>
<%@ page import="tcms.errorLogs.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <label for="channel"><strong>Channel Name</strong></label>
	<select class="form-control" name="channel" id="channel">
		
	 <%
	try{
		String content_type_id = request.getParameter("content_type_id");  
		
		if(content_type_id.equals("")){
		}else{
			java.util.List<Channels> channelList = Channels.GetChannels(content_type_id);
			for (int i = 0; i < channelList.size(); i++){
			%>
			<option value="<% out.print(channelList.get(i).getChannelID());%>"> <% out.print(channelList.get(i).getChannelName()); %> </option>								      
			<%
			}
			}
		}catch(Exception er){
			er.printStackTrace();
			//ErrorLogsAppender.appendException("Search.jsp page", er, errorLogs);
		}
	%>
	</select>
</body>
</html>

   <%
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
%>
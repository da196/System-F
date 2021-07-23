
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
<div id="channel_id" class="form-group col-9">
 <label for="channel">Channel</label>
	<select class="form-control" name="channel" id="channel">
		
	 <%
	try{
		String content_type_id = request.getParameter("content_type_id");  
		
		if(content_type_id.equals("")){
		}else{
			java.util.List<Channels> channelList = Channels.GetChannels(content_type_id);
			for (int i = 0; i < channelList.size(); i++){
			%>
			<option value="<% out.print(channelList.get(i).getChannelID());%>"> <% out.print(channelList.get(i).getChannelName().trim()); %> </option>								      
			<%
			}
			}
		}catch(Exception er){
			er.printStackTrace();
			//ErrorLogsAppender.appendException("Search.jsp page", er, errorLogs);
		}
	%>
	</select>
</div>
</body>
</html>

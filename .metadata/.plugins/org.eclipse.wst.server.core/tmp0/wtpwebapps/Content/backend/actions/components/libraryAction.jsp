<%@ page import="java.util.*" %>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Vector" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Vector" %>
<%@ page import="tcms.presentation.*" %> 
<%@ page import="tcms.configuration.*" %> 

<%

	String id = request.getParameter("id");

	java.util.List<Library> list = Library.GetContentDescription(id);
	
	for (int i=0; i < list.size(); i ++){
		out.print(list.get(i).getDate() + "|" + list.get(i).getDescription());
		System.out.println(list.get(i).getDate() + "|" + list.get(i).getDescription());
	}
	
	

%>
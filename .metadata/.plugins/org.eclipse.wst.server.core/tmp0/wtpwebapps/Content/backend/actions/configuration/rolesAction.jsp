<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="tcms.configuration.*" %> 
<%@ page import="java.io.PrintWriter" %> 
<% 
	String role_name = request.getParameter("role_name"); 
	String description = request.getParameter("description"); 
	String identifier = request.getParameter("identifier");
	String role_id = request.getParameter("role_id"); 
	
	if(identifier.equals("1")){
		
	Long _status = Roles.AddRole(role_name, description);
	 if(_status > 0) {
		   PrintWriter printWriter = response.getWriter();
		   printWriter.print("{\"status\":1}");
	 }else{
		 PrintWriter printWriter = response.getWriter();
		   printWriter.print("{\"status\":2}");
	 }
	 
	}else if (identifier.equals("2")){
		
		java.util.List<Roles> roleList = Roles.getRolesList(role_id);
		
		for(int i=0; i < roleList.size(); i++){
			out.print(roleList.get(i).getRoles_name() + "|" + roleList.get(i).getDescription());
		}
	}else if (identifier.equals("3")){
		
		Long _status = Roles.UpdateRole(role_id, role_name, description);
				
		 if(_status > 0) {
			   PrintWriter printWriter = response.getWriter();
			   printWriter.print("{\"status\":1}");
		 }else{
			 PrintWriter printWriter = response.getWriter();
			   printWriter.print("{\"status\":2}");
		 }
	}
	
%>

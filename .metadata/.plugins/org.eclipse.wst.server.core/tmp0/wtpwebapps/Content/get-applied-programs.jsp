<%@ page import="java.util.*" %>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Vector" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Vector" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="tcms.csp.*" %> 
<%@ page import="org.apache.commons.codec.digest.*" %>

   
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">
<title>OTAS - LOGIN FORM</title>

<!-- ALL REGISTRATION CSS STYLES -->
<link rel="stylesheet" type = "text/css" href="css/registration-css/fonts-googleapis.css" >
<link rel="stylesheet" type = "text/css" href="css/registration-css/bootstrap.min.css">
<link rel="stylesheet" type = "text/css" href="css/registration-css/bootstrap-theme.min.css">
<link rel="stylesheet" type = "text/css" href="css/registration-css/custom.css">

<%   String day = request.getParameter("day"); %>
<div class="card shadow mb-4">
            <div class="card-header py-3">
                <!--<div class="clearfix"> -->
                <div class="d-flex justify-content-between">
                    <h6 class="m-0 font-weight-bold text-primary"><% out.print(day); %> Programmes</h6>
                    <button class="btn btn-sm btn-primary rounded-pill" data-toggle="modal" data-target="#addProgrammeModal"><i class="fas fa-plus"></i> Add programme</button>
                </div>
                <!--</div> -->
            </div>
            
            <%
          
            java.util.List<Program> programList = null; //ProgramManipulator.getPrograms(session.getAttribute("channelID").toString(), day, "program_lineup_tmp");
            //System.out.println(programList.size());
            %>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable"  width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>Time</th>
                                <th>Name</th>
                                <th>Main Objective</th>
                                <th>Target Audience</th>
                                <th>Expectations</th>
                                <th class="disabled-sorting">Actions</th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>Time</th>
                                <th>Name</th>
                                <th>Main Objective</th>
                                <th>Target Audience</th>
                                <th>Expectations</th>
                                <th class="disabled-sorting">Actions</th>
                            </tr>
                        </tfoot>
                            <tbody>										
                            <!-- Start of the Table Body -->
                            
                            <%
                            for (int i = 0; i < programList.size(); i++) {
                            	out.print("<tr>");
                            	out.print("<td>");
                            	out.print(programList.get(i).getStartTime() + " - " + programList.get(i).getEndTime());
                            	out.print("</td>");
                            	
                            	out.print("<td>");
                            	out.print(programList.get(i).getProgramName());
                            	out.print("</td>");
                            	
                            	out.print("<td>");
                            	out.print(programList.get(i).getProgramObjective());
                            	out.print("</td>");
                            	
                            	out.print("<td>");
                            	out.print(programList.get(i).getTargetAudience());
                            	out.print("</td>");
                            	
                            	out.print("<td>");
                            	out.print(programList.get(i).getExpectedArchievement());
                            	out.print("</td>");
                            	
                            %>
                            
                                <td class="d-flex justify-content-center">                                                            
                                   <a class="btn btn-primary btn-circle btn-sm" href="#editProgrammeModal" data-toggle="modal" title="EDIT"  onClick="editProgram(<% out.print(programList.get(i).getProgramId()); %>);" >
                                            <i class="fas fa-pencil-alt"></i></a>&nbsp;
                                     <a class="btn btn-danger btn-circle btn-sm" href="#deleteProgrammeModal" data-toggle="modal" title="DELETE" >
                                            <i class="fas fa-trash"></i>
                                    </a>
                                </td>
                            <%
                        	out.print("</tr>");
                            }
                            %>	
                            
                                		
                                <!-- End of the Table Body -->
                            </tbody>
                    </table>
                </div>
            </div>
        </div>

</body>
</html>                            
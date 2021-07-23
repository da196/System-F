<%
session.setAttribute("applicantID", null);
session.setAttribute("applicantFullName", null);
session.setAttribute("applicantEmail", null);
session.invalidate();
response.sendRedirect("index.jsp");
%>
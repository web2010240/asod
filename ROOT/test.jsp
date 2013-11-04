<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Page Redirection</title>
</head>
<body>
<center>
<h1>Page Redirection</h1>
</center>
<% request.isUserInRole("REGISTERED_USER_ROLE"); %>
   <%@ include file="users/register.jsp" %>

</body>
</html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="el">
    <head>
        <title>asod.org</title>
        <meta charset="utf-8" />
    </head>
    <body>
        <jsp:useBean id="user" class="info.asod.School" />
        <% 
        try {
            user.checkIp(request.getRemoteAddr());
            <jsp:include page="Header.jsp">
            <jsp:param value="d" name="accessRole" />
            </jsp:include>
        }
        catch(Exception) {
            @include file="error.jsp"
        }
        %>
            
    </body>
</html>

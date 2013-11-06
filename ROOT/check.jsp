<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="el">
    <head>
        <title>asod.org</title>
        <meta charset="utf-8" />
    </head>
    <body>
        <%
        try {
            info.asod.CaptchasDotNet captchas = new info.asod.CaptchasDotNet(request.getSession(true), "demo", "secret");
            String password = request.getParameter("password");

    </body>
</html>

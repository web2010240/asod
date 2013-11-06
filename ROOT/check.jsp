<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.lang.Exception" %>
<html lang="el">
    <head>
        <title>asod.org</title>
        <meta charset="utf-8" />
    </head>
    <body>
        <%
        try {
            info.asod.CaptchasDotNet captchas = new info.asod.CaptchasDotNet(request.getSession(true), "demo", "secret");
            String password = request.getParameter("captcha");
            String body;

            switch(captchas.check(password)) {
                case 's':
                    body = "Session seems to be timed out or broken. ";
                    body += "Please try again or report error to administrator.";
                    throw new Exception(body);
                case 'm':
                    body = "Every CAPTCHA can only be used once. ";
                    body += "The current CAPTCHA has already been used. ";
                    body += "Please use back button and reload";
                    throw new Exception(body);
                case 'w':
                    body = "You entered the wrong password. ";
                    body += "Please use back button and try again. ";
                    throw new Exception(body);
            }
            String uname = request.getParameter("uname");
            String nomos = request.getParameter("nomos");
            String odos = request.getParameter("odos");
            String number = request.getParameter("number");
            String email = request.getParameter("email");
            String site = request.getParameter("site");
            String tupos = request.getParameter("tupos");
            String ip = request.getRemoteAddr();
            out.println(uname);
            out.println(ip);
        }
        catch(Exception e) {
            out.println(e);
        }
        %>
    </body>
</html>

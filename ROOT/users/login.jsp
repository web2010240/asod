<jsp:useBean id="info" class="com.asod.School" />

<html>
    <body>
        
        <% try {
            String tmp = request.getParameter("sName");
            info.setName(tmp);
            tmp = request.getParameter("pass");
            String tmp2 = request.getParameter("pass2");
            info.setPass(tmp, tmp2); 

        }
        %>
    </body>
</html>

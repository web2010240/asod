<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.lang.Exception" %>
<jsp:useBean id="user" class="info.asod.School" />
<!doctype html>
<html lang="el">
    <head>
        <meta charset="utf-8" />
        <title>Αξιολόγηση Σωματικής ∆ιάπλασης</title>
        <link rel="stylesheet" href="css/main.css" />
    </head>
    <body>
        <div id="main">
            <header id="top_header">
                <img src="images/logo.png"/>
                <h1>Αξιολόγηση Σωματικής ∆ιάπλασης</h1>
            </header>
            <nav id="nav_menu">
                <ul>
                    <li><a class="topLinks" href="index.jsp"><h3>Κεντρική</h3></a></li>
                    <li><a class="topLinks" href="register.jsp"><h3>Εγγραφή<h3></a></li>
                    <li><a class="topLinks" href="login.jsp"><h3>Σύνδεση</h3></a></li>
                    <li><a class="topLinks" href="mailto:digitaluniverseasod@gmail.com"><h3>Επικοινωνία</h3></a></li>
                </ul>
            </nav>
            <aside id = "side_right">
                <h4>Ανακοινώνσεις</h4>
                <hr>
                Προσοχή! Οι εγγραφες θα ισχύουν μέχρι τις 29/09/2013
                μετά την λήξη της προθεσμίας θα ενημερωθείτε με email 
                στην ηλεκτρονική σας διεύθυνση στο οποιο θα περιέχεται 
                το όνομα και το συνθηματικό ώστε να μπορείτε να συνδεθείτε 
                και να καταχωρίσετε τους μαθητές
            </aside>
            <section id="main_section">
                <article id="welcome_article">
                    <%
                    try{
                        String username = (String )session.getAttribute("username");
                        String password = (String )session.getAttribute("password");
                        user.checkAuth(username, password);
                    %>
                    <form action="<%=response.encodeUrl("add_teacher.jsp")%>" method="post">
                        <% for (int i = 1; i <= 6; i++) { %>
                            <table>
                                <tr>
                                    <th><%= i%>η ταξη</th>
                                </tr>
                                <tr>
                                    <td>αριθμός τμημάτων:</td>
                                    <td><input type="number" name="class_num<%=i %>"></td>
                                </tr>
                        <%}%>
                                <tr>
                                    <td><input type="submit" value="Εγγραφη"></td>
                                </tr>
                            </table>
                        </form>
                    <%
                    }catch(Exception e)
                    {
                         out.println("Σφαλμα! ");
                         out.println(e.getMessage());
                         out.println("Επικοινωνήστε με τους διαχειριστές επιλέγοντας \"επικοιωνία\"");
                    }
                    %>
                </article>
            </section>
            <footer id="the_footer">
                &copy;Digital universe team 
            </footer>
        </div>
    </body>
</html>

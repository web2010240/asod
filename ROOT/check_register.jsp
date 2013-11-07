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
                    <li><a href="index.jsp"><h3>Κεντρική</h3></a></li>
                    <li><a href="register.jsp"><h3>Εγγραφή<h3></a></li>
                    <li><a href="login.jsp"><h3>Σύνδεση</h3></a></li>
                    <li><a href="mailto:nick@DigitalUniverse.net"><h3>Επικοινωνία</h3></a></li>
                </ul>
            </nav>
            <aside id = "side_right">
                <h4>Ανακοινώνσεις</h4>
                <hr>
                Προσοχή! Οι εγγραφες θα ισχύουν μέχρι τις 29/05/2013
                μετά την λήξη της προθεσμίας θα ενημερωθείτε με email 
                στην ηλεκτρονική σας διεύθυνση στο οποιο θα περιέχεται 
                το όνομα και το συνθηματικό ώστε να μπορείτε να συνδεθείτε 
                και να καταχωρίσετε τους μαθητές
            </aside>
            <section id="main_section">
                <article id="welcome_article">
                    <%
                    try {
                        info.asod.CaptchasDotNet captchas = new info.asod.CaptchasDotNet(request.getSession(true), "demo", "secret");
                        String password = request.getParameter("captcha");
                        String body;

                        switch(captchas.check(password)) {
                            case 's':
                                body = "Το session τις σύνδεσης σας έλειξε. <br>";
                                body += "παρακαλώ προσπαθήστε ξανά η επικοινωνήστε ";
                                body += "με τους διαχειριστές επιλέγοντας \"επικοιωνία\"";
                                throw new Exception(body);
                            case 'm':
                                body = "κάθε κωδικός captcha μπορεί να χρησιμοποιηθεί μονο ";
                                body += "μια φορα.<br> Παρακαλώ εγγραφείτε ξανά η επικοινωνήστε ";
                                body += "με τους διαχειριστές επιλέγοντας \"επικοιωνία\"";
                                throw new Exception(body);
                            case 'w':
                                body = "Δώσατε λανθασμένο κωδικό captcha. <br>";
                                body += "Παρακαλώ εγγραφείτε ξανά η επικοινωνήστε ";
                                body += "με τους διαχειριστές επιλέγοντας \"επικοιωνία\"";
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
                        out.println("Η εγγραφη σας έγινε επιτυχώς! "
                        +"Το όνομα και ο κωδικός θα σταλούν στην ηλεκτρονική"
                        +"σας διεύθυνση μετά την λήξει τις προθεσμίας εγγραφων.<br>"
                        +"Σε περίπτωση που δώσατε κάποιο λανθασμένο στοιχειο κατά"
                        +"την εγγραφη σας παρακαλώ εγγραφείτε ξανά.<br>");

                    }
                    catch(Exception e) {
                        out.println(e);
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

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.lang.Exception" %>
<jsp:useBean id="user" class="info.asod.School" />
<!doctype html>
<html lang="el">
    <head>
        <meta charset="utf-8" />
        <title>index.html</title>
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
                    <li><a href="mailto:nick@DigitalUniverse.net"><h2>Επικοινωνία</h2></a></li>
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
                    <header id="welcome_header">
                        <h1>Καλώς ήρθατε</h1>
                    </header>
                    <p>Η δημιουργία αυτής τις ιστοσελίδας έχει ως σκοπό την εγγραφη 
			σχολειων με αποτέλεσμα να εισάγουν τους μαθητές τους ώστε να γίνουν 
                        οι κατάλληλες μετρήσεις διατροφής και σωματικής δραστηριότητας
                    </p>
                </article>    
            </section>
            <footer id="the_footer">
                &copy;Digital universe team 
            </footer>
        </div>
    </body>
</html>

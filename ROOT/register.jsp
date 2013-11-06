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
                    <li><a href="mailto:nick@DigitalUniverse.net"><h3>Επικοινωνια</h3></a></li>
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
                <article>
                    <% try { 
                        user.checkIp(request.getRemoteAddr()); 
                        info.asod.CaptchasDotNet captchas = new info.asod.CaptchasDotNet(request.getSession(true), "demo", "secret");
                        %>
                        <form action="<%=response.encodeUrl("check.jsp")%>" method="post">
                            <table>
                                <tr>
                                    <td>Όνομα Σχολειου:</td>
                                    <td><input type="text" maxlength="50" name="uname"></td>
                                </tr>
                                <tr>
                                    <td>Νομός:</td>
                                    <td>
                                        <select name="nomos">
                                            <option value="Αττικής">Νομός Αττικής</option>
                                            <option value="Εύβοιας">Νομός Εύβοιας</option>
                                            <option value="Ευρυτανίας">Νομός Ευρυτανίας</option>
                                            <option value="Φωκίδας">Νομός Φωκίδας</option>        
                                            <option value="Φθιώτιδας">Νομός Φθιώτιδας</option>
                                            <option value="Βοιωτίας">Νομός Βοιωτίας</option>
                                            <option value="Χαλκιδικής">Νομός Χαλκιδικής</option>
                                            <option value="Ημαθίας">Νομός Ημαθίας</option>
                                            <option value="Κιλκίς">Νομός Κιλκίς</option>
                                            <option value="Πέλλας">Νομός Πέλλας</option>
                                            <option value="Πιερίας">Νομός Πιερίας</option>
                                            <option value="Σερρών">Νομός Σερρών</option>
                                            <option value="Θεσσαλονίκης">Νομός Θεσσαλονίκης</option>
                                            <option value="Χανίων">Νομός Χανίων</option>
                                            <option value="Ηρακλείου">Νομός Ηρακλείου</option>
                                            <option value="Λασιθίου">Νομός Λασιθίου</option>
                                            <option value="Ρεθύμνης">Νομός Ρεθύμνης</option>
                                            <option value="Δράμας">Νομός Δράμας</option>
                                            <option value="Έβρου">Νομός Έβρου</option>
                                            <option value="Καβάλας">Νομός Καβάλας</option>
                                            <option value="Ροδόπης">Νομός Ροδόπης</option>
                                            <option value="Ξάνθης">Νομός Ξάνθης</option>
                                            <option value="Άρτας">Νομός Άρτας</option>
                                            <option value="Ιωαννίνων">Νομός Ιωαννίνων</option>
                                            <option value="Πρέβεζας">Νομός Πρέβεζας</option>
                                            <option value="Θεσπρωτίας">Νομός Θεσπρωτίας</option>
                                            <option value="Κέρκυρας">Νομός Κέρκυρας</option>
                                            <option value="Κεφαλληνίας">Νομός Κεφαλληνίας</option>
                                            <option value="Λευκάδας">Νομός Λευκάδας</option>
                                            <option value="Ζακύνθου">Νομός Ζακύνθου</option>
                                            <option value="Χίου">Νομός Χίου</option>
                                            <option value="Λέσβου">Νομός Λέσβου</option>
                                            <option value="Σάμου">Νομός Σάμου</option>
                                            <option value="Αρκαδίας">Νομός Αρκαδίας</option>
                                            <option value="Αργολίδας">Νομός Αργολίδας</option>
                                            <option value="Κορινθίας">Νομός Κορινθίας</option>
                                            <option value="Λακωνίας">Νομός Λακωνίας</option>
                                            <option value="Μεσσηνίας">Νομός Μεσσηνίας</option>
                                            <option value="Κυκλάδων">Νομός Κυκλάδων</option>
                                            <option value="Δωδεκανήσου">Νομός Δωδεκανήσου</option>
                                            <option value="Καρδίτσας">Νομός Καρδίτσας</option>
                                            <option value="Λάρισας">Νομός Λάρισας</option>
                                            <option value="Μαγνησίας">Νομός Μαγνησίας</option>
                                            <option value="Τρικάλων">Νομός Τρικάλων</option>
                                            <option value="Αχαΐας">Νομός Αχαΐας</option>
                                            <option value="Αιτωλοακαρνανίας">Νομός Αιτωλοακαρνανίας</option>
                                            <option value="Ηλείας">Νομός Ηλείας</option>
                                            <option value="Φλώρινας">Νομός Φλώρινας</option>
                                            <option value="Γρεβενών">Νομός Γρεβενών</option>
                                            <option value="Καστοριάς">Νομός Καστοριάς</option>
                                            <option value="Κοζάνης">Νομός Κοζάνης</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Οδός:</td>
                                    <td><input type="text" maxlength="50" name="odos"></td>
                                </tr>
                                <tr>
                                    <td>Τηλέφωνο:</td>
                                    <td><input type="tel" maxlength="50" name="number"></td>
                                </tr>
                                <tr>
                                    <td>Email:</td>
                                    <td><input type="email" maxlength="50" name="email"></td>
                                </tr>
                                <tr>
                                    <td>Ιστιοτοπος:</td>
                                    <td><input type="url" maxlength="50" name="site"></td>
                                </tr>
                                <tr>
                                    <td>Τύπος:</td>
                                    <td>
                                        <select name="tupos">
                                            <option value="Γυμνάσιο">Γυμνάσιο</option>
                                            <option value="Λύκειο-ΕΠΑΛ">Λύκειο-ΕΠΑΛ</option>
                                            <option value="Δημοτικό">Δημοτικό</option>
                                            <option value="Νηπιαγωγείο">Νηπιαγωγείο</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td><%= captchas.image() %></td>
                                </tr>
                                <tr>
                                    <td>πληκτρολογήστε τους χαρακτήρες<br>που βλέπετε στην εικόνα:</td>
                                    <td><input type="text" maxlength="10" name="captcha"></td>
                                </tr>
                                <tr>
                                    <td><input type="submit" value="Εγγραφη"></td>
                                </tr>
                            </table>
                        </form>
                        <%}catch(Exception e) { %>
                        Δεν βρισκεστε στο δικτυο του sch.gr 
                                <%out.println(e);} %>
                </article>    
            </section>
            <footer id="the_footer">
                &copy;Digital universe team 
            </footer>
        </div>
    </body>
</html>

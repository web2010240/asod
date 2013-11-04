<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="el">
    <head>
        <title>asod.org</title>
        <meta charset="utf-8" />
    </head>
    <body>
        <form action="login.jsp" method="post">
            <table>
                <tr>
                    <td>Όνομα Σχολειου:</td>
                    <td><input type="text" maxlength="50" name="uname"></td>
                </tr>
                <tr>
                    <td>Νομός:</td>
                    <td>
                        <select>
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
                        <select>
                            <option value="Γυμνάσιο">Γυμνάσιο</option>
                            <option value="Λύκειο">Λύκειο</option>
                            <option value="Δημοτικό">Δημοτικό</option>
                            <option value="Νηπιαγωγείο">Νηπιαγωγείο</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><input type="submit" value="Εγγραφη"></td>
                </tr>
            </table>
        </form>
    </body>
</html>

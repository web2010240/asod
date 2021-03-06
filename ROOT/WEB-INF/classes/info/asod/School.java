package info.asod;
import java.util.ArrayList;
import java.lang.Exception;
public class School {
    private String name;
    private String nomos;
    private String odos;
    private String number;
    private String email;
    private String site;
    private String tupos;
    private String ip;
    private String password;
    private String md5Pass;

    public School()
    {
    }
    public School(String name, String nomos, String odos, String number,
            String email, String site, String tupos, String ip) throws Exception
    {
        setName(name);
        setNomos(nomos);
        setOdos(odos);
        setNumber(number);
        setEmail(email);
        setSite(site);
        setTupos(tupos);
        setIp(ip);
    }
    public void setName(String name) throws Exception
    {
        checkArgument(name);
        name = name.replace(' ', '_');
        this.name = name.trim();
    }
    public void setNomos(String nomos) throws Exception
    {
        checkArgument(nomos);
        this.nomos = nomos.trim();
    }
    public void setOdos(String odos) throws Exception
    {
        checkArgument(odos);
        odos = odos.replace(' ', '_');
        this.odos = odos.trim();
    }
    public void setNumber(String number) throws Exception
    {
        checkArgument(number);
        this.number = number.trim();
    }
    public void setEmail(String email) throws Exception
    {
        checkArgument(email);
        //CHECK SCH email
        this.email = email.trim();
    }
    public void setSite(String site) throws Exception
    {
        checkArgument(site);
        if (!site.contains("sch"))
            throw new Exception("Ο ιστότοπος πρέπει να είναι τις μορφής http:// και να ανήκει στο sch");
        this.site = site.trim();
    }
    public void setTupos(String tupos) throws Exception
    {
        checkArgument(tupos);
        this.tupos = tupos.trim();
    }
    public void setIp(String ip) throws Exception
    {
        checkArgument(ip);
        this.ip = ip.trim();
    }
    public void checkArgument(String tmp) throws Exception
    {
        if (tmp.isEmpty())
            throw new Exception("Πρέπει να συμπληρώσετε όλα τα πεδία");
        //bad chars
        if (tmp.contains("'") || tmp.contains("%") || tmp.contains(";")
                || tmp.contains("\\") || tmp.contains(",") || 
                tmp.contains("EXEC") || tmp.contains("--") )
            throw new Exception("το πεδιο "+tmp+" περιεχει μη εγκυρους χαρακτηρες");
    }
    public void checkIp(String ip) throws Exception
    {
        if (ip.regionMatches(0, "194.63", 0, 6))
            throw new Exception("Δεν βρισκεστε στο δικτυο του sch.gr");
    }
    public void setPassword() throws Exception
    {
        try {
            password = Crypt.getSha1(name+email+ip+odos+number).substring(0, 10);
            Email.sendEmail(email, "Αξιολόγηση Σωματικής ∆ιάπλασης", "Σας ενημερώνουμε ότι ο κωδικός για να συνδεθείτε είναι: "+password);
            md5Pass = Crypt.getMd5(password);
        }
        catch(Exception e)
        {
            throw e;
        }
    }
    public void insert() throws Exception
    {
        MySql c = new MySql();
    
        try{
            c.connect("asod_root", "DigitalUniverse");
            c.executeQuery("SELECT email FROM school WHERE email=\'"+email+"\';");
            c.readColumns();
            ArrayList<String> t = c.readRows();
            if (!t.isEmpty())
                throw new Exception("Έχετε εγγραφει ήδη!");
            int r = c.executeUpdate("INSERT school(name, nomos, odos, number, email, site, tupos, ip, password) "
                    +"VALUES(\'"+name+"\', \'"+nomos+"\', \'"+odos+"\', \'"+number+"\', \'"+email+"\', \'"+site+"\', \'"+tupos+"\', \'"+ip+"\', \'"+md5Pass+"\');");
            c.closeConnection();
        }
        catch(Exception e){
            throw e;
        }
    }
    public void checkLogin(String email, String password) throws Exception
    {
        MySql c = new MySql();

        try {
            c.connect("asod_root", "DigitalUniverse");
            c.executeQuery("SELECT email FROM school WHERE email=\'"+email+"\' and password=\'"+password+"\';");
            c.readColumns();
            ArrayList<String> t = c.readRows();
            if (t.isEmpty())
                throw new Exception("Πληκτρολογήσατε λάθος email η κωδικό");
            c.closeConnection();
        }
        catch(Exception e)
        {
            throw new Exception("Πληκτρολογήσατε λάθος email η κωδικό");
        }
    }
    public void checkAuth(String email, String password) throws Exception
    {
        if (email.isEmpty() || password.isEmpty())
            throw new Exception("Πρεπει να συνδεθειτε πρωτα!");
    }
}


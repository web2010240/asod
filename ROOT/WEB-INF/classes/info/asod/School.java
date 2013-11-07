package info.asod;

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
        this.email = email.trim();
    }
    public void setSite(String site) throws Exception
    {
        checkArgument(site);
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
        //bad chars
        if (tmp.contains("'") || tmp.contains("%") || tmp.contains(";")
                || tmp.contains("\\") || tmp.contains(",") || 
                tmp.contains("EXEC") || tmp.contains("--") )
            throw new Exception(tmp+"περιεχει μη εγκυρους χαρακτηρες");
    }
    public void checkIp(String ip) throws Exception
    {
        if (ip.regionMatches(0, "194.63", 0, 6))
            throw new Exception("not valid ip");
    }
}


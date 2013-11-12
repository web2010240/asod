package asod.info;

public class taxi
{
    private String school_id;
    private String students_num;
    private String name;
    private School school;

    public taxi(String name, String email, String password)
    {
        name = getName();
        school = getSchool(email, password)
    }
    public getSchool(String email, String password)
    {
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
        }
        catch(Exception e)
        {
            throw new Exception("Πληκτρολογήσατε λάθος email η κωδικό");
        }

    }

}

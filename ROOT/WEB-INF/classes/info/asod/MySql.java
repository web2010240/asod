package info.asod;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;

public class MySql
{
    static final String DATABASE_URL = "jdbc:mysql://localhost:3306/asod?useUnicode=yes&characterEncoding=UTF-8";
    private Connection con = null;
    private Statement state = null;
    private ResultSet result = null;
    private ResultSetMetaData metaData = null;

    public void connect(String uname, String password) throws Exception
    {
        try {
            con = DriverManager.getConnection(DATABASE_URL, uname, password);
            state = con.createStatement();
        }catch(Exception e)
        {
            closeConnection();
            throw e;
        }
    }
    public void executeQuery(String command) throws Exception
    {
        try {
            result = state.executeQuery(command);
        }catch(Exception e)
        {
            closeConnection();
            throw new Exception("Δεν είναι δυνατή η εκτέλεση στην βάση δεδομένων");
        }
    }
    public int executeUpdate(String command) throws Exception
    {
        int res;
        try{
            res = state.executeUpdate(command);
        }
        catch(Exception e)
        {
            closeConnection();
            throw new Exception("Δεν είναι δυνατή η εκτέλεση στην βάση δεδομένων");
        }
        return res;
    }
    public String[] readColumns() throws Exception
    {
        String []columns = null;
        int colNum;
        try{
            metaData = result.getMetaData();
            colNum = metaData.getColumnCount();
            columns = new String[colNum];
            for (int i = 1; i <= colNum; i++)
                columns[i-1] = metaData.getColumnName(i);
        }catch(Exception e)
        {
            throw e;
        }
        return columns;
    }
    public ArrayList<String> readRows()
    {
        ArrayList<String> rows = new ArrayList<String>();

        try {
            while (result.next())
            {
                for (int i = 1; i <= metaData.getColumnCount(); i++)
                {
                    rows.add(result.getObject(i).toString());
                }
            }
        }catch(Exception e)
        {
        }

        return rows;
    }

    public void closeConnection() throws Exception
    {
        try {
            if (con != null)
                con.close();
            if (state != null)
                state.close();
            if (result != null)
                result.close();
        }
        catch(Exception e)
        {
            throw new Exception("Δεν είναι δυνατός ο τερματισμός τις σύνδεσης με την βάση δεδομένων");
        }
    }

}


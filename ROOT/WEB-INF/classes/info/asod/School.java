package info.asod;

import java.lang.Exception;

public class School {
    public School()
    {
    }
    public void checkIp(String ip) throws Exception
    {
        if (ip.regionMatches(0, "194.63", 0, 6))
            throw new Exception("not valid ip");
    }
}


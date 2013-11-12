package info.asod;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;

public class Crypt
{
    public static String getMd5(String pass) throws Exception
    {
        String md5 = null;

        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] messageDig = md.digest(pass.getBytes("UTF8"));
            BigInteger n = new BigInteger(1, messageDig);
            md5 = n.toString(16);
        }
        catch(Exception e)
        {
            throw new Exception("Λάθος στην κρυπτογράφηση του κωδικού");
        }
        return md5;
    }
    public static String getSha1(String pass) throws Exception
    {
        String sha1 = null;
        try {
            MessageDigest md = MessageDigest.getInstance("SHA1");
            byte[] messageDig = md.digest(pass.getBytes("UTF8"));
            BigInteger n = new BigInteger(1, messageDig);
            sha1 = n.toString(16);
        }
        catch(Exception e)
        {
            throw new Exception("Λάθος στην κρυπτογράφηση του κωδικού");
        }
        return sha1;
    }
}


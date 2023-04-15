package common;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;


public class MD5 {
	public String hashPass(String str){
		MessageDigest md;
		String result = "";
		try {
			md = MessageDigest.getInstance("MD5");	
			md.update(str.getBytes());
			BigInteger bi = new BigInteger(1, md.digest());	
			result = bi.toString(16);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();	
		}
		return result;
	}
	public static void main(String[] args) {
		MD5 lib = new MD5();
		String password = "";
		String strmd5 = lib.hashPass(password);
		System.out.println("Sau khi ma hoa: "+strmd5);
	}
}

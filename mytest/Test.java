package mytest;

import java.net.*;


public class Test {
	public static void main(String[] argz) throws Exception {
		URL url = new URL("https://maven.kii.com/artifactory/repo/org/springframework/spring-context/5.0.5.RELEASE/spring-context-5.0.5.RELEASE.jar");
		HttpURLConnection con = (HttpURLConnection) url.openConnection();
		System.err.println("Result was "+con.getResponseCode() );
	}
}

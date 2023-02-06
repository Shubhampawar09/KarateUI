package utils;

import java.util.Random;

public class javaUtils {
	
	public static Random rand = new Random();
	
	/**
	 * To Generate Random Capital Letters of the Entered Length
	 * 
	 * @param length
	 * @return String
	 */
	public static String generateRandomCapitalLetters(int length) {
		StringBuilder output = new StringBuilder(1000);
		output.append((char) (rand.nextInt(26) + 'A'));
		System.out.println(output);

		for (int i = 1; i < length; i++) {
			char c = (char) (rand.nextInt(26) + 'A');
			output.append(c);
		}
		return output.toString();
	}

}

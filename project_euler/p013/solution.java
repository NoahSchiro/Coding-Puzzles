import java.io.*;
import java.util.ArrayList;
import java.math.BigInteger;

class Solution {

	public static ArrayList<BigInteger> readFile(String filePath) {

		BufferedReader reader;
		ArrayList<BigInteger> ans = new ArrayList<BigInteger>();

		try {
			
			//Create a reader
			reader = new BufferedReader(new FileReader(filePath));
				
			//Read a line
			String line = reader.readLine();

			while (line != null) {
				
				//Add to answer
				ans.add(new BigInteger(line));

				//Read next line
				line = reader.readLine();
			}

			reader.close();

		} catch (IOException e) {
			e.printStackTrace();
		}

		return ans;
	}

	public static void main(String[] args) {

		ArrayList<BigInteger> contents = readFile("data.txt");

		BigInteger sum = new BigInteger("0");

		//Sum it up
		for(int i = 0; i < contents.size(); i++) {
			sum = sum.add(contents.get(i));
		}

		System.out.println(sum);

	}
}
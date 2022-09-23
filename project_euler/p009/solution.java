import java.lang.Math;
/*
A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
a2 + b2 = c2

For example, 32 + 42 = 9 + 16 = 25 = 52.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
*/

class Solution {

	static int solve() {
		
		for(double a = 1; a < 500; a++) {
			for(double b = a + 1; b < 500; b++) {

				double c = Math.sqrt(Math.pow(a,2) + Math.pow(b,2));

				//One speed up is to break from this for 
				//loop if the sum is above 1000
				if(a+b+c > 1000) {break;}

				//Check to make sure that it did not round
				if(Math.pow(c,2) == Math.pow(a,2) + Math.pow(b,2) && a+b+c == 1000) {
					
					return (int)a*(int)b*(int)c;
				}
			}
		}

		return -1;
	}

	public static void main(String args[]) {

		System.out.println(solve());
	}
}
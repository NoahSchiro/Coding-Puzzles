/*
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
*/
class Solution {

	//Strategy is to continue to divide the number by 
	//prime factors until it's no longer divisible
	static int primeFactor(long input) {

		int divisor = 2;

		while(input > 1) {

			//If division by this is possible, do it
			if(input % divisor == 0) {
				input /= divisor;
			} else {
				divisor++;
			}
		}

		//Return the last number we divided by
		return divisor;
	}

	public static void main(String[] args) {

		long input = 600851475143L;

		//Input the given number
		System.out.println(primeFactor(input));
	}
};
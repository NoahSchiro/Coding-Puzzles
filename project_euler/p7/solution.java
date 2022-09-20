import java.lang.Math;

/*
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
What is the 10001st prime number?
*/
class Solution {

	//Check if a number is prime
	static boolean isPrime(int num) {

		if(num == 2) {return true;}

		if(num % 2 == 0) {return false;}

		for(int i = 3; i <= Math.sqrt(num); i+=2) {
			if(num % i == 0) {return false;}
		}

		return true;
	}

	public static void main(String[] args) {

		//Count up the primes
		int counter = 0;
		int index = 2;

		while(counter < 10001) {

			if(isPrime(index)) {
				counter++;
			}

			index++;
		}

		
		System.out.println(index);

	}
};
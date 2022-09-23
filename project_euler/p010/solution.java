import java.lang.Math;
/*
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
*/
class Solution {

	static boolean isPrime(int num) {

		if(num == 2) {return true;}
		if(num % 2 == 0) {return false;}

		for(int i = 3; i <= Math.sqrt(num); i+=2) {

			if(num % i == 0) {return false;}
		}

		return true;

	}

	static long sumOfPrimes(int limit) {

		long sum = 0;

		for(int i = 2; i < limit; i++) {
			if(isPrime(i)) {
				sum += i;
			}
		}

		return sum;
	}

	public static void main(String[] args) {
		System.out.println(sumOfPrimes(2000000));
	}
}
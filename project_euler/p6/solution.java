import java.lang.Math;

/*
The sum of the squares of the first 
ten natural numbers is,

1^2 + 2^2 + ... + 10^2 = 385

The square of the sum of the first 
ten natural numbers is,

(1 + 2 + ... + 10)^2 = 3025

Hence the difference between the 
sum of the squares of the first 
ten natural numbers and the square 
of the sum is,

3025 - 385 = 2460

Find the difference between the sum 
of the squares of the first one 
hundred natural numbers and the 
square of the sum.
*/
class Solution {

	static double sumOfSquares(int input) {

		double sum = 0;

		for(double i = 1; i <= input; i++) {

			sum += Math.pow(i, 2);
		}

		return sum;
	}

	static double squareOfSum(int input) {

		//Accumulator
		double sum = 0;

		//Get sum.
		for(int i = 1; i <= input; i++) {

			sum += i;
		}

		//Return it's square
		return Math.pow(sum, 2.0);
	}

	public static void main(String[] args) {

		System.out.printf("%.9f\n", squareOfSum(100) - sumOfSquares(100));
	}
};
#include <iostream>

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
int main() {


	int sumOfSquares = 0;
	
	for(int i = 1; i <= 100; i++) {
		sumOfSquares += i*i;
	}

	int squareOfSum = 0;
	for(int i = 0; i <= 100; i++) {
		squareOfSum += i;
	}
	
	squareOfSum = squareOfSum*squareOfSum;

	std::cout << "Sum of squares: " << sumOfSquares << "\n";
	std::cout << "Square of sums: " << squareOfSum << "\n";

	std::cout << "Differenece: " << squareOfSum - sumOfSquares << "\n";


	return 0;
}
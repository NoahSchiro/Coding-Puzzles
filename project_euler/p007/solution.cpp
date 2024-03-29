#include <iostream>
#include <math.h>
/*
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
What is the 10001st prime number?
*/

//Checks if n is prime in O(sqrt(n))
bool isPrime(int n) {

	//Questionable if 2 is prime but okay
	if(n == 2) {return true;}

	//We do this here so that we can 
	//skip by 2s in the for loop
	if(n % 2 == 0) {return false;}
	
	for(int i = 3; i <= sqrt(n); i+=2) {
		if(n % i == 0) {
			return false;
		}
	}

	return true;
}

int main() {

	//Count up the primes
	int counter = 1;
	int index = 2;

	while(counter < 10001) {

		index++;
		if(isPrime(index)) {
			counter++;
		}
	}

	std::cout << index << "\n";

	return 0;
}
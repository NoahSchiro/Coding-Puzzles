#include <iostream>
#include <cmath>
/*
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
*/

bool isPrime(int num) {

	if(num == 2) {return true;}
	if(num % 2 == 0) {return false;}

	for(int i = 3; i <= sqrt(num); i+=2) {

		if(num % i == 0) {return false;}
	}

	return true;
}

//A more efficient implementation is going to be a 
//seive, but I don't wan nowt to heavily optimize right now
int main() {

	long long int sum = 0;

	for(int i = 2; i < 2000000; i++) {
		
		if(isPrime(i)) {
			sum += i;
		}
	}

	std::cout << sum << "\n";

	return 0;
}
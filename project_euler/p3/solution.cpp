#include <iostream>
#include <vector>
/*
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
*/
int main() {

	//input number
	long int num = 600851475143;

	int lastDivisor = 2;
	int divisor = 2;

	while(num > 1) {

		//If division by this is possible, do it
		if(num % divisor == 0) {
			num /= divisor;
			std::cout << divisor << "\n";
			std::cout << "New value: " << num << "\n";
		} else {
			divisor++;
		}
	}

	return 0;
}
#include <iostream>
#include <cmath>
/*
A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
a2 + b2 = c2

For example, 32 + 42 = 9 + 16 = 25 = 52.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
*/

int main() {

	//One interesting thing to note is that order doesn't matter
	//since we are * abc. This means we don't need to check 
	//a < b < c

	for(int a = 1; a < 500; a++) {
		for(int b = a + 1; b < 500; b++) {

			int c = sqrt(pow(a,2) + pow(b,2));

			//One speed up is to break from this for 
			//loop if the sum is above 1000
			if(a+b+c > 1000) {break;}

			//Check to make sure that it did not round
			if(pow(c,2) == pow(a,2) + pow(b,2) && a+b+c == 1000) {
				
				std::cout << a*b*c << "\n";	
			}
		}
	}

	return 0;
}
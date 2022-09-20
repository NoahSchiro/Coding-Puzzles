#include <iostream>
/*
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
*/
int main() {

	int num = 20;

	while(true) {

		//For all the divisors
		for(int i = 1; i <= 20; i++) {

			//If it fails, break and continue onto the next number
			if(num % i != 0) {
				break;
			} else {

				//If it made it through all 20 and this is true
				if(i == 20) {

					//Print the answer
					std::cout << num << "\n";
					return 0;
				}
			}
		}


		num++;
	}
}
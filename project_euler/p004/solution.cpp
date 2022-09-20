#include <iostream>
#include <string>
/*
A palindromic number reads the same both ways. The 
largest palindrome made from the product of two 
2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product 
of two 3-digit numbers.
*/

bool isPalindrome(int num) {

	std::string numString = std::to_string(num);

	int i = 0;
	int j = numString.length()-1;

	while(i < j) {

		
		if(numString[i] != numString[j]) {
			return false;
		}

		i++;
		j--;
	}

	return true;
}

int main() {

	int best = 0;

	for(int i = 999; i >= 1; i--) {

		for(int j = 999; j >= 1; j--) {

			if(isPalindrome(i*j)) {
				best = std::max(i*j, best);
			}
		}
	}

	std::cout << best << "\n";
}
/*
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
*/
class Solution {

	static int solve(int divisor) {

		int ans = 20;

		boolean flag = true;

		//While we have not found a number
		while(flag) {

			//For all the divisors
			for(int i = 1; i <= divisor; i++) {

				//If it fails, break and continue onto the next number
				if(ans % i != 0) {
					break;
				} else {

					//If it made it through all 20 and this is true
					if(i == 20) {
						return ans;
					}
				}
			}

			//Increment
			ans++;
		}

		return -1;
	}

	public static void main(String[] args) {

		System.out.println(solve(20));

	}
};
class Solution {

	static boolean isPalindrome(int num) {

		String numString = String.valueOf(num);

		int i = 0;
		int j = numString.length()-1;

		while(i < j) {
			
			if(numString.charAt(i) != numString.charAt(j)) {
				return false;
			}

			i++;
			j--;
		}

		return true;
	}

	public static void main(String[] args) {

		int best = 0;

		for(int i = 999; i >= 1; i--) {

			for(int j = 999; j >= 1; j--) {

				if(isPalindrome(i*j)) {
					best = Math.max(i*j, best);
				}
			}
		}

		System.out.println(best);
	}
};
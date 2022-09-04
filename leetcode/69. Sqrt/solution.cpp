class Solution {
public:
    int mySqrt(int x) {
        
        
        if(x == 0) return 0;
        if(x == 1 || x == 2 || x == 3) return 1;
        
        //The result must be somewhere between these two numbers
        int low = 0;
        int high = x;
        int mid;
        
        while(low <= high) {
            
            mid = (low+high)/2;
            
            //If we find the answer
            if(mid == x/mid) {
                return mid;
            } else if( mid > x/mid) {
                
                high = mid-1;
                
            } else {
                
                low = mid+1;
            }
        }
        
        return (low+high)/2;
    }
};

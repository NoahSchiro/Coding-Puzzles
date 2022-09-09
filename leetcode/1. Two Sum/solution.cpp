#include <vector>
#include <unordered_map>

using namespace std;

class Solution {
public:
    vector<int> twoSum(vector<int>& nums, int target) {
        
        //Maps value to index
        unordered_map<int, int> map;
        
        //What num will be required to reach target
        int desiredNum;
        
        for(int i = 0; i < nums.size(); i++) {
            
            desiredNum = target-nums[i];
            
            //If there is no number that works
            if(map.find(desiredNum) == map.end()) {
                
                //just add the current value->index to map
                map[nums[i]] = i;
                
            
            //We have found a combination that works
            } else {
                return {map[desiredNum], i};
            }
        }
        
        //Will never execute as long as one answer is 
        //guarenteed, but needed for compilation
        return {};
        
    }
};
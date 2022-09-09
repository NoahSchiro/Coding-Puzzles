#include <string>
#include <vector>
#include <set>

using namespace std;

class Solution {
public:
    string destCity(vector<vector<string>>& paths) {
        
        //Define a set which contains a city if there 
        //is a road going to it. Remove cities if 
        //they have roads leaving them
        set<string> cities;
        
        for(auto it : paths) {
            
            cities.insert(it[0]);
            cities.insert(it[1]);
        }
        
        //Loop through again and remove anything that 
        //goes somewhere else
        for(auto it : paths) {
            
            //If it exists in set
            if(cities.find(it[0]) != cities.end()) {
                cities.erase(it[0]);
            }
        }
        
        string ans;
        for(auto it = cities.begin(); it != cities.end(); it++) {
            ans = *it;
        }
        
        return ans;
        
    }
};
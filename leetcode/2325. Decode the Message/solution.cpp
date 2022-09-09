#include <string>
#include <unordered_map>
#include <vector>

using namespace std;

class Solution {
public:
    string decodeMessage(string key, string message) {
        
        unordered_map<char, char> map;
        
        vector<char> alpha = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'};
        int index = 0;
        
        for(int i = 0; i < key.length(); i++) {
            
            //If we have not yet encountered this char
            if(key[i] != ' ' && map.find(key[i]) == map.end()) {
                
                map[key[i]] = alpha[index];
                index++;
            }           
        }
        
        for(int i = 0; i < message.length(); i++) {
            
            if(message[i] != ' ') {
                message[i] = map[message[i]];                
            }
        }
        
        return message;
    }
};
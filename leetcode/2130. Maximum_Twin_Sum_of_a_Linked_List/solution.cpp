/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     ListNode *next;
 *     ListNode() : val(0), next(nullptr) {}
 *     ListNode(int x) : val(x), next(nullptr) {}
 *     ListNode(int x, ListNode *next) : val(x), next(next) {}
 * };
 */
class Solution {
public:
    int pairSum(ListNode* head) {
        
        vector<int> list;
        
        //Move it into a list
        for(ListNode* temp = head; temp != nullptr; temp = temp->next) {
            list.push_back(temp->val);
        }
        
        int n = list.size();
        
        int bestSum = 0;
        
        for(int i = 0; i < n/2; i++) {
            
            bestSum = max(bestSum, list[i] + list[n-1-i]);
            
        }
        
        return bestSum;
    }
};
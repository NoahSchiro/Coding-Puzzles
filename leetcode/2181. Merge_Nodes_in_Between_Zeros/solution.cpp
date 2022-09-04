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
    ListNode* mergeNodes(ListNode* head) {
        
        //Node we will return (note that a list will 
        //always have three)
        ListNode* ans = head->next;
        
        int sum = 0;
        ListNode* prev = head->next;
        ListNode* curr = head->next;
        ListNode* next = head->next->next;
        
        while(next != nullptr) {
            
            //Do processing first
            sum += curr->val;
            
            //This is the part where we would do summing
            if(curr->val == 0) {
                //Reset the value of the last thing we saw
                prev->val = sum;
                
                //Let it point to the next node just beyond the 0
                prev->next = next;
                
                //Reset sum
                sum = 0;
                
                //Move to the next node we would want to modify
                prev = prev->next;
            }
            
            //Then increment
            curr = next;
            next = next->next;
            
        }
        
        //If next == nullptr, then curr is 0, so let prev->next = nullptr
        prev->val = sum;
        prev->next = next;
        
        
        return ans;
    }
};
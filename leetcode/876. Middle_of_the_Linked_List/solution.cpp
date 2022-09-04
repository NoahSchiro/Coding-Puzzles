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
    ListNode* middleNode(ListNode* head) {
        
        int counter = 0;
        
        for(ListNode* temp = head; temp != nullptr; temp = temp->next) {
            counter++;
        }
        
        counter /= 2;
        
        
        ListNode* ans = head;
        for(int i = 0; i < counter; i++) {ans = ans->next;}
        
        return ans;
        
    }
};
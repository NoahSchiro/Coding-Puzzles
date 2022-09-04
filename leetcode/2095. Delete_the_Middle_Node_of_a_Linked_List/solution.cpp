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
    
    ListNode* deleteMiddle(ListNode* head) {
            
        if(head->next == nullptr) {
            return nullptr;
        }
        
        int count = 0;
        for(ListNode* temp = head; temp != nullptr; temp = temp->next) {count++;}
        
        count /= 2;
        
        ListNode* prev = head;
        ListNode* curr = head->next;
        ListNode* next = head->next->next;
        
        for(int i = 1; i < count; i++) {
            prev = curr;
            curr = next;
            next = next->next;
        }
        
        prev->next = next;
        
        return head;
    }
};